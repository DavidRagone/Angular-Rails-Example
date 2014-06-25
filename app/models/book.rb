class Book < ActiveRecord::Base
  attr_accessible :author_name, :image_url, :title
  validates :author_name, presence: true
  validates :image_url, presence: true
  validates :title, presence: true
end
