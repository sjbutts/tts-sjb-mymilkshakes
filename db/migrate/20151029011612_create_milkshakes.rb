class CreateMilkshakes < ActiveRecord::Migration
  def change
    create_table :milkshakes do |t|
      t.string :shake
      t.string :ingredients
      t.string :price
      t.string :image

      t.timestamps null: false
    end
  end
end
