json.extract! contactu, :id, :name, :email, :subject, :message, :created_at, :updated_at
json.url contactu_url(contactu, format: :json)
