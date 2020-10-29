class SchoolClassesController < ApplicationController
    def index
        @school_classes = SchoolClass.all
    end

    def show
        @school_class = SchoolClass.find(params[:id])
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
        @school_class = SchoolClass.find(params[:id])
    end

    def update
    # @article = Article.find(params[:id])
    # @article.update(title: params[:article][:title], description: params[:article][:description])
    # redirect_to article_path(@article)
    end

end