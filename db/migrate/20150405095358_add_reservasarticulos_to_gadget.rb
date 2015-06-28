class AddReservasarticulosToGadget < ActiveRecord::Migration
  def change
    add_column :gadgets, :reservasarticulos, :boolean
  end
end
