class AddCountOfEventsColumnToFamilyMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :family_members, :count_of_events, :integer
  end
end
