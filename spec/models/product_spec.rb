require 'rails_helper'

describe Product do
	context "when the product has comments" do
		let(:product) { Product.create!(name: "race bike", style: "style", year: "year", color: "color", speed: "speed", gender: "gender", price: "price", image_url: "image") }
		let(:user) { User.create!(first_name: "Laureen", last_name: "Burd", email: "laureen.burd@gmail.com", password: "RegisterTest") }

		before do
		  product.comments.create!(rating: 1, user: user, body: "Awful bike!")
		  product.comments.create!(rating: 3, user: user, body: "Ok bike!")
  		product.comments.create!(rating: 5, user: user, body: "Great bike!")
		end

		it "returns the average rating of all comments" do
			expect(@product.average_rating).to eq (3)
		end
	end

end

