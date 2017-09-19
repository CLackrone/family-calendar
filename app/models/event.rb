class Event < ApplicationRecord
  belongs_to :category
  has_many :family_member_events
  has_many :family_members, through: :family_member_events

  validates :name, :date, :location, presence: true
end
