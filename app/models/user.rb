class User < ApplicationRecord

  has_many :family_members
  has_many :family_member_events, through: :family_members 
  has_many :events, through: :family_member_events
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook]



end
