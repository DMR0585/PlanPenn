require "registrar_client"
require "pcr_client"

class MainController < ApplicationController

    
    def index
    	@user = User.first
    	@major = @user.majors.first
  		@fields = @major.curriculum_fields

        # RegistrarClient methods:
        # 
        # Search using subjects and course numbers
        # catalog_search(dept, num)
        # 
        # Wrapper for the PennInTouch course search service;
        #     allowed params can be retrieved with detail_params
        # detailed_search(params)
        # 
        # detail_params()

        # puts JSON.pretty_generate(JSON.parse(registrar_client.catalog_search("CIS", "110")))
        # puts JSON.pretty_generate(JSON.parse(registrar_client.detail_params))

        @depts = pcr_client.list_depts.collect { |dept| dept["id"]}
        # CourseReviewClient methods:
        # 
        # List all departments
        # list_depts()
        # 
        # List all semesters
        # list_semesters()
        #
        # List all instructors
        # list_instructors
        # 
        # List all courses in a given department
        # search_dept(dept)
        #
        # Get the average difficulty for a course
        # find_average_difficulty(dept, num)
        #
        # Get all reviews for a given course
        # get_reviews(dept, num)

        # puts pcr.find_average_difficulty("CIS", "110")
    end

    def search
        dept = params[:course][:dept]
        num = params[:course][:number]

        @fields = User.first.majors.first.curriculum_fields
        @depts = pcr_client.list_depts.collect { |dept| dept["id"]}

        results = JSON.parse(registrar_client.catalog_search(dept, num))["result_data"]
        @ids = results.map { |struct| struct["course_id"] }
        render "index"
    end

    private 
    def username
        "UPENN_OD_emw7_1000863"
    end

    def password
        "evds48htrqsk5hbuee5ulah25"
    end

    def pcr_token
        "vGLIYZimwXpoExsrSXku0ugPTflbzz"
    end

    def pcr_client
        @pcr ||= CourseReviewClient.new(pcr_token)
    end

    def registrar_client
        @registrar ||= RegistrarClient.new(username, password)
    end

end

