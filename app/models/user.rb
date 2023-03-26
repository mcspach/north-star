class User < ApplicationRecord
  belongs_to :project
  has_many :action_items

  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
