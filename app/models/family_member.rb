class FamilyMember < ApplicationRecord
  has_many :family_member_events
  has_many :events, through: :family_member_events
  belongs_to :user

  validates :name, :age, presence: true

  def self.busy
    joins(:events).group("family_members.id").having("COUNT(*) >= 3").select("family_members.*")
  end

end
