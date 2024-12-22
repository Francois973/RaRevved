class AddForeignKeyToCityAndUser < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :users, :cities, column: :city_id
  end
end
