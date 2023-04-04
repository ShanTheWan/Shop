class AddTagsToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :tag_id, :integer
    add_index :products, :tag_id
  end
end
