class CreateAppointements < ActiveRecord::Migration[5.1]
  def change
    create_table :appointements do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :patient, index: true
      t.datetime :date
      t.timestamps
  	end

    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.timestamps
    end

    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :speciality
      t.integer :postal_code
      t.timestamps
    end
 
  end
end
