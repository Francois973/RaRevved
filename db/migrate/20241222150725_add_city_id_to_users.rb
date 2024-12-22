class AddCityIdToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :city_id, :integer
  end
end
