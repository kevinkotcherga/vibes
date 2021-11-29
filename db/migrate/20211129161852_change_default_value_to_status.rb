class ChangeDefaultValueToStatus < ActiveRecord::Migration[6.0]
  def change
    change_column :matchings, :status, :string, default: "valid"
  end
end
