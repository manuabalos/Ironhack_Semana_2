class CreateBackpacks < ActiveRecord::Migration
  def change
    create_table :backpacks do |t|
      t.text :Color
      t.float :Capacity
      t.integer :Pockets
      t.text :Waterproof

      t.timestamps null: false
    end
  end
end
