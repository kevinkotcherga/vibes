class AddLastnameToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :last_name, :string
  end
end
