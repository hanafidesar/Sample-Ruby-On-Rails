class CreateTableCustomerProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :table_customer_products do |t|
      t.references :product, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
