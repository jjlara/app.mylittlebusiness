class AddLun930hToHorariosConfig < ActiveRecord::Migration
  def change
    add_column :horarios_configs, :lun_930h, :boolean
  end
end
