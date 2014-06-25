class Rating < ActiveRecord::Base
  attr_accessible :book_id, :rating, :shelf, :user_id

  validates :user, presence: true
  validates :book, presence: true

  belongs_to :book
  belongs_to :user
end
