require 'net/http'

class CourseReviewClient

    def initialize(token)
        @token = token
    end

    def find_average_difficulty(dept, num)
        reviews = get_reviews(dept, num)
        average_difficulty(reviews)
    end



    def list_depts
        perform_request("/depts")["result"]["values"]
    end

    def list_semesters
        perform_request("/semesters")["result"]["values"]
    end

    def list_instructors
        perform_request("/instructors")["result"]["values"]
    end

    def search_dept(dept)
        perform_request("/depts/#{dept.upcase}")["result"]["coursehistories"]
    end

    def get_reviews(dept, num)
        course_string = "#{dept.upcase}-#{num}"
        courses = search_dept(dept)
        course_id = find_id(course_string, courses)
        perform_request("/coursehistories/#{course_id}/reviews")["result"]["values"]
    end

    private
    def base_url
        "http://api.penncoursereview.com/v1"
    end

    def perform_request(endpoint)
        url = URI.parse(base_url + endpoint)
        request = Net::HTTP::Get.new(url.path + "?token=#{@token}")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = (url.scheme == "https")
        response = http.start { |connection| connection.request(request) }
        JSON.parse(response.body)
    end

    def find_id(key, courses)
        courses.each do |course|
            course["aliases"].each do |name|
                return course["id"] if name == key
            end
        end
    end

    def average_difficulty(reviews)
        ratings = reviews.collect { |review| review["ratings"]["rDifficulty"].to_f }
        ratings.reduce(:+) / ratings.length
    end

end