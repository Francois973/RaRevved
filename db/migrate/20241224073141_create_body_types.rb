class CreateBodyTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :body_types do |t|
      t.string :body_type_name

      t.timestamps
    end
  end
end
