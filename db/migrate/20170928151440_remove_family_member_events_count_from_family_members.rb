class RemoveFamilyMemberEventsCountFromFamilyMembers < ActiveRecord::Migration[5.1]
  def change
    remove_column :family_members, :family_member_events_count, :integer
  end
end
