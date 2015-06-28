class AddAttachmentMisFotosToFotosprofiles < ActiveRecord::Migration
  def self.up
    change_table :fotosprofiles do |t|
      t.attachment :mis_fotos
    end
  end

  def self.down
    remove_attachment :fotosprofiles, :mis_fotos
  end
end
