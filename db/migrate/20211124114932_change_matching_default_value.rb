class ChangeMatchingDefaultValue < ActiveRecord::Migration[6.0]
  def change
    change_column_default :profiles, :matching_id, true
  end
end
