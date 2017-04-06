class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, scale: 2, precision: 6
      t.integer :stock

      t.timestamps
    end
  end
end
