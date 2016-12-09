class CreateProduct3s < ActiveRecord::Migration[5.0]
  def change
    create_table :product3s do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
