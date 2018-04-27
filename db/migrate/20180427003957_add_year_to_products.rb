class AddYearToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :year, :integer
  end
end
