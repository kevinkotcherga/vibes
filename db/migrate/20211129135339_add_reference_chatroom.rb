class AddReferenceChatroom < ActiveRecord::Migration[6.0]
  def change
    add_reference :matchings, :chatroom, foreign_key: true
  end
end
