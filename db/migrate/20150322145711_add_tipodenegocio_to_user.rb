class AddTipodenegocioToUser < ActiveRecord::Migration
  def change
    add_column :users, :tipodenegocio, :string
  end
end
