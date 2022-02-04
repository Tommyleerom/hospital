class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :surname, index: true
      t.string :password

      t.timestamps
    end
  end

  say "Created a table doctors"
end
