ActiveAdmin.register Gadget do
  permit_params :user_id, :calendar, :horarios, :push, :chat, :paypal, :promos, :reservasarticulos, :cita_previa, :llamada_telefono

  index do |f|
    selectable_column
    id_column
    column :user_id
    column :user
    column :calendar
    column :horarios
    column :push
    column :chat
    column :paypal
    column :promos
    column :reservasarticulos
    column :cita_previa
    column :llamada_telefono
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Gadgets" do
      f.input :calendar
      f.input :horarios
      f.input :push
      f.input :chat
      f.input :paypal
      f.input :promos
      f.input :reservasarticulos
      f.input :cita_previa
      f.input :llamada_telefono
      f.input :user_id
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
