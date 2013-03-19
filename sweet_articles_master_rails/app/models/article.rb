class Article < ActiveRecord::Base
  attr_accessible :description, :title, :url
  belongs_to :category
  has_and_belongs_to_many :tags

  validates :title, :presence => true,
                    :uniqueness => true
  validates :description, :presence => true
  validates :url, :presence => true

  def to_param
    self.title
  end
end
