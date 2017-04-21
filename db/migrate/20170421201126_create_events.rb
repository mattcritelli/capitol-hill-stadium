class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :category
      t.string :name
      t.datetime :date_and_time
      t.integer :capacity

      t.timestamps
    end
  end
end
