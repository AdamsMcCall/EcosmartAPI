class Parent < ActiveRecord::Base
  validates :account_id, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :email, presence: true
  validates :pwd_hash, presence: true
  validates :birthdate, presence: true
end
