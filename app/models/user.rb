require 'phonelib'
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects
  has_many :phases, through: :projects
  has_many :action_items, through: :phases

  
  validates :phone, phone: true
  validates_format_of :email, with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "Must be a valid email address"
  validates :name, presence: true  
  validates enum access_level: { 1: 'read_only', 2: 'general', 3: 'admin', 4: 'super admin' }
  validates enum user_type: { admin: 'admin', user: 'user' }, presence: true

  def isAdmin?
    user_type == 'admin'
  end

end
