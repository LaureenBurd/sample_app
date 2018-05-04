class AddYearToProducts < ActiveRecord::Migration[5.1]
  def change
  	add_column :products, :brand, :string
    add_column :products, :year, :number
    add_column :products, :price, :number
  end
end
