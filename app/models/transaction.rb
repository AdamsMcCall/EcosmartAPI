class Transaction < ActiveRecord::Base
  validates :amount, presence: true
  validates :child_id, presence: true
  validates :date, presence: true
  validates :receiver, presence: true
end
