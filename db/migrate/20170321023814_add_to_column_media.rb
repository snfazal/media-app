class AddToColumnMedia < ActiveRecord::Migration[5.0]
  def change
    add_column :media, :link, :string
    add_column :media, :image_url, :string
  end
end
