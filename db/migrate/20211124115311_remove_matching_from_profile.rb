class RemoveMatchingFromProfile < ActiveRecord::Migration[6.0]
  def change
    remove_column :profiles, :matching_id
  end
end
