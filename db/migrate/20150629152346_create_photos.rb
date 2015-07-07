class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :instagram_photo_id
      t.integer :instagram_user_id
      t.integer :instagram_created_time
      t.string :instagram_link
      t.string :instagram_low_resolution_url
      t.string :instagram_thumbnails_url
      t.string :instagram_standard_resolution_url
      t.timestamps
    end
  end
end
