class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.text :bio
      t.references :user, null: false, foreign_key: true
      t.references :matching, null: false, foreign_key: true

      t.timestamps
    end
  end
end
