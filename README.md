#Survey Opossum

Build an app where users can create and take surveys. Anyone is allowed to take a survey, only people who have signed up for an account can create a survey.

##Objective
For this assignment our organization was comprised of two Ruby on Rails students and two Front End Engineering students. Together, we created an app that allows users with an authenticated account to create surveys. Questions for the survey can be three different types: Yes/No (true/false), Short Answer, or Long Answer. The creator can also specify if the questions must be answered when a survey is taken. If the user chooses for their survey to be published, they will be given a url for others to take their survey.

Account users can edit their surveys unless their survey has been taken. If there are any answers associated with their survey, account users will be able to view all the answers for each question.

Any user can view a list of all published surveys, and take whichever they choose.

###ERD, Workflow Diagram and Heroku App

* [Heroku](http://secure-bastion-2114.herokuapp.com/)

* [ERD](https://www.lucidchart.com/invitations/accept/840961af-11c6-4764-b9d4-e40a9974485bÂ)

* [Workflow Diagram](https://www.lucidchart.com/invitations/accept/2d9869bb-2d41-4f6f-b17b-40e18ce17784)

###To Run via Terminal...
* Click [here](https://github.com/52-Shades-Of-Grey/survey_opossum.git) to go to the repository and clone to desktop
* Once in your projects root directory, in the terminal type:
  * `bin/rake db:migrate`
  * `bin/rake db:seed`
    * can run `bin/rake db:setup` in place of the last two commands
  * `bin/rails server`
  * In your browser navigate to `localhost:3000`
