class AddDoctorAndUserRefToAppts < ActiveRecord::Migration[6.0]
  def change
    add_reference :appts, :doctor, null: false, foreign_key: true
    add_reference :appts, :user, null: false, foreign_key: true
  end
end
