class BrithDateToProfiles < ActiveRecord::Migration[6.0]
  def change
    remove_column :profiles, :birth_date
  end
end
