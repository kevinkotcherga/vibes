class ChangeDefaultValueOfStatus < ActiveRecord::Migration[6.0]
  def change
    add_column :matchings, :status, :string, default: "valid"
  end
end
