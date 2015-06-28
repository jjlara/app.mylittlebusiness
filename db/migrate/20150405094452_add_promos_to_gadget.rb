class AddPromosToGadget < ActiveRecord::Migration
  def change
    add_column :gadgets, :promos, :boolean
  end
end
