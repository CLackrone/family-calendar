class AddFamilyMemberEventsCountColumnToFamilyMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :family_members, :family_member_events_count, :integer
  end
end
