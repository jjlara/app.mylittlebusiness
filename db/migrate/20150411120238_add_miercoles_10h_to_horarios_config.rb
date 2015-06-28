class AddMiercoles10hToHorariosConfig < ActiveRecord::Migration
  def change
    add_column :horarios_configs, :miercoles_10h, :boolean
  end
end
