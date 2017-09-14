class AddUserIdColunmToFamilyMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :family_members, :user_id, :integer
  end
end
