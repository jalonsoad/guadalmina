class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :cif
      t.integer :member

      t.timestamps
    end
  end
end
