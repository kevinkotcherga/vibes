class AddMatchColumnToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :match, :string
  end
end
