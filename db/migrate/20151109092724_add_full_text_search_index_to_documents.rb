class AddFullTextSearchIndexToDocuments < ActiveRecord::Migration
  def change
    add_index(:documents, :content, using: "pgroonga")
  end
end
