class AddParkingIdToReservations < ActiveRecord::Migration
  def change
    add_reference :reservations, :parking, index: true
    add_foreign_key :reservations, :parkings
  end
end
