class Transfer < ActiveRecord::Base
  validates :amount, presence: true
  validates :child_id, presence: true
  validates :parent_id, presence: true
  validates :date, presence: true
end
