class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :style
      t.string :speed
      t.string :gender
      t.string :image_url

      t.timestamps
    end
  end
end
