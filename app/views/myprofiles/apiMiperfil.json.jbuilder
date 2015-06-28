json.array!(@myprofiles) do |myprofile|
  json.extract! myprofile, :id, :user_id, :informacion_util, :fotoperfil, :description, :nombredenegocio, :tiponegocio, :telf, :address, :latitude, :longitude, :cif
  json.url myprofile_url(myprofile, format: :json)
end
