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
        # @school_class = SchoolClass.new
        # @school_class.title = params[:title]
        # @school_class.description = params[:description]
        # @school_class.save
        # redirect_to school_class_path(@school_class)
    end

    def edit
        find_class
    end

    def update
        find_class
        @school_class.update(title: params[:title], room_number: params[:room_number])
    # redirect_to article_path(@article)
    end

    private

    def find_class
        @school_class = SchoolClass.find(params[:id])
    end
end