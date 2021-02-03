class CreateGaleries < ActiveRecord::Migration[6.1]
  def up
    create_table :galeries do |t|
      t.string "name", :limit => 20
      t.integer "position"
      t.text "description"
      t.boolean "visibly", :default => true
      t.attachment :photos
      t.timestamps
    end
  end
  def down
    drop_table :galeries
  end
end
