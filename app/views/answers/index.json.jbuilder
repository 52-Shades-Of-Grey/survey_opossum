json.array!(@answers) do |answer|
  json.extract! answer, :id, :response, :question_id
  json.url answer_url(answer, format: :json)
end
