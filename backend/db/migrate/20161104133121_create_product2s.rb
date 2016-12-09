class CreateProduct2s < ActiveRecord::Migration[5.0]
  def change
    create_table :product2s do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
