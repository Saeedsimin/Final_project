class CreateDoctorAdds < ActiveRecord::Migration
  def change
    create_table :doctor_adds do |t|
      t.datetime :from
      t.datetime :to
      t.integer :total
      t.integer :used
      t.string :docName
      t.string :docFamily
      t.string :speciality

      t.timestamps null: false
    end
  end
end
