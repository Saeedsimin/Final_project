class AddDoc < ActiveRecord::Migration
  def change
    add_column :doctor_adds, :doctor_id, :integer

  end
end
