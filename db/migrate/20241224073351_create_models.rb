class CreateModels < ActiveRecord::Migration[7.1]
  def change
    create_table :models do |t|
      t.string :model_designation

      t.timestamps
    end
  end
end
