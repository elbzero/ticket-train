class AddNamesToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :customer_first_name, :string
    add_column :tickets, :customer_last_name, :string
  end
end
