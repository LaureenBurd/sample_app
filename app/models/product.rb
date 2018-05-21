class Product < ApplicationRecord
	has_many :orders
end

def self.search(search_term)
  Product.where("name ilike ?", "%#{search_term}%")
end

def index
  if params[:q]
    search_term = params[:q]
    @products = Product.search(search_term)
  else
    @products = Product.all
  end
end
