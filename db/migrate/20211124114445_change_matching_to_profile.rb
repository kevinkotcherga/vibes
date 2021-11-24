class ChangeMatchingToProfile < ActiveRecord::Migration[6.0]
  def change
    change_column_null :profiles, :matching_id, true
  end
end
