class FamilyMember < ApplicationRecord
  has_many :family_member_events
  has_many :events, through: :family_member_events
  belongs_to :user
end
