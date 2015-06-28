ActiveAdmin.register Promo do
  permit_params :nombre, :descripcion, :enlace, :seguir, :user_id, :fotospromo
  
  index do |f|
    selectable_column
    id_column
    column :user_id
    column :user
    column :nombre
    column :descripcion
    column :enlace
    column :seguir
    column :fotospromo
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Promociones" do
      f.input :user_id
      f.input :nombre
      f.input :descripcion
      f.input :enlace
      f.input :seguir
      f.input :fotospromo
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
