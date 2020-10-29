class StudentsController < ApplicationController


    def show
        find_student
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end

    def edit
        find_student
    end

    def update
        find_student
        @student.update(student_params)
        redirect_to student_path(@student)
    end

    private

    def find_student
        @student = Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end
end