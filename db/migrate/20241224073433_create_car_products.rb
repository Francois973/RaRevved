class CreateCarProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :car_products do |t|
      t.references :brand, null: false, foreign_key: true
      t.references :model, null: false, foreign_key: true
      t.references :body_type, null: false, foreign_key: true
      t.integer :year
      t.integer :price
      t.string :color
      t.integer :mileage

      t.timestamps
    end
  end
end
