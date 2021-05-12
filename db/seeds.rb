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
           # https://unsplash.com/photos/gCeCpP15V1o
           # https://unsplash.com/photos/rtR9um-W24E
           # https://unsplash.com/photos/FeUC_FpHLJA
Item.find_by(name: "Urban Explorer Sweatshirt").collections << Collection.find_by(name: "Men")

Item.create(name: "Black Tube Dress",
           description: "A sleek black dress",
           price: 69.99,
           popularity: 50,
           startsellingdate: 1.year.ago)
           # https://unsplash.com/photos/kOnPBfdMbII
Item.find_by(name: "Black Tube Dress").collections << Collection.find_by(name: "Women")
           
Item.create(name: "Long Sleeve Shirt",
           description: "A comfortable long sleeve shirt",
           price: 29.99,
           popularity: 80,
           startsellingdate: 4.months.ago)
           # https://unsplash.com/photos/RUWzWthQ-SA
Item.find_by(name: "Long Sleeve Shirt").collections << Collection.find_by(name: "Women")

Item.create(name: "Short Sleeve T-Shirt",
           description: "A comfortable t-shirt featuring a hand skeleton print",
           price: 29.99,
           popularity: 90,
           startsellingdate: 2.weeks.ago)
           # https://unsplash.com/photos/1yl3jzKoKXg
           # https://unsplash.com/photos/TT-ROxWj9nA
           # https://unsplash.com/photos/WQR_1ORmg2I
           # https://unsplash.com/photos/wzRKn-AjKf4 (Male)
Item.find_by(name: "Short Sleeve T-Shirt").collections << Collection.find_by(name: "Men")
Item.find_by(name: "Short Sleeve T-Shirt").collections << Collection.find_by(name: "Women")

Item.create(name: "Made Wild T-Shirt",
           description: "A t-shirt for those who are truly made wild",
           price: 29.99,
           popularity: 40,
           startsellingdate: 5.months.ago)
           # https://unsplash.com/photos/HBGUsKKTxdU
           # https://unsplash.com/photos/DvIJ7h5p_J8
Item.find_by(name: "Made Wild T-Shirt").collections << Collection.find_by(name: "Men")

Item.create(name: "Silhouette Hoodie",
           description: "A comfortable and warm hoodie that turns you into a silhouette. Seriously.",
           price: 99.99,
           popularity: 69,
           startsellingdate: 1.week.ago)
           # https://unsplash.com/photos/t3EsOtf0QVc
Item.find_by(name: "Silhouette Hoodie").collections << Collection.find_by(name: "Men")
Item.find_by(name: "Silhouette Hoodie").collections << Collection.find_by(name: "Women")

Item.create(name: "Spartan T-Shirt",
           description: "An encouraging t-shirt, in dark grey",
           price: 29.99,
           popularity: 41,
           startsellingdate: 7.weeks.ago)
           # https://unsplash.com/photos/KrHNHoRLwmw
           # https://unsplash.com/photos/cUycI0WY3dI (navy
Item.find_by(name: "Spartan T-Shirt").collections << Collection.find_by(name: "Men")
           
Item.create(name: "Baseball Cap",
           description: "A stylish hat for your head. In black, of course.",
           price: 19.99,
           popularity: 55,
           startsellingdate: 5.months.ago)
           # https://unsplash.com/photos/flFI_7Rs6Ik
Item.find_by(name: "Baseball Cap").collections << Collection.find_by(name: "Men")
Item.find_by(name: "Baseball Cap").collections << Collection.find_by(name: "Women") 
           
Item.create(name: "Beanie",
           description: "Keep your head warm with this comfortable beanie",
           price: 19.99,
           popularity: 70,
           startsellingdate: 5.weeks.ago)
           # https://unsplash.com/photos/yZ9srtbBbKE
           # https://unsplash.com/photos/A1WqCbYGdrA
Item.find_by(name: "Beanie").collections << Collection.find_by(name: "Men")
Item.find_by(name: "Beanie").collections << Collection.find_by(name: "Women") 

Item.create(name: "Kids Vest",
           description: "It's comfortable. It's fluffy. It's perfect.",
           price: 39.99,
           popularity: 44,
           startsellingdate: 1.year.ago)
           # https://unsplash.com/photos/OWi1sIWiCAI
Item.find_by(name: "Kids Vest").collections << Collection.find_by(name: "Kids")

Item.create(name: "Kids Shirt",
           description: "It may have other colours in it, but we'll let it slide.",
           price: 29.99,
           popularity: 50,
           startsellingdate: 2.months.ago)
           # https://unsplash.com/photos/fwJMG9zm3dI
Item.find_by(name: "Kids Shirt").collections << Collection.find_by(name: "Kids")

Item.create(name: "Future Leader Kids T-Shirt",
           description: "Have high ambitions for your child? This t-shirt will be perfect.",
           price: 19.99,
           popularity: 46,
           startsellingdate: 1.month.ago)
           # https://unsplash.com/photos/0pB01U2NDCQ
Item.find_by(name: "Future Leader Kids T-Shirt").collections << Collection.find_by(name: "Kids")

Item.create(name: "Washable Face Mask",
           description: "Stay safe and protect others with this face mask. In black, of course.",
           price: 9.99,
           popularity: 88,
           startsellingdate: 1.year.ago)         
           # https://unsplash.com/photos/EJWaKVPB6iI
           # https://unsplash.com/photos/cWUQBCLhpbw
Item.find_by(name: "Washable Face Mask").collections << Collection.find_by(name: "Men")
Item.find_by(name: "Washable Face Mask").collections << Collection.find_by(name: "Women")