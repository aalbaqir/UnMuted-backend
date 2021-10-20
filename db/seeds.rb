# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding"

Comment.destroy_all
Profile.destroy_all
User.destroy_all  



puts "Seeding Users"
user1 = User.create(username:"Don Lemon", password:"password")
user2 = User.create(username:"Liz Lemon", password:"password")
user3 = User.create(username:"MichealChe", password:"password")
user4 = User.create(username: "Trevor Noah", password:"password")
user5 = User.create(username:"Aidah", password:"password")


puts "Seeding Comments"
comment1 = Comment.create(likes: 5, entry: "Personal Favorite", user_id: user1.id)
comment2 = Comment.create(likes: 3, entry: "Could Live Without It, but not bad", user_id: user2.id)
comment3 = Comment.create(likes: 1, entry: "Highly Recommend...to my WORST ENEMY", user_id: user3.id)
comment4 = Comment.create(likes: 5, entry: "Highly Recommend", user_id: user3.id)
comment5 = Comment.create(likes: 3, entry: "Could Live Without", user_id: user3.id)
comment6 = Comment.create(likes: 3, entry: "Not bad", user_id: user3.id)

puts "Seeding News Articles"
   


puts "Seeding Profiles"

profile1 = Profile.create(picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPwPjrykGGw5rvxK-XL_5zA0GYC8lCXbKyvg&usqp=CAU", name: "Mr. Lemon", email: "DonTheDon@gmail.com", country: "USA",member_since: "January 1,2000", user_id: user1.id)
profile2 = Profile.create(picture: "https://tvline.com/wp-content/uploads/2020/07/30-rock-reunion-liz-tina-fey.png", name: "Ms Lemon", email: "LizLemon@gmail.com" , country: "30 Rock", member_since: "June 1, 2019", user_id: user2.id)
profile3 = Profile.create(picture: "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-760w,f_auto,q_auto:best/newscms/2021_05/3446890/210202-michael-che-al-0813.jpg",name: "Micheal" ,email: "CheButterDreams@gmail.com" , country: "Canada", member_since:"July 1, 2020" ,user_id:user3.id)
profile4 = Profile.create(picture: "https://comedycentral.mtvnimages.com/press_images/dailyshow/Trevor-Grey.jpg?height=400",name: "Trev",email: "IfYouNoahSomethingYouNoahSomething@gmail.com", country: "South Africa", member_since: "Japril 1, 2018", user_id: user4.id)

puts "Done Seeding"
