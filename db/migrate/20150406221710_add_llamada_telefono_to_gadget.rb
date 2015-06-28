class AddLlamadaTelefonoToGadget < ActiveRecord::Migration
  def change
    add_column :gadgets, :llamada_telefono, :boolean
  end
end
