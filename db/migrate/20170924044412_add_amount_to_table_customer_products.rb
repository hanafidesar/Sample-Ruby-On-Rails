class AddAmountToTableCustomerProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :table_customer_products, :amount, :integer
  end
end
