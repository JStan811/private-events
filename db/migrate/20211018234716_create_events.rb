class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.date :date
      t.string :location, null: false
      t.integer :host_id, null: false

      t.timestamps
    end
  end
end
