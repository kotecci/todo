class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_one    :priority
end
