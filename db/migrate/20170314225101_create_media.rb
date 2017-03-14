class CreateMedia < ActiveRecord::Migration[5.0]
  def change
    create_table :media do |t|
      t.string :name
      t.references :linkable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
