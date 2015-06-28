class Pin < ActiveRecord::Base
	has_attached_file :avatar,
	:styles => {:peque =>"50x50>", :mediano =>"400x400>"}


	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
	validates :descripcion, presence:true

	belongs_to :user

    

end
