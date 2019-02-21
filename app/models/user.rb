class User < ApplicationRecord
  has_secure_password

  validates :first_name, :last_name, :email, presence: true
  validates :email, :password_digest, uniqueness: true
end
