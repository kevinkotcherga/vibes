class DeleteStatusFromMatchings < ActiveRecord::Migration[6.0]
  def change
    remove_column :matchings, :status
  end
end
