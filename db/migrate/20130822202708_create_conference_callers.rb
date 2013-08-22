class CreateConferenceCallers < ActiveRecord::Migration
  def change
    create_table :conference_callers do |t|
      t.string :name
      t.string :image_url
      t.string :token
      t.string :email

      t.timestamps
    end
  end
end
