class AddReferenciaToPin < ActiveRecord::Migration
  def change
    add_column :pins, :referencia, :string
  end
end
