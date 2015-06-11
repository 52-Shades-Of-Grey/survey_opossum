json.array!(@string_questions) do |string_question|
  json.extract! string_question, :id, :query, :answer, :survey_id
  json.url string_question_url(string_question, format: :json)
end
