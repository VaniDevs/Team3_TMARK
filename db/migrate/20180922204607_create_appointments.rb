class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :whattheyneed
      t.time :datetime
      t.string :comment
      t.boolean :showup
      t.boolean :haircut
      t.timestamps
    end
      add_reference :appointments, :agency, index: true
      add_reference :appointments, :client, index: true
  end
end
