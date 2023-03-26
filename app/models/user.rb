class User < ApplicationRecord
  belongs_to :project
  has_many :action_items
end
