class CreateBids < ActiveRecord::Migration[7.1]
  def change
    create_table :bids do |t|
      t.references :advertisement, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :bid_date
      t.integer :bid_price
      t.string :bid_status

      t.timestamps
    end
  end
end
