json.array!(@fotosprofiles) do |fotosprofile|
  json.extract! fotosprofile, :id, :user_id
  json.url fotosprofile_url(fotosprofile, format: :json)
end
