class AddCifempresaToUser < ActiveRecord::Migration
  def change
    add_column :users, :cifempresa, :string
  end
end
