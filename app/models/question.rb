class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :survey
  validates :query, :query_type, :survey_id, presence: true
end
