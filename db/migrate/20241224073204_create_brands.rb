class CreateBrands < ActiveRecord::Migration[7.1]
  def change
    create_table :brands do |t|
      t.string :brand_name

      t.timestamps
    end
  end
end
