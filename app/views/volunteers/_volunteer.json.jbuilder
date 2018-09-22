json.extract! volunteer, :id, :firstname, :lastname, :email, :phone, :created_at, :updated_at
json.url volunteer_url(volunteer, format: :json)
