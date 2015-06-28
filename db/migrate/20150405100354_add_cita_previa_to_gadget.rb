class AddCitaPreviaToGadget < ActiveRecord::Migration
  def change
    add_column :gadgets, :cita_previa, :boolean
  end
end
