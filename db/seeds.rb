User.create!(first_name: "Marco", last_name: "Ricci", email: "marco@lewagon.com", password: "123456")
User.create!(first_name: "Dimitri", last_name: "Filimonov", email: "dimitri@lewagon.com", password: "123456")

ariola = Friend.create(name: "Ariola Barbatovci", age: 21, gender: "Female", location: "London", price: rand(10..45), language: "English", user_id: 2, description: "Before starting at Le Wagon I studied English at King's university, and decided I wanted to pursue an interest in tech, specifically learning how to code and develop websites!")
ariola.photo.attach(io: File.open('app/assets/images/avatars/Ariola.jpeg'), filename: "Ariola.jpeg", content_type: "image/jpeg")

kris = Friend.create(name: "Kris Chan", age: 29, gender: "Female", location: "Hong Kong", price: rand(10..45), language: "English", user_id: 2, description: "I previously worked in digital marketing and would like to try out web development after I found out I was the one people turn to when there are projects involving a new website. If I was doing it, I would like to be really good at it. And this brings me here :)")
kris.photo.attach(io: File.open('app/assets/images/avatars/Kris.jpeg'), filename: "Kris.jpeg", content_type: "image/jpeg")

louisc = Friend.create(name: "Louis Clermont", age: 32, gender: "Male", location: "London", price: rand(10..45), language: "French", user_id: 2, description: "I'm a student in Business and Finance at Bayes Business School. I just finished an internship of 3 months in a PE fund. I'm currently creating my own startup.")
louisc.photo.attach(io: File.open('app/assets/images/avatars/Louis-C.jpeg'), filename: "Louis-C.jpeg", content_type: "image/jpeg")

olly = Friend.create(name: "Olly Crole", age: 25, gender: "Male", location: "London", price: rand(10..45), language: "English", user_id: 2, description: "A recent graduate of philosophy from The University of Edinburgh. Looking to explore the world of tech and gain web development skills. I would love to eventually use software development in the creative industries and for music equipment.")
olly.photo.attach(io: File.open('app/assets/images/avatars/Olly.jpeg'), filename: "Olly.jpeg", content_type: "image/jpeg")

clara = Friend.create(name: "Clara Dahan", age: 20, gender: "Female", location: "Paris", price: rand(10..45), language: "English", user_id: 2, description: "Studied medicine for a year before deciding to change career paths and wanting to get a more quantitative degree- hoping to learn a lot at le wagon as I currently have no coding skills whatsoever :)")
clara.photo.attach(io: File.open('app/assets/images/avatars/Clara.jpeg'), filename: "Clara.jpeg", content_type: "image/jpeg")

javier = Friend.create(name: "Javier Debén", age: 21, gender: "Male", location: "London", price: rand(10..45), language: "Spanish", user_id: 2, description: "Did some courses in Spain about programming (java, javascript, etc). Doing a web development course in Le Wagon to improve my knowledge and get to know more people internationally.")
javier.photo.attach(io: File.open('app/assets/images/avatars/Javier.jpeg'), filename: "Javier.jpeg", content_type: "image/jpeg")

su = Friend.create(name: "Su Lynn Eu", age: 26, gender: "Female", location: "London", price: rand(10..45), language: "English", user_id: 2, description: "New to London, new to coding. Past Experience: Dance, Theatre Scene Shop Builder, Backstage Crew, Cafe Management, Liberal Arts Graduate.")
su.photo.attach(io: File.open('app/assets/images/avatars/Su.jpeg'), filename: "Su.jpeg", content_type: "image/jpeg")

Booking.create!(user_id: 1, friend_id: 7, start_date: "2023-05-29", end_date: "2023-05-31")
Booking.create!(user_id: 1, friend_id: 5, start_date: "2023-05-29", end_date: "2023-05-31")
