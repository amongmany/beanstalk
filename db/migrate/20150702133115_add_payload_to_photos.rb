class AddPayloadToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :payload, :text  #text could also be :json
  end
end
