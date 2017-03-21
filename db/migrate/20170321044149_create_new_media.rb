class CreateNewMedia < ActiveRecord::Migration[5.0]
  def change
      remove_reference :media, :linkable
  end
end
