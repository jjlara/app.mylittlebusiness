class AddPrecioToPin < ActiveRecord::Migration
  def change
    add_column :pins, :precio, :integer
  end
end
