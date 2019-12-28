class CreateDirections < ActiveRecord::Migration[6.0]
  def change
    create_table :directions do |t|
      t.text :cooking_process
      t.integer :recipe_id

      t.timestamps
    end
  end
end
