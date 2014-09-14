require 'net/http'

class RegistrarClient

    def initialize(bearer, token)
        @bearer = bearer
        @token = token
    end

    # Search using subjects and course numbers
    def catalog_search(dept = nil, num = nil)
        # Construct the URL
        endpoint = base_url + endpoints["CATALOG"]
        endpoint << "/#{dept}" unless dept.nil?
        endpoint << "/#{num}" unless num.nil?
        url = URI.parse(endpoint)

        perform_request(url)
    end

    # Wrapper for the PennInTouch course search service;
    #   params given in section_search_params
    def detailed_search(params)
        endpoint = base_url + endpoints["SEARCH"]
        endpoint << "?" unless params.blank?
        params.each { |k, v| endpoint << "#{k}=#{v}&" }
        endpoint.chop! if endpoint.ends_with?("&")
        url = URI.parse(endpoint)

        perform_request(url)
    end

    def detail_params
        url = URI.parse(base_url + endpoints["SEARCH_PARAMS"])
        perform_request(url)
    end

    private
    def base_url
        "https://esb.isc-seo.upenn.edu/8091/open_data"
    end


    def endpoints
      {
        "CATALOG" => "/course_info",
        "SEARCH" => "/course_section_search",
        "SEARCH_PARAMS" => "/course_section_search_parameters"
      }
    end

    def headers
        {
            "Authorization-Bearer" => @bearer,
            "Authorization-Token" => @token
        }
    end

    def perform_request(url)
        request = Net::HTTP::Get.new(url.path)
        headers.each { |k, v| request[k] = v }
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = (url.scheme == "https")
        http.start { |connection| connection.request(request) }.body
    end

end