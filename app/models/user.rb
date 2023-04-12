class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects
  has_many :phases, through: :projects
  has_many :action_items, through: :phases

  
  validates_format_of :phone, with: /\A[0-9]{10,13}\z/, message: "Must be 10 to 13 digits"
  validates_format_of :email, with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "Must be a valid email address"
  validates :name, presence: true  
  validates :access_level, presence: true, inclusion: { in: ['read_only', 'general', 'admin', 'super admin'] }
  validates :user_type, presence: true, inclusion: { in: ['admin', 'user'] }

  def isAdmin?
    user_type == 'admin'
  end

end
