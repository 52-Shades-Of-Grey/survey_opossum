class Survey < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :questions, reject_if: :all_blank
end
