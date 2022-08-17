Freebie.destroy_all
Dev.destroy_all
Company.destroy_all
Freebie.reset_pk_sequence
Dev.reset_pk_sequence
Company.reset_pk_sequence
Faker::UniqueGenerator.clear


puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
Freebie.create(item_name: "RTFM Hat", value: 4, dev_id: Dev.all.sample.id, company_id: Company.all.sample.id)
Freebie.create(item_name: "WAI poster", value: 3, dev_id: Dev.all.sample.id, company_id: Company.all.sample.id)
Freebie.create(item_name: "Did you ask the rubber duck? poster", value: 7, dev_id: Dev.all.sample.id, company_id: Company.all.sample.id)
Freebie.create(item_name: "Stonks T-shirt", value: 3, dev_id: Dev.all.sample.id, company_id: Company.all.sample.id)

# 30.times do
#   Freebie.create
# end

puts "Seeding done!"
