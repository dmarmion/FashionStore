# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Collection.destroy_all

Collection.create(name: "Men")
Collection.create(name: "Women")
Collection.create(name: "Kids")
Collection.create(name: "New Arrivals")

Item.destroy_all

Item.create(name: "Urban Explorer Sweatshirt",
           description: "A dark, but warm and comfortable sweatshirt.",
           price: 49.99,
           popularity: 70,
           startsellingdate: 3.weeks.ago)

latest_item = Item.find_by(name: "Urban Explorer Sweatshirt")
latest_item.collections << Collection.find_by(name: "Men")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1499971856191-1a420a42b498?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=629&q=80")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1499971132045-e9488b59b388?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1499970745367-901f51250ec9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80")

Item.create(name: "Black Tube Dress",
           description: "A sleek black dress",
           price: 69.99,
           popularity: 50,
           startsellingdate: 1.year.ago)
           
latest_item = Item.find_by(name: "Black Tube Dress")
latest_item.collections << Collection.find_by(name: "Women")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1606844079914-fb99f7c8e0ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
           
Item.create(name: "Long Sleeve Shirt",
           description: "A comfortable long sleeve shirt",
           price: 29.99,
           popularity: 80,
           startsellingdate: 4.months.ago)
           
latest_item = Item.find_by(name: "Long Sleeve Shirt")
latest_item.collections << Collection.find_by(name: "Women")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1606330574738-53fbe36a9bb3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=672&q=80")

Item.create(name: "Short Sleeve T-Shirt",
           description: "A comfortable t-shirt featuring a hand skeleton print",
           price: 29.99,
           popularity: 90,
           startsellingdate: 2.weeks.ago)
           
latest_item = Item.find_by(name: "Short Sleeve T-Shirt")
latest_item.collections << Collection.find_by(name: "Men")
latest_item.collections << Collection.find_by(name: "Women")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1503342484812-ee33283508a5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1503342331296-c8ca3b8dd0a0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1503341504253-dff4815485f1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")

Item.create(name: "Made Wild T-Shirt",
           description: "A t-shirt for those who are truly made wild",
           price: 29.99,
           popularity: 40,
           startsellingdate: 5.months.ago)

latest_item = Item.find_by(name: "Made Wild T-Shirt")
latest_item.collections << Collection.find_by(name: "Men")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1503341960582-b45751874cf0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1503341873906-91d1932a9758?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80")

Item.create(name: "Silhouette Hoodie",
           description: "A comfortable and warm hoodie that turns you into a silhouette. Seriously.",
           price: 99.99,
           popularity: 69,
           startsellingdate: 1.week.ago)

latest_item = Item.find_by(name: "Silhouette Hoodie")
latest_item.collections << Collection.find_by(name: "Men")
latest_item.collections << Collection.find_by(name: "Women")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1503341654871-ed7935f6e05e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")

Item.create(name: "Spartan T-Shirt",
           description: "An encouraging t-shirt, in dark grey",
           price: 29.99,
           popularity: 41,
           startsellingdate: 7.weeks.ago)

latest_item = Item.find_by(name: "Spartan T-Shirt")
latest_item.collections << Collection.find_by(name: "Men")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1516082669438-2d2bb5082626?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1516178151140-1a27a08c417a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80")
           
Item.create(name: "Baseball Cap",
           description: "A stylish hat for your head. In black, of course.",
           price: 19.99,
           popularity: 55,
           startsellingdate: 5.months.ago)

latest_item = Item.find_by(name: "Baseball Cap")
latest_item.collections << Collection.find_by(name: "Men")
latest_item.collections << Collection.find_by(name: "Women") 
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1574643210821-9630d4037a2a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
           
Item.create(name: "Beanie",
           description: "Keep your head warm with this comfortable beanie",
           price: 19.99,
           popularity: 70,
           startsellingdate: 5.weeks.ago)

latest_item = Item.find_by(name: "Beanie")
latest_item.collections << Collection.find_by(name: "Men")
latest_item.collections << Collection.find_by(name: "Women") 
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1520517601640-32ec514e4a15?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1520772902905-b72529a56c25?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=699&q=80")

Item.create(name: "Kids Vest",
           description: "It's comfortable. It's fluffy. It's perfect.",
           price: 39.99,
           popularity: 44,
           startsellingdate: 1.year.ago)

latest_item = Item.find_by(name: "Kids Vest")
latest_item.collections << Collection.find_by(name: "Kids")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1507036066871-b7e8032b3dea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80")

Item.create(name: "Kids Shirt",
           description: "It may have other colours in it, but we'll let it slide.",
           price: 29.99,
           popularity: 50,
           startsellingdate: 2.months.ago)

latest_item = Item.find_by(name: "Kids Shirt")
latest_item.collections << Collection.find_by(name: "Kids")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1529776292731-c2246c65df5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")

Item.create(name: "Future Leader Kids T-Shirt",
           description: "Have high ambitions for your child? This t-shirt will be perfect.",
           price: 19.99,
           popularity: 46,
           startsellingdate: 1.month.ago)

latest_item = Item.find_by(name: "Future Leader Kids T-Shirt")
latest_item.collections << Collection.find_by(name: "Kids")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1536640712-4d4c36ff0e4e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80")

Item.create(name: "Washable Face Mask",
           description: "Stay safe and protect others with this face mask. In black, of course.",
           price: 9.99,
           popularity: 88,
           startsellingdate: 1.year.ago)         

latest_item = Item.find_by(name: "Washable Face Mask")
latest_item.collections << Collection.find_by(name: "Men")
latest_item.collections << Collection.find_by(name: "Women")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1598207951491-255eaf139751?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80")
Photo.create(item_id: latest_item.id, address: "https://images.unsplash.com/photo-1598207950171-53387c37007a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")