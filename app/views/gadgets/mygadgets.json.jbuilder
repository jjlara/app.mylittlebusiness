json.array!(@gadgets) do |gadget|
  json.extract! gadget, :id, :user_id, :calendar, :horarios, :push, :chat, :paypal, :promos, :reservasarticulos, :cita_previa, :llamada_telefono
  json.url gadget_url(gadget, format: :json)
end