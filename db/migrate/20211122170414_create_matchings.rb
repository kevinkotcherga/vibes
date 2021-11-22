class CreateMatchings < ActiveRecord::Migration[6.0]
  def change
    create_table :matchings do |t|
      t.float :like_value
      t.references :to_user, foreign_key: { to_table: 'users' }
      t.references :from_user, foreign_key: { to_table: 'users' }
      t.timestamps
    end
  end
end
