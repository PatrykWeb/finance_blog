class CreatePhotos < ActiveRecord::Migration[6.1]
  def up
    create_table :photos do |t|
      t.integer "galery_id"
      t.string "name"
      t.integer "position"
      t.boolean "visible", :default => true
      t.string "description"
      t.attachment :photo
      t.timestamps
    end
  end
  def down
    drop_table :photos
  end
end
