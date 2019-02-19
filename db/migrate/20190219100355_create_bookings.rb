class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :status
      t.date :date_start
      t.date :date_finish
      t.references :artwork, foreign_key: true
      t.reference :user

      t.timestamps
    end
  end
end
