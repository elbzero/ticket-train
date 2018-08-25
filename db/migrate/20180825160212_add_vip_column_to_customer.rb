class AddVipColumnToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :vip, :boolean
  end
end
