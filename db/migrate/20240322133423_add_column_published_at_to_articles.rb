class AddColumnPublishedAtToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :published_at, :timestamp
  end
end
