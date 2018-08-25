class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # attr_accessible :email, :password, :password_confirmation, :remember_me, :role_attributes
  has_one :role
  accepts_nested_attributes_for :role  
  
  validates :role_id, presence: true
end
