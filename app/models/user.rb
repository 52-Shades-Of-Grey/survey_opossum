class User < ActiveRecord::Base
  has_many :surveys
  has_secure_password
  validates :password, confirmation: true
  # validates :password_confirmation, presence: true
end
