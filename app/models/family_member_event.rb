class FamilyMemberEvent < ApplicationRecord
  belongs_to :family_member 
  belongs_to :event
end

