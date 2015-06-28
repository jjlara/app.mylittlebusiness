ActiveAdmin.register User do
  permit_params :password, :password_confirmation, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :created_at, :updated_at, :phone, :address, :latitude, :longitude, :nombrenegocio, :tipodenegocio, :cifempresa
   
   index do |f|
    selectable_column
    id_column
    column :email
    
    actions
  end

  form do |f|
    f.inputs "Users" do
      f.input :email
      
      f.input :password
      f.input :password_confirmation 
      
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
