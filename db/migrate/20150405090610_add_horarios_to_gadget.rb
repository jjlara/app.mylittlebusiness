class AddHorariosToGadget < ActiveRecord::Migration
  def change
    add_column :gadgets, :horarios, :boolean
  end
end
