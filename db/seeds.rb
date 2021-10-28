# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding"

Comment.destroy_all
# Profile.destroy_all
User.destroy_all  
NewsArticle.destroy_all



puts "Seeding Users"
user1 = User.create(username:"Don Lemon", password:"password",picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPwPjrykGGw5rvxK-XL_5zA0GYC8lCXbKyvg&usqp=CAU", name: "Mr. Lemon", email: "DonTheDon@gmail.com", country: "USA",member_since: "January 1,2000")
user2 = User.create(username:"Liz Lemon", password:"password",picture: "https://tvline.com/wp-content/uploads/2020/07/30-rock-reunion-liz-tina-fey.png", name: "Ms Lemon", email: "LizLemon@gmail.com" , country: "30 Rock", member_since: "June 1, 2019")
user3 = User.create(username:"MichealChe", password:"password", picture: "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-760w,f_auto,q_auto:best/newscms/2021_05/3446890/210202-michael-che-al-0813.jpg",name: "Micheal" ,email: "CheButterDreams@gmail.com" , country: "Canada", member_since:"July 1, 2020")
user4 = User.create(username: "Trevor Noah", password:"password",picture: "https://comedycentral.mtvnimages.com/press_images/dailyshow/Trevor-Grey.jpg?height=400",name: "Trev",email: "IfYouNoahSomethingYouNoahSomething@gmail.com", country: "South Africa", member_since: "Japril 1, 2018")
user5 = User.create(username:"Aidah", password:"password")



puts "Seeding News Articles"


article1 = NewsArticle.create!(title: "Mars sounds: NASA's Perseverance rover lets us hear Martian wind - USA TODAY", picture: "https://www.gannett-cdn.com/presto/2021/02/20/USAT/4afb8ae3-be58-40c5-9678-e5b1e34b3dcd-1-PIA24428-High-Resolution_Still_Image_of_Perseverances_Landing.png?auto=webp&crop=2047,1152,x0,y189&format=pjpg&width=1200", author: "Jordan Mendoza, USA TODAY", date: "2021-10-24T18:42:28Z", source: "https://www.usatoday.com/story/tech/2021/10/24/mars-sounds-perseverance-rover-nasa/6165940001/")
article2 = NewsArticle.create!(title: "Osun APC Congress: Aregbesola loses out to Oyetola", author: "", date: "2021-10-24T18:22:30Z", source: "P.M. News")
article3 = NewsArticle.create!(title: "Cross River PDP receives over 5,000 APC returnees from one Senatorial district - Vanguard", picture: "https://cdn.vanguardngr.com/wp-content/uploads/2021/10/PDP-1.jpg", author: "", date: "", source: "")
article4 = NewsArticle.create!(title: "Saudi Arabia’s newest attraction: roller coasters on an oil rig - The Real Deal", picture: "https://therealdeal.com/wp-content/uploads/2021/10/feat_WKND_Oil-Rig_10.24.21.png", author: "", date: "", source: "")
article5 = NewsArticle.create!(title: "Manchester United 0-5 Liverpool: Player Ratings - Sports Illustrated", picture: "https://www.si.com/.image/t_share/MTg0Nzk0MjE0NjM3MjQ5NjU2/sipa_35731247.jpg", author: "", date: "", source: "")
article6 = NewsArticle.create!(title: "COVID-19: N.B. reporting 108th death, 51 new cases - Globalnews.ca", picture: "https://globalnews.ca/wp-content/uploads/2021/10/CP19338688-e1634603977185.jpg?quality=85&strip=all&w=720&h=379&crop=1", author: "", date: "", source: "")
article7 = NewsArticle.create!(title: "BepiColombo completes first Mercury flyby, science provides insight into planet's unique environmen", picture: "https://www.nasaspaceflight.com/wp-content/uploads/2021/10/BepiColombo_at_Mercury-scaled.jpg", author: "", date: "", source: "")
article8 = NewsArticle.create!(title: "https://www.digitaltrends.com/news/hubble-arp-86-peculiar-galaxies/", picture: "https://icdn.digitaltrends.com/image/digitaltrends/hubble-spies-a-pair-of-squabbling-galaxies.jpg", author: "", date: "", source: "")
article9 = NewsArticle.create!(title: "FG not telling Nigerians truth about state of nation ― Methodist Bishop - NIGERIAN TRIBUNE", picture: "https://i.eurosport.com/2021/10/24/3242554-66368348-2560-1440.jpg", author: "", date: "", source: "")
article10 = NewsArticle.create!(title: "Rivers not fighting FG over tax collection, says Wike", picture: "https://tribuneonlineng.com/wp-content/uploads/2021/10/buhari-osinbajo5.jpg", author: "", date: "", source: "")
   


puts "Seeding Comments"
comment1 = Comment.create(likes: 5, entry: "Personal Favorite", user_id: user1.id, news_article_id: article1.id)
comment2 = Comment.create(likes: 3, entry: "Could Live Without It, but not bad", user_id: user2.id, news_article_id: article1.id)
comment3 = Comment.create(likes: 1, entry: "Highly Recommend...to my WORST ENEMY", user_id: user3.id, news_article_id: article1.id)
comment4 = Comment.create(likes: 5, entry: "Highly Recommend", user_id: user3.id, news_article_id: article2.id)
comment5 = Comment.create(likes: 3, entry: "Could Live Without", user_id: user3.id, news_article_id: article2.id)
comment6 = Comment.create(likes: 3, entry: "Not bad", user_id: user3.id, news_article_id: article2.id)


puts "Done Seeding"



# {
#     status: "ok",
#     totalResults: 38,
#     articles: [
#     {
#     source: {
#     id: "usa-today",
#     name: "USA Today"
#     },
#     author: "Jordan Mendoza, USA TODAY",
#     title: "Mars sounds: NASA's Perseverance rover lets us hear Martian wind - USA TODAY",
#     description: "During its historic mission on the red planet, NASA's Perseverance rover has sent to Earth the sounds of wind on Mars. Listen to them here.",
#     url: "https://www.usatoday.com/story/tech/2021/10/24/mars-sounds-perseverance-rover-nasa/6165940001/",
#     urlToImage: "https://www.gannett-cdn.com/presto/2021/02/20/USAT/4afb8ae3-be58-40c5-9678-e5b1e34b3dcd-1-PIA24428-High-Resolution_Still_Image_of_Perseverances_Landing.png?auto=webp&crop=2047,1152,x0,y189&format=pjpg&width=1200",
#     publishedAt: "2021-10-24T18:42:28Z",
#     content: "Less than two months after collecting its first sample of rocks from Mars, the Perseverance rover is collecting another incredible sample from the red planet: sound. The rover, which first arrived o… [+2130 chars]"
#     },
#     {
#     source: {
#     id: null,
#     name: "P.M. News"
#     },
#     author: null,
#     title: "Osun APC Congress: Aregbesola loses out to Oyetola - P.M. News",
#     description: "Ex. Gov Aregbesola lost out in the battle to control Osun APC as Gboyega Famodun led executives loyal to Gov. Oyetola was affirmed on Sunday.",
#     url: "https://pmnewsnigeria.com/2021/10/24/osun-apc-congress-aregbesola-loses-out-to-oyetola/",
#     urlToImage: "https://cdn.pmnewsnigeria.com/wp-content/uploads/2021/08/Rauf-Aregbesola-and-Oyetola.jpg",
#     publishedAt: "2021-10-24T18:22:30Z",
#     content: "Former Governor Rauf Aregbesola seemed to have lost out in the battle to control Osun chapter of All Progressives Congress, APC as the Gboyega Famodun led executives elected at the state congress of … [+2530 chars]"
#     },
#     {
#     source: {
#     id: null,
#     name: "Vanguard"
#     },
#     author: null,
#     title: "Cross River PDP receives over 5,000 APC returnees from one Senatorial district - Vanguard",
#     description: "Mr Venatius Ikem, Chairman of the People’s Democratic Party (PDP) in Cross River on Sunday in Ogoja received over 5,000 returnees from APC).",
#     url: "https://www.vanguardngr.com/2021/10/cross-river-pdp-receives-over-5000-apc-returnees-from-one-senatorial-district/",
#     urlToImage: "https://cdn.vanguardngr.com/wp-content/uploads/2021/10/PDP-1.jpg",
#     publishedAt: "2021-10-24T18:14:02Z",
#     content: "Mr Venatius Ikem, Chairman of the Peoples Democratic Party (PDP) in Cross River on Sunday in Ogoja received over 5,000 returnees from the All Progressives Congress (APC). The event, held at Governme… [+2103 chars]"
#     },
#     {
#     source: {
#     id: null,
#     name: "The Real Deal"
#     },
#     author: "steven-dilakiantherealdeal-com",
#     title: "Saudi Arabia’s newest attraction: roller coasters on an oil rig - The Real Deal",
#     description: "Oil-dependent Saudi Arabia is taking literally the concept of economic diversification with its latest project in the Arabian Gulf.",
#     url: "https://therealdeal.com/2021/10/24/saudi-arabias-newest-attraction-roller-coasters-on-an-oil-rig/",
#     urlToImage: "https://therealdeal.com/wp-content/uploads/2021/10/feat_WKND_Oil-Rig_10.24.21.png",
#     publishedAt: "2021-10-24T18:00:00Z",
#     content: "Located in the Arabian Gulf, “THE RIG” will be the worlds first tourism destination inspired by offshore oil platforms. (Saudi Arabia’s Public Investment Fund) Oil-dependent Saudi Arabia is taking l… [+1668 chars]"
#     },
#     {
#     source: {
#     id: null,
#     name: "Sports Illustrated"
#     },
#     author: "Priyasha Bhowmik",
#     title: "Manchester United 0-5 Liverpool: Player Ratings - Sports Illustrated",
#     description: "Liverpool were back at Old Trafford tonight, for the first North West Derby of the season.",
#     url: "https://www.si.com/soccer/liverpool/match-coverage/manchester-united-v-liverpool-player-rating",
#     urlToImage: "https://www.si.com/.image/t_share/MTg0Nzk0MjE0NjM3MjQ5NjU2/sipa_35731247.jpg",
#     publishedAt: "2021-10-24T17:37:19Z",
#     content: "Manchester United vs Liverpool, one can hardly name a bigger fixture in English football. Two most successful clubs in England locking horns, the rivalry between the two clubs is backed by the rival… [+3754 chars]"
#     },
#     {
#     source: {
#     id: null,
#     name: "Global News"
#     },
#     author: "Rebecca Lau",
#     title: "COVID-19: N.B. reporting 108th death, 51 new cases - Globalnews.ca",
#     description: "New Brunswick reported its 108th COVID-19-related death Sunday, as well as 51 new cases and 112 recoveries, bringing the province's active case count to 627.",
#     url: "https://globalnews.ca/news/8313736/nb-covid-19-update-oct-24-2021/",
#     urlToImage: "https://globalnews.ca/wp-content/uploads/2021/10/CP19338688-e1634603977185.jpg?quality=85&strip=all&w=720&h=379&crop=1",
#     publishedAt: "2021-10-24T17:35:08Z",
#     content: "New Brunswick reported its 108th COVID-19-related death, as well as 51 new cases on Sunday. According to Public Health, the latest death involved a person in their 80s in Zone 1 (Moncton region). T… [+3144 chars]"
#     },
#     {
#     source: {
#     id: null,
#     name: "NASASpaceflight.com"
#     },
#     author: "Haygen Warren",
#     title: "BepiColombo completes first Mercury flyby, science provides insight into planet's unique environment - NASASpaceFlight.com - NASASpaceflight.com",
#     description: "On October 1, 2021, the joint European Space Agency (ESA) and Japan Aerospace Exploration Agency…",
#     url: "https://www.nasaspaceflight.com/2021/10/bepicolombo-first-mercury-flyby/",
#     urlToImage: "https://www.nasaspaceflight.com/wp-content/uploads/2021/10/BepiColombo_at_Mercury-scaled.jpg",
#     publishedAt: "2021-10-24T17:22:02Z",
#     content: "On October 1, 2021, the joint European Space Agency (ESA) and Japan Aerospace Exploration Agency (JAXA) BepiColombo spacecraft successfully performed its first flyby of the solar system’s innermost p… [+6907 chars]"
#     },
#     {
#     source: {
#     id: null,
#     name: "Digital Trends"
#     },
#     author: "Georgina Torbet",
#     title: "Hubble Space Telescope captures a peculiar pair of galaxies - Digital Trends",
#     description: "This week's image from the Hubble Space Telescope shows an odd couple: One large spiral galaxy and its diminutive companion.",
#     url: "https://www.digitaltrends.com/news/hubble-arp-86-peculiar-galaxies/",
#     urlToImage: "https://icdn.digitaltrends.com/image/digitaltrends/hubble-spies-a-pair-of-squabbling-galaxies.jpg",
#     publishedAt: "2021-10-24T16:54:13Z",
#     content: "This week’s image from the Hubble Space Telescope shows an odd couple: One large spiral galaxy and its diminutive companion. This pair of interacting galaxies is known collectively as Arp 86. The la… [+2437 chars]"
#     },
#     {
#     source: {
#     id: null,
#     name: "Eurosport.co.uk"
#     },
#     author: "Eurosport",
#     title: "La Liga - David Alaba scorcher inspires Real Madrid to hard-fought Clasico victory over Barcelona at Camp Nou - Eurosport.co.uk",
#     description: "David Alaba's unstoppable drive just after the half-hour mark inspired Real Madrid to a fourth successive El Clasico victory over Barcelona.",
#     url: "https://www.eurosport.co.uk/football/liga/2021-2022/el-clasico-barcelona-v-real-madrid-live-la-liga-updates_sto8595989/story.shtml",
#     urlToImage: "https://i.eurosport.com/2021/10/24/3242554-66368348-2560-1440.jpg",
#     publishedAt: "2021-10-24T16:52:00Z",
#     content: "David Alaba of Real Madrid celebrates after scoring his sides first goal during the La Liga Santander match between FC Barcelona and Real Madrid CF at Camp Nou Image credit: Getty Images"
#     },
#     {
#     source: {
#     id: null,
#     name: "Tribuneonlineng.com"
#     },
#     author: "Tribune Online",
#     title: "FG not telling Nigerians truth about state of nation ― Methodist Bishop - NIGERIAN TRIBUNE",
#     description: "The Bishop of Methodist Church Nigeria, Diocese of Remo Central in Ogun State, Rt. Rev. Olu Akinola, has posited that the Federal Government is not telling Nigerians the truth about the state of the nation.The clergyman who spoke during his sermon at",
#     url: "https://tribuneonlineng.com/fg-not-telling-nigerians-truth-about-state-of-nation-―-methodist-bishop/",
#     urlToImage: "https://tribuneonlineng.com/wp-content/uploads/2021/10/buhari-osinbajo5.jpg",
#     publishedAt: "2021-10-24T16:45:31Z",
#     content: "The Bishop of Methodist Church Nigeria, Diocese of Remo Central in Ogun State, Rt. Rev. Olu Akinola, has posited that the Federal Government is not telling Nigerians the truth about the state of the … [+2908 chars]"
#     },
#     {
#     source: {
#     id: null,
#     name: "Vanguard"
#     },
#     author: null,
#     title: "Rivers not fighting FG over tax collection, says Wike - Vanguard",
#     description: "Governor Nyesom Wike of Rivers says the state is not fighting the Federal Government or any of its agencies over collection of Value Added Tax",
#     url: "https://www.vanguardngr.com/2021/10/rivers-not-fighting-fg-over-tax-collection-says-wike/",
#     urlToImage: "https://cdn.vanguardngr.com/wp-content/uploads/2021/03/Hwn6tnwi.jpeg",
#     publishedAt: "2021-10-24T16:44:49Z",
#     content: "Governor Nyesom Wike of Rivers says the state is not fighting the Federal Government or any of its agencies over collection of Value Added Tax (VAT) as being insinuated in some quarters. Speaking on… [+1800 chars]"
#     },
#     {
#     source: {
#     id: "google-news",
#     name: "Google News"
#     },
#     author: null,
#     title: "Body Of Man Discovered In Wooded Area Near Mayfield, NB - The Streetjournal",
#     description: null,
#     url: "https://news.google.com/__i/rss/rd/articles/CBMiVWh0dHBzOi8vdGhlc3RyZWV0am91cm5hbC5vcmcvYm9keS1vZi1tYW4tZGlzY292ZXJlZC1pbi13b29kZWQtYXJlYS1uZWFyLW1heWZpZWxkLW4tYi_SAQA?oc=5",
#     urlToImage: null,
#     publishedAt: "2021-10-24T16:38:06Z",
#     content: null
#     },
#     {
#     source: {
#     id: null,
#     name: "Global News"
#     },
#     author: "willreimer",
#     title: "Winnipeg traffic rerouted as crews tackle Main Street fire - Globalnews.ca",
#     description: "A section of Main Street near Winnipeg's downtown area has been closed in both directions as crews battle a working fire in the 800 block.",
#     url: "https://globalnews.ca/news/8312388/main-street-detour-fire-winnipeg/",
#     urlToImage: "https://globalnews.ca/wp-content/uploads/2021/10/Main-St-Fire-1.jpg?quality=85&strip=all&w=720&h=379&crop=1",
#     publishedAt: "2021-10-24T16:23:19Z",
#     content: "A section of Main Street near Winnipeg’s downtown has been closed in both directions as crews battle a fire in the 800 block. The City says Main Street between Jarvis Avenue and Selkirk Avenue was c… [+1413 chars]"
#     },
#     {
#     source: {
#     id: null,
#     name: "Vanguard"
#     },
#     author: null,
#     title: "COVID-19: Pfizer vaccine benefits outweigh risks in children age 5-11, says USFDA - Vanguard",
#     description: "Scientists at the US Food and Drug Administration, FDA, have said that the likely benefits of giving the Pfizer-BioNTech Covid-19 vaccine to 5 - 11-year-olds clearly outweigh the risks of rare cases of heart inflammation",
#     url: "https://www.vanguardngr.com/2021/10/covid-19-pfizer-vaccine-benefits-outweigh-risks-in-children-age-5-11-says-usfda/",
#     urlToImage: "https://cdn.vanguardngr.com/wp-content/uploads/2021/02/pfizer-vaccines.jpg",
#     publishedAt: "2021-10-24T16:23:02Z",
#     content: "By Sola Ogundipe  Scientists at the US Food and Drug Administration, FDA, have said that the likely benefits of giving the Pfizer-BioNTech Covid-19 vaccine to 5 – 11-year-olds clearly outweigh the r… [+2800 chars]"
#     },
#     {
#     source: {
#     id: null,
#     name: "YouTube"
#     },
#     author: null,
#     title: "Journalists Hangout | Nigerians Make 34 Million Distress Calls Between January And August - TVC News Nigeria",
#     description: "Between January and August of 2021, some 34 million emergency calls were made by Nigerians, according to the Executive Vice Chairman of the Nigerian Communic...",
#     url: "https://www.youtube.com/watch?v=MQ0gY4epYLA",
#     urlToImage: "https://i.ytimg.com/vi/MQ0gY4epYLA/maxresdefault.jpg",
#     publishedAt: "2021-10-24T16:20:33Z",
#     content: null
#     },
#     {
#     source: {
#     id: null,
#     name: "Vanguard"
#     },
#     author: null,
#     title: "Oyo jailbreak: We’ll recapture all escapee inmates, Aregbesola vows - Vanguard",
#     description: "…warns residents on assisting escapee inmates …says 392 inmates still at large …as Wakili, Shodipe’s whereabouts unknown By Adeola Badru The Minister of Interior, Ogbeni",
#     url: "https://www.vanguardngr.com/2021/10/oyo-jailbreak-well-recapture-all-escapee-inmates-aregbesola-vows/",
#     urlToImage: "https://cdn.vanguardngr.com/wp-content/uploads/2021/10/F935C3FE-ADFB-4502-8E29-D7CE501EE38F.jpeg",
#     publishedAt: "2021-10-24T16:04:40Z",
#     content: "warns residents on assisting escapee inmates says 392 inmates still at large as Wakili, Shodipe’s whereabouts unknown The Minister of Interior, Ogbeni Rauf Aregbesola, Sunday, vowed to pursue and … [+5451 chars]"
#     },
#     {
#     source: {
#     id: null,
#     name: "YouTube"
#     },
#     author: null,
#     title: "CAF Champions League Update, Salisu's Return To Super Eagles + More | Channels Sports Sunday - Channels Television",
#     description: "Don't forget to subscribe: https://bit.ly/2Hb8hjxWatch more interesting videos: https://bit.ly/34ogCawFollow Channels Television On: Facebook: https://www.f...",
#     url: "https://www.youtube.com/watch?v=RIXj9bNlDyU",
#     urlToImage: "https://i.ytimg.com/vi/RIXj9bNlDyU/maxresdefault.jpg",
#     publishedAt: "2021-10-24T15:40:32Z",
#     content: null
#     },
#     {
#     source: {
#     id: null,
#     name: "Daily Post Nigeria"
#     },
#     author: "Emmanuel Uzodinma",
#     title: "Anambra: IPOB preparing ground for state of emergency – CSOs condemn sit-at-home - Daily Post Nigeria",
#     description: "A coalition of civil society organizations in the South-East has urged the Indigenous People of Biafra, IPOB, to immediately withdraw the sit-at-home order it issued ahead of the Anambra State governorship election. The election, scheduled for November 6, is …",
#     url: "https://dailypost.ng/2021/10/24/anambra-ipob-preparing-ground-for-state-of-emergency-csos-condemn-sit-at-home/",
#     urlToImage: "https://dailypost.ng/wp-content/uploads/2021/10/IMG_20211024_152320_453-scaled.jpg",
#     publishedAt: "2021-10-24T15:11:15Z",
#     content: "A coalition of civil society organizations in the South-East has urged the Indigenous People of Biafra, IPOB, to immediately withdraw the sit-at-home order it issued ahead of the Anambra State govern… [+1230 chars]"
#     },
#     {
#     source: {
#     id: null,
#     name: "AllAfrica - Top Africa News"
#     },
#     author: null,
#     title: "Nigeria: Some Young Nigerians Say Heavy Drinking Is Fun - Controls Must Keep Pace With Culture - AllAfrica.com",
#     description: "Analysis - Alcohol consumption has a long history in Nigeria, especially in the southern region, where it was not forbidden by religion. In the past, only adult men were culturally allowed to drink. It was taboo for young people to drink alcohol because it wa…",
#     url: "https://allafrica.com/stories/202110240040.html",
#     urlToImage: "https://cdn08.allafrica.com/static/images/structure/aa-logo-rgba-no-text-square.png",
#     publishedAt: "2021-10-24T14:50:23Z",
#     content: "Alcohol consumption has a long history in Nigeria, especially in the southern region, where it was not forbidden by religion. In the past, only adult men were culturally allowed to drink. It was tabo… [+6093 chars]"
#     },
#     {
#     source: {
#     id: null,
#     name: "Dailytrust.com"
#     },
#     author: null,
#     title: "Chrisland School reacts to issue involving Mercy Johnson's child - Daily Trust",
#     description: "Chrisland School has reacted to the issue involving one of the children of Mercy Johnson, a Nollywood actress.",
#     url: "https://dailytrust.com/chrisland-school-reacts-to-issue-involving-mercy-johnsons-child",
#     urlToImage: "https://cms.dailytrust.com.ng/wp-content/uploads/2021/10/Chrisland-School.jpg",
#     publishedAt: "2021-10-24T14:35:09Z",
#     content: "Chrisland School has reacted to the issue involving one of the children of Mercy Johnson, a Nollywood actress. Last week, the actress had taken to social media to accuse her daughter’s teacher of bu… [+1548 chars]"
#     }
#     ]
#     }