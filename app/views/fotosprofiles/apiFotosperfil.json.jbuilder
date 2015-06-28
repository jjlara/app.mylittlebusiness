json.array!(@fotosprofiles) do |fotosprofile|
  json.extract! fotosprofile, :id, :user_id, :mis_fotos
  json.url fotosprofile_url(fotosprofile, format: :json)
end