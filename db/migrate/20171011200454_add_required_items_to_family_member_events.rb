class AddRequiredItemsToFamilyMemberEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :family_member_events, :required_items, :string
  end
end
