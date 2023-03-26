class ActionItem < ApplicationRecord
  belongs_to :phase
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
end