json.extract! donor, :id, :firstname, :lastname, :email, :phone, :created_at, :updated_at
json.url donor_url(donor, format: :json)
