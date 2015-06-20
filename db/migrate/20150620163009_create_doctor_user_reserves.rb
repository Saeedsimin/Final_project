class CreateDoctorUserReserves < ActiveRecord::Migration
  def change
    create_table :doctor_user_reserves do |t|

      t.timestamps null: false
    end
  end
end
