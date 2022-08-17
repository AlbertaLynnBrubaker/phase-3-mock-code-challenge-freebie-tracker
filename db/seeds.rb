Freebie.destroy_all
Dev.destroy_all
Company.destroy_all


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
Freebie.create(item_name: "RTFM Hat", value: 4, dev_id: Dev.first.id, company_id: Company.first.id)
Freebie.create(item_name: "WAI poster", value: 3, dev_id: Dev.fourth.id, company_id: Company.second.id)
Freebie.create(item_name: "Did you ask the rubber duck? poster", value: 7, dev_id: Dev.fourth.id, company_id: Company.first.id)
Freebie.create(item_name: "Stonks T-shirt", value: 3, dev_id: Dev.third.id, company_id: Company.fourth.id)

puts "Seeding done!"
