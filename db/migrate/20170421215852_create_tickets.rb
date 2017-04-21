class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.references :event, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :price
      t.string :seat

      t.timestamps
    end
  end
end
