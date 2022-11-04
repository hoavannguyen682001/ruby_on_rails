json.extract! dbdemo, :id, :first_name, :last_name, :phone, :email, :created_at, :updated_at
json.url dbdemo_url(dbdemo, format: :json)
