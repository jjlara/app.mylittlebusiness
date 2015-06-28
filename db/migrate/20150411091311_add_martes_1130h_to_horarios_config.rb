class AddMartes1130hToHorariosConfig < ActiveRecord::Migration
  def change
    add_column :horarios_configs, :martes_1130h, :boolean
  end
end
