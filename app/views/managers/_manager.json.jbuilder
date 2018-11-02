json.extract! manager, :id, :manager_name, :manager_pin, :created_at, :updated_at
json.url manager_url(manager, format: :json)
