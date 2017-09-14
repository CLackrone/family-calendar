class CreateFamilyMemberEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :family_member_events do |t|
      t.integer :family_member_id
      t.integer :event_id

      t.timestamps
    end
  end
end
