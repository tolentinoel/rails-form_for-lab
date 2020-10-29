class SchoolClassesController < ApplicationController

    def index
        @school_classes = SchoolClass.all
    end

    def show
        find_class
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.create(class_params)
        redirect_to school_class_path(@school_class)
    end

    def edit
        find_class
    end

    def update
        find_class
        @school_class.update(class_params)
        redirect_to school_class_path(@school_class)
    end

    private

    def find_class
        @school_class = SchoolClass.find(params[:id])
    end

    def class_params
        params.require(:school_class).permit(:title, :room_number)
    end
end