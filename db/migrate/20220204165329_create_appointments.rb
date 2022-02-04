class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :doctors
      t.belongs_to :users

      t.timestamps
    end
  end
end
