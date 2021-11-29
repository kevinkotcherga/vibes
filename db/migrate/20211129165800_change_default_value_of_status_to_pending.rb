class ChangeDefaultValueOfStatusToPending < ActiveRecord::Migration[6.0]
  def change
    change_column :matchings, :status, :string, default: "pending"
  end
end
