json.array!(@surveys) do |survey|
  json.extract! survey, :id, :name, :keyword, :user_id, :description, :published
  json.url survey_url(survey, format: :json)
end
