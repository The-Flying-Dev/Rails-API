class CreateOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :bio
      t.string :education

      t.timestamps
    end
  end
end
