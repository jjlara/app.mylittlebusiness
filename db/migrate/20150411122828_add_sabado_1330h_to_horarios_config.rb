class AddSabado1330hToHorariosConfig < ActiveRecord::Migration
  def change
    add_column :horarios_configs, :sabado_1330h, :boolean
  end
end
