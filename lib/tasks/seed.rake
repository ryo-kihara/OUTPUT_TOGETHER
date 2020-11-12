Faker::Config.locale = 'ja'

Pathname.glob(Rails.root.join('db/seed/*.rb')) do |path|
  desc "Load the seed data from db/seed/#{path.basename}."
  task "db:seed:#{path.basename('.*')}" => :environment do
    load(path)
  end
end