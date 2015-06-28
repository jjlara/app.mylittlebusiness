class AddStockToPin < ActiveRecord::Migration
  def change
    add_column :pins, :stock, :integer
  end
end
