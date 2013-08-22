class CreateConferenceRooms < ActiveRecord::Migration
  def change
    create_table :conference_rooms do |t|
      t.string :name
      t.string :token

      t.timestamps
    end
  end
end
