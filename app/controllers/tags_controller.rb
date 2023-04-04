class TagsController < ApplicationController
    def index
      @tags = Tag.all
    end
  
    def create
      @tag = Tag.new(tag_params)
  
      if @tag.save
        redirect_to tags_path, notice: "Tag created successfully."
      else
        render :new
      end
    end
  
    private
  
    def tag_params
      params.require(:tag).permit(:name)
    end
  end
  