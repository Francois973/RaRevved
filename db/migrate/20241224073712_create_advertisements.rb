class CreateAdvertisements < ActiveRecord::Migration[7.1]
  def change
    create_table :advertisements do |t|
      t.references :car_product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :body
      t.boolean :is_active
      t.boolean :is_bid_allowed

      t.timestamps
    end
  end
end
