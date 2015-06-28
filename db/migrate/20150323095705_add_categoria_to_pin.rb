class AddCategoriaToPin < ActiveRecord::Migration
  def change
    add_column :pins, :categoria, :string
  end
end
