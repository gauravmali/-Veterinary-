class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :customer_name
      t.boolean :appoint_remind
      t.text :reason
      t.references :doctor, index: true, foreign_key: true
      t.references :animal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
