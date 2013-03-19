class ArticlesController < ActionController::Base
  def index
    @category = Category.find_by_name(params[:category_id])
    @articles = @category.articles
  end

  def show
    puts params.inspect
    params[:id].include?("-") ? title = params[:id].gsub!('-', ' ') : title = params[:id]
    @article = Article.find_by_title(title)
    puts @article.inspect
  end
end
