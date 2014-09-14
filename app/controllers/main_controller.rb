require "registrar_client"
require "pcr_client"

class MainController < ApplicationController

    
    def index
    	@user = User.first
    	@major = @user.majors.first
  		@fields = @major.curriculum_fields
  	
        @registrar = RegistrarClient.new(username, password)
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

        # puts JSON.pretty_generate(JSON.parse(registrar.catalog_search("CIS")))
        # puts JSON.pretty_generate(JSON.parse(registrar.detailed_params))

        @pcr = CourseReviewClient.new(pcr_token)
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

end

