json.extract! question, :id, :available_in, :image, :title, :description, :reason, :created_at, :updated_at
json.url question_url(question, format: :json)
