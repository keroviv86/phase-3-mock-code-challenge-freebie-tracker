puts "Creating companies..."
c1=Company.create(name: "Google", founding_year: 1998)
c2=Company.create(name: "Facebook", founding_year: 2004)
c3=Company.create(name: "Dunder Mifflin", founding_year: 2002)
c4=Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
d1=Dev.create(name: "Rick")
d2=Dev.create(name: "Morty")
d3=Dev.create(name: "Mr. Meseeks")
d4=Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

Freebie.create(item_name:"gum", dev_id:d1.id, company_id:c1.id, value:10)
Freebie.create(item_name:"shoes", dev_id:d2.id, company_id:c1.id, value:64)
Freebie.create(item_name:"chips", dev_id:d2.id, company_id:c4.id, value:4)
Freebie.create(item_name:"sticker", dev_id:d3.id, company_id:c3.id, value:2)
Freebie.create(item_name:"tacos", dev_id:d4.id, company_id:c4.id, value:5)
Freebie.create(item_name:"airfryer", dev_id:d4.id, company_id:c4.id, value:100)
Freebie.create(item_name:"pizza", dev_id:d4.id, company_id:c3.id, value:22)

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

puts "Seeding done!"
