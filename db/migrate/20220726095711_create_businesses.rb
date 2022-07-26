class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.string :title
      t.string :location
      t.integer :number_of_employees
      t.belongs_to :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
