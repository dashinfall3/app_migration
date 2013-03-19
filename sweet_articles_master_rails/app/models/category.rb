class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :articles

  validates :name, :uniqueness => true,
                   :presence => true

  def to_param
    self.name
  end
end
