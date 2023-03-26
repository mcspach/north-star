class Project < ApplicationRecord
    has_many :users
    has_many :phases

    validates :title, presence: true
    validates :description, presence: true
end
