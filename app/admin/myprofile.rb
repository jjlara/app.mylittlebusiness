ActiveAdmin.register Myprofile do

  permit_params :informacion_util, :user_id, :fotoperfil, :description, :nombredenegocio, :tiponegocio, :telf, :address, :latitude, :longitude, :cif
  
  index do |f|
    selectable_column
    id_column
    column :user_id
    column :user
    column :informacion_util
    column :fotoperfil
    column :description
    column :nombredenegocio
    column :tiponegocio
    column :telf
    column :address
    column :latitude
    column :longitude
    column :cif
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "My perfil" do
      f.input :user_id
      f.input :nombredenegocio
      f.input :tiponegocio
      f.input :telf
      f.input :address
      f.input :cif
      f.input :informacion_util
      f.input :fotoperfil
      f.input :description

    end
    f.actions
  end


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
