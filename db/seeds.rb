# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do |user_counter|
  user = User.create!(name: "#{user_counter+1}", email: "#{user_counter+1}@email.com",
      password: "password")
  3.times do |survey_counter|
    survey = Survey.create!(name: "Survey#{survey_counter+1}",
        keyword: Faker::Name.first_name, user_id: user.id,
        description: Faker::Company.catch_phrase, published: "true")
    3.times do |question_counter|
      question = Question.create!(query: (Faker::Lorem.sentence(3, false)),
          query_type: ["short_answer", "yes_no", "long_answer"].sample, survey_id: survey.id,
          required: "true", position: question_counter+1,
          description: (Faker::Lorem.sentence(3, false)))
    end
  end
end

# user = User.create!(name: "Aaron", email: "aaron@email.com", password: "password")
# survey = Survey.create!(name: "Test Survey", user_id: user.id, description: "tester", published: true)
# Question.create!(query: "whats your name", survey_id: survey.id, position: 1)
# Question.create!(query: "whats your color", survey_id: survey.id, position: 2)
# Question.create!(query: "whats your car", survey_id: survey.id, position: 3)
# Question.create!(query: "where are you from", survey_id: survey.id, position: 4)
# Question.create!(query: "whats your pet", survey_id: survey.id, position: 5)
