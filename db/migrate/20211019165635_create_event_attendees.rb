class CreateEventAttendees < ActiveRecord::Migration[6.1]
  def change
    create_table :event_attendees do |t|
      t.bigint :event_id
      t.bigint :attendee_id

      t.timestamps
    end
  end
end
