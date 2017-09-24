class CreateTsupplierproducts < ActiveRecord::Migration[5.1]
  def change
    create_table :tsupplierproducts do |t|
      t.references :product, foreign_key: true
      t.references :supplier, foreign_key: true

      t.timestamps
    end
  end
end