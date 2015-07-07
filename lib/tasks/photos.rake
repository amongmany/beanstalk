namespace :photos do
  desc "Collect all photos for all users."
  task collect: :environment do
    puts "collecting photos"
    Photo.collect_all
  end
end
