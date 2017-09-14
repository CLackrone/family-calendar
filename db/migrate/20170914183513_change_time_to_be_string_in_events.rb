class ChangeTimeToBeStringInEvents < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :time, :string
  end
end
