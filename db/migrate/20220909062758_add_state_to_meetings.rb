class AddStateToMeetings < ActiveRecord::Migration[7.0]
  def self.up
    add_column :meetings, :aasm_state, :string
  end

  def self.down
    remove_column :meetings, :aasm_state
  end
end
