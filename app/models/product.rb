class Product < ApplicationRecord
	has_many :orders
  has_many :comments
end

def self.search(search_term)
  if Rails.env.production?
		Product.where("name ilike?", "%#{search_term}%")
	else
		Product.where("name LIKE ?", "%#{search_term}%")
	end
end

def index
  if params[:q]
    search_term = params[:q]
    @products = Product.search(search_term)
  else
    @products = Product.all
  end
end

def highest_rating_comment
  comments.rating_desc.first
end
