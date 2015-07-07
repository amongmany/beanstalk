class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :instagram_username
      t.integer :instagram_user_id
      t.string :instagram_full_name
      t.string :instagram_profile_pic_url
      t.timestamps
    end
  end
end
