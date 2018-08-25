class AddCustomerForeignKeyToTicketTable < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :customer_id, :integer
    add_foreign_key :tickets, :customers
  end
end
