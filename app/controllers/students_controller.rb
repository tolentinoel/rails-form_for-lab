class StudentController < ApplicationController

    def index
        @students = Student.all
    end

    def show
        find_student
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new
        @student.save
        redirect_to student_path(@student)
    end

    def edit
        find_student
    end

    def update
        find_student
        @student.update(first_name: params[:first_name], last_name: params[:last_name])
        redirect_to student_path(@student)
    end

    private

    def find_student
        @student = Student.find(params[:id])
    end

end