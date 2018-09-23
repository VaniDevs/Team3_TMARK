json.extract! appointment, :id, :whatTheyNeed, :datetime, :comment, :showup, :haircut, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
