class AddPaypalToGadget < ActiveRecord::Migration
  def change
    add_column :gadgets, :paypal, :boolean
  end
end
