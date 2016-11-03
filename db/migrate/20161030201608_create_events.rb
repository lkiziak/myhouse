class CreateEvents < ActiveRecord::Migration[5.0]

  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :contact
      t.string :event_id

      t.timestamps
    end
  end
end
