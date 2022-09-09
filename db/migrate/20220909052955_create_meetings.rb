class CreateMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :meetings do |t|
      t.string :title
      t.string :description
      t.datetime :start_time
      t.integer :duration
      t.string :password
      t.belongs_to :user

      t.timestamps
    end
  end
end
