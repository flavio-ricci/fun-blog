class AddAuthorIdToArticle < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :author_id, :integer
    add_index :articles, :author_id
  end
end
