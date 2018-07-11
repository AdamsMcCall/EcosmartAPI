class Link < ActiveRecord::Base
  validates :child_id, presence: true
  validates :parent_id, presence: true
end
