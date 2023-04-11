class Phase < ApplicationRecord
  belongs_to :project
  has_many :action_items, dependent: :destroy

  validates :title, presence: true
end
