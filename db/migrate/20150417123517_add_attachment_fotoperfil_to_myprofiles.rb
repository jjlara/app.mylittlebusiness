class AddAttachmentFotoperfilToMyprofiles < ActiveRecord::Migration
  def self.up
    change_table :myprofiles do |t|
      t.attachment :fotoperfil
    end
  end

  def self.down
    remove_attachment :myprofiles, :fotoperfil
  end
end
