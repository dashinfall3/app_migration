class CreateOldArticlesTable < ActiveRecord::Migration
  def change
    create_table :old_articles do |t|
      t.string :title
      t.text   :description
      t.string :url
      t.string :category
      t.string :tags
    end
  end
end
