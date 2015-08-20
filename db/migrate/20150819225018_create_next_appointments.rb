class CreateNextAppointments < ActiveRecord::Migration
  def change
    create_table :next_appointments do |t|
      t.string :next_date
      t.references :appointment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
