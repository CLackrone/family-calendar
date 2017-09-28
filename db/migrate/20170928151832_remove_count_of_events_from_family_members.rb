class RemoveCountOfEventsFromFamilyMembers < ActiveRecord::Migration[5.1]
  def change
    remove_column :family_members, :count_of_events, :integer
  end
end
