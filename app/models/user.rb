class User < ActiveRecord::Base
  attr_accessible :bio, :country, :display_name, :email, :first_name, :last_name

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format: { with: /\A\w+@\w+\.\w+\z/ }

  has_many :ratings
  has_many :books, through: :ratings

  def display_name_options
    [first_name, last_name, full_name].uniq.compact.delete_if(&:empty?)
  end

  def full_name
    @full_name ||= "#{first_name} #{last_name}".squish
  end
end
