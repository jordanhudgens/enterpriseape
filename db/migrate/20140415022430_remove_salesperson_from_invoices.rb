class RemoveSalespersonFromInvoices < ActiveRecord::Migration
  def change
    remove_column :invoices, :salesperson, :string
    add_column :invoices, :salesperson_id, :integer
  end
end
