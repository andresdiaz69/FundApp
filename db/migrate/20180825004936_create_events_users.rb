class CreateEventsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :events_users do |t|
      t.references :event_foundation, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :points
      t.datetime :dateEvent

      t.timestamps
    end
  end
end
