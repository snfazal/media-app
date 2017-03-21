class AddColumnsToUsersAndNotes < ActiveRecord::Migration[5.0]
  def change
    add_reference :media, :users, foreign_key: true
    add_reference :notes, :media, foreign_key: true
  end
end
