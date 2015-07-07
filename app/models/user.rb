class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :photos

  def collect_photos
    access_token="203051.9772b41.28b582b279fc4747b5cab240a4c7815b"
    client = Instagram.client(:access_token => access_token)
    #Collects a user's IG feed
    max_id=client.user_recent_media.first.id
    until max_id.to_s == ""
      page=client.user_recent_media max_id: max_id
      page.each do |media|
        Photo.find_or_create_by instagram_photo_id: media.id do |photo|
          photo.user = self
          photo.payload = media
        end
        puts media.images.standard_resolution.url
      end
      max_id = page.pagination.next_max_id
    end
  end


end
