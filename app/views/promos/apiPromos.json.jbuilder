json.array!(@promos) do |promo|
  json.extract! promo, :id, :nombre, :descripcion, :enlace, :seguir, :user_id, :fotospromo
  json.url promo_url(promo, format: :json)
end
