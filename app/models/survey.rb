class Survey < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions
  belongs_to :user
  accepts_nested_attributes_for :questions, reject_if: proc { |attributes| attributes['query'].blank? }
end
