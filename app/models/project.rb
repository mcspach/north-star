class Project < ApplicationRecord
    has_many :users
    has_many :phases, dependent: :destroy

    validates :title, presence: true
    validates :description, presence: true
end
