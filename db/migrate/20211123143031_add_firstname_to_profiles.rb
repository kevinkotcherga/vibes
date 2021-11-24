class AddFirstnameToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :first_name, :string
  end
end
