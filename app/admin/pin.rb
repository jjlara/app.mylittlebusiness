ActiveAdmin.register Pin do
  permit_params :descripcion, :name, :user_id, :avatar, :categoria, :price, :stock, :referencia

  index do |f|
    selectable_column
    id_column
    column :user_id
    column :user
    column :descripcion
    column :name
    column :avatar
    column :categoria
    column :price
    column :stock
    column :referencia
    column :created_at
    column :updated_at
    actions
  end

    form do |f|
    f.inputs "Pins" do
      f.input :descripcion
      f.input :name
      f.input :user_id
      f.input :avatar
      f.input :categoria
      f.input :price
      f.input :stock
      f.input :referencia
      f.input :created_at
      f.input :updated_at
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
