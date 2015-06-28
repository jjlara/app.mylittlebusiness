class AddNombrenegocioToUser < ActiveRecord::Migration
  def change
    add_column :users, :nombrenegocio, :string
  end
end
