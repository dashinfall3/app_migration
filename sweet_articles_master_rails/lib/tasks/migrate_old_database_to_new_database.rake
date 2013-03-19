namespace :db do
  desc "migrate old databse"
  task migrate_old: :environment do
    OldArticle.all.each do |article|
      new_article = Article.create(title: article.title, description: article.description, url: article.url)
      category = Category.find_or_create_by_name(article.category)
      category.articles << new_article
      article.tags.split(", ").each do |tag|
        tag = Tag.find_or_create_by_name(tag)
        new_article.tags << tag
      end unless article.tags.empty?
    end 
  end
end
