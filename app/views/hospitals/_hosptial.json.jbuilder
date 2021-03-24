json.extract! hospital, :id, :name, :tel, :address, :website, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)
