json.extract! employee, :id, :name, :email, :registry_number, :company_id, :team_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
