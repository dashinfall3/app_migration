class TagsController < ActionController::Base
  protect_from_forgery

  def show
    @tag = Tag.find_by_name(params[:name])
    @articles = @tag.articles
  end

  def index
    @tags = Tag.all
  end
end
