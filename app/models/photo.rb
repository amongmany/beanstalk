class Photo < ActiveRecord::Base
  belongs_to :user
  serialize :payload, JSON

  def self.collect_all
    User.all.each do |user|
      puts "Collecting photos for User #{user.id}"
      user.collect_photos
    end
  end

end
