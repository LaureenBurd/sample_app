class Product < ApplicationRecord
	has_many :orders
  has_many :comments
  validates :name, presence: true
  validates :style, presence: true
  validates :year, presence: true
  validates :color, presence: true
  validates :speed, presence: true
  validates :gender, presence: true
  validates :price, presence: true
  validates :image_url, presence: true


  def self.search(search_term)
    if Rails.env.production?
  		Product.where("name ilike?", "%#{search_term}%")
  	else
  		Product.where("name LIKE ?", "%#{search_term}%")
  	end
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  def average_rating
    comments.average(:rating).to_f
  end

end
