class TagsController < ApplicationController

def comment_params
  params.require(:tag).permit(:tag_name, :id)
end

def index
  @tags = Tag.all
end

def show
  @tag = Tag.find(params[:id])
end

def destroy
  @tag = Tag.find(params[:id])
  @tag.destroy
  flash.notice = "Article '#{tag.name}' deleted!"
  redirect_to tags_path
end

end
