json.array!(@pins) do |pin|
  json.extract! pin, :id, :user_id, :descripcion, :name, :avatar, :categoria, :price, :stock, :referencia
  json.url pin_url(pin, format: :json)
end
