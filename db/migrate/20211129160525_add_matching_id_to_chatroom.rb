class AddMatchingIdToChatroom < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :matching, foreign_key: true
  end
end
