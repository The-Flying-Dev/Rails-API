class AddServiceToBusinesses < ActiveRecord::Migration[6.1]
  def change
    add_column :businesses, :service, :string
  end
end
