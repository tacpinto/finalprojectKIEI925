# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Material.delete_all
User.delete_all
Transaction.delete_all

# Create the materials
puts "Creating materials..."
paper = Material.create(name: "paper")
glass = Material.create(name: "glass")
plastic = Material.create(name: "plastic")
steel = Material.create(name: "steel")
aluminum = Material.create(name: "aluminum")

# Create the users
puts "Creating users..."
jose = User.create(name: "Jose", company_fed_code: "23434556", address: "Avenue B", zip_code: "60201", email: "jose@gmail.com", password: "abc", telephone: "847868", number_of_employees: "1", company_type: "individual")
maria = User.create(name: "Maria", company_fed_code: "127655611", address: "Avenue A", zip_code: "63789", email: "maria@gmail.com", password: "123", telephone: "555234", number_of_employees: "4", company_type: "aggregator")
felipe = User.create(name: "Felipe", company_fed_code: "22248790", address: "Avenue Q", zip_code: "58305", email: "felipe@gmail.com", password: "mybirthday", telephone: "239555", number_of_employees: "11", company_type: "recycler")
rebeca = User.create(name: "Rebeca", company_fed_code: "369395310", address: "Avenue C", zip_code: "70070", email: "rebeca@gmail.com", password: "iamrebeca", telephone: "555120", number_of_employees: "3", company_type: "recycler")
jean = User.create(name: "Jean", company_fed_code: "10688131200", address: "Avenue F", zip_code: "12220", email: "jean@gmail.com", password: "jesuisfrancais", telephone: "120763", number_of_employees: "2", company_type: "aggregator")

puts "Creating transactions..."

Transaction.create(tax_receipt: "1094679301", buyer_user_id: jose.id, seller_user_id: maria.id, tonnage: "10", material_id: paper.id, price: "9")
Transaction.create(tax_receipt: "39864018", buyer_user_id: felipe.id, seller_user_id: maria.id, tonnage: "1100", material_id: plastic.id, price: "34")
Transaction.create(tax_receipt: "120840320", buyer_user_id: rebeca.id, seller_user_id: jose.id, tonnage: "40", material_id: glass.id, price: "13")
Transaction.create(tax_receipt: "3490402", buyer_user_id: felipe.id, seller_user_id: jean.id, tonnage: "25.5", material_id: glass.id, price: "12.5")
Transaction.create(tax_receipt: "12497653", buyer_user_id: jose.id, seller_user_id: maria.id, tonnage: "12", material_id: aluminum.id, price: "2")

puts "There are now #{User.count} users, #{Transaction.count} transactions, and #{Material.count} materials in the database."