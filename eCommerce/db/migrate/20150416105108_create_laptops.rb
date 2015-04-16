class CreateLaptops < ActiveRecord::Migration
  def change
    create_table :laptops do |t|
      t.string :Brand
      t.text :Model
      t.text :Processor
      t.integer :RAM
      t.float :Price

      t.timestamps null: false
    end
  end
end
