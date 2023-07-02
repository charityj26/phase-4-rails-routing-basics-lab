class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    # Get all the Students Grades With Ordered by Id in descending order
    def grades
        grades = Student.all.order(grade: :desc)
        render json: grades
    end
end