json.array!(@questions) do |question|
  json.extract! question, :id, :query, :type, :survey_id
  json.url question_url(question, format: :json)
end
