require 'faker'
require 'csv'

desc "create some fake CSV data"
task :faker do


  Faker::Config.locale = 'en-US'

  CSV.open("data.csv", "wb") do |file|

    file << ["Name", "Company", "Address", "City", "Email", "City", "Phone"]

    10.times do

      file << [ 
        
        Faker::Name.name,
        Faker::Company.name,
        Faker::Address.street_address,
        Faker::Address.city,
        Faker::Internet.email,
        Faker::Address.city,
        Faker::PhoneNumber.phone_number


      ]

    end
  end

end
