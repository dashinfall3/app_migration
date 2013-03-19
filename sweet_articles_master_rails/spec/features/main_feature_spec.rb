require 'spec_helper'

describe "main feature", :js => true do
  let!(:category) { FactoryGirl.create(:category) }
  let!(:article) { FactoryGirl.create(:article, :category_id => category.id) }
  let!(:tag) {FactoryGirl.create(:tag)}

  context "click on category" do
    it "goes to the category show page" do
      visit root_path

      click_link "#{category.name}"
      page.should have_content "#{article.title}"
    end
  end

  context "click on article" do
    it "goes to the article show page" do
      visit category_articles_path(category.name)

      click_link "#{article.title}"
      page.should have_content "#{article.title}"
    end
  end

  context "click on tag in tag listings" do
    it "goes to the tag show page" do
      visit tags_path
      click_link "#{tag.name}"
      page.should have_content "#{tag.name}"
    end
  end

  context "click on article in tags listing" do
    it "goes to the article show page" do
      article.tags << tag
      visit tag_path(tag)
      click_link "#{article.title}"
      page.should have_content "#{article.title}"
    end
  end

  context "go to old article url" do
    it "should go to new article url" do
      expect(:get => "/month/day/year/#{article.title}").
            to route_to(:controller => "article", :action => "show", :id => article.title)
    end
  end

end
