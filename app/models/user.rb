class User < ApplicationRecord
  include ActiveModel::ForbiddenAttributesProtection

  enum role: [:admin, :teacher]

  has_many :students

  has_secure_password

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true
end
