class User < ApplicationRecord

  enum role: [:admin, :teacher]

  has_secure_password

  validates :email, presence: true
  validates :name, presence: true
  validates :role, presence: true
end
