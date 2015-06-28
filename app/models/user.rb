class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pins
  has_many :gadgets
  has_many :horarios_configs
  has_many :promos
  has_many :fotosprofiles
  has_many :myprofiles

  
  geocoded_by :address
  after_validation :geocode      

end
