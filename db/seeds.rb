# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
t_f = [true,false]
5.times do |user_counter|
  user = User.create!(name: "#{user_counter+1}", email: "#{user_counter+1}@email.com",
      password: "password")
  3.times do |survey_counter|
    survey = Survey.create!(name: "Survey#{survey_counter+1}",
        keyword: Faker::Name.first_name, user_id: user.id,
        description: Faker::Company.catch_phrase, published: t_f.sample)
    3.times do |question_counter|
      question = Question.create!(query: (Faker::Lorem.sentence(3, false)),
          query_type: ["short", t_f.sample].sample, survey_id: survey.id,
          required: t_f.sample, position: question_counter+1,
          description: (Faker::Lorem.sentence(3, false)))
    end
  end
end
