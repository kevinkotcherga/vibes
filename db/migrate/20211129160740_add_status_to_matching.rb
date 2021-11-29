class AddStatusToMatching < ActiveRecord::Migration[6.0]
  def change
    add_column :matchings, :status, :string
  end
end
