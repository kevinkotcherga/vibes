class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :label
      t.integer :order

      t.timestamps
    end
  end
end
