class AddUpvotesToAlarms < ActiveRecord::Migration[5.1]
  def change
    add_column :alarms, :value, :integer, default: 0
  end
end
