class User < ApplicationRecord
  has_one :picture, as: :imageable
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :contact_number, presence: true, uniqueness: true, length: { is: 10 }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  accepts_nested_attributes_for :picture, allow_destroy: true
end
