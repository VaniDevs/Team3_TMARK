json.extract! client, :id, :firstname, :lastname, :email, :phone, :created_at, :updated_at
json.url client_url(client, format: :json)
