json.array!(@questions) do |question|
  json.extract! question, :id, :query_type, :query, :survey_id, :required, :position, :description
  json.url question_url(question, format: :json)
end
