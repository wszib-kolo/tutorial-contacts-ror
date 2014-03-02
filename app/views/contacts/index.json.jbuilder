json.array!(@contacts) do |contact|
  json.extract! contact, :id, :firstname, :lastname, :email, :telephone
  json.url contact_url(contact, format: :json)
end
