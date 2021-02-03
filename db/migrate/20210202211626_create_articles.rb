class CreateArticles < ActiveRecord::Migration[6.1]
  def up
    create_table :articles do |t|
      t.integer "page_id"
      t.string "name"
      t.integer "position"
      t.boolean "visible", :default => true
      t.text "content_text"
      t.attachment :images
      t.timestamps
    end
  end
  def down
    drop_table :articles
  end
end
