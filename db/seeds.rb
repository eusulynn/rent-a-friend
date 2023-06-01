User.create!(first_name: "Marco", last_name: "Ricci", email: "marco@lewagon.com", password: "123456")
User.create!(first_name: "Dimitri", last_name: "Filimonov", email: "dimitri@lewagon.com", password: "123456")

ariola = Friend.create(name: "Ariola Barbatovci", age: 21, gender: "Female", location: "London", price: rand(10..45), language: "English", user_id: 2, description: "Before starting at Le Wagon I studied English at King's university, and decided I wanted to pursue an interest in tech, specifically learning how to code and develop websites!")
ariola.photo.attach(io: File.open('app/assets/images/avatars/Ariola.jpeg'), filename: "Ariola.jpeg", content_type: "image/jpeg")

kris = Friend.create(name: "Kris Chan", age: 29, gender: "Female", location: "Hong Kong", price: rand(10..45), language: "English", user_id: 2, description: "I previously worked in digital marketing and would like to try out web development after I found out I was the one people turn to when there are projects involving a new website. If I was doing it, I would like to be really good at it. And this brings me here :)")
kris.photo.attach(io: File.open('app/assets/images/avatars/Kris.jpeg'), filename: "Kris.jpeg", content_type: "image/jpeg")

louisc = Friend.create(name: "Louis Clermont", age: 32, gender: "Male", location: "France", price: rand(10..45), language: "French", user_id: 2, description: "I'm a student in Business and Finance at Bayes Business School. I just finished an internship of 3 months in a PE fund. I'm currently creating my own startup.")
louisc.photo.attach(io: File.open('app/assets/images/avatars/Louis-C.jpeg'), filename: "Louis-C.jpeg", content_type: "image/jpeg")

olly = Friend.create(name: "Olly Crole", age: 25, gender: "Male", location: "London", price: rand(10..45), language: "English", user_id: 2, description: "A recent graduate of philosophy from The University of Edinburgh. Looking to explore the world of tech and gain web development skills. I would love to eventually use software development in the creative industries and for music equipment.")
olly.photo.attach(io: File.open('app/assets/images/avatars/Olly.jpeg'), filename: "Olly.jpeg", content_type: "image/jpeg")

clara = Friend.create(name: "Clara Dahan", age: 20, gender: "Female", location: "Paris", price: rand(10..45), language: "English", user_id: 2, description: "Studied medicine for a year before deciding to change career paths and wanting to get a more quantitative degree- hoping to learn a lot at le wagon as I currently have no coding skills whatsoever :)")
clara.photo.attach(io: File.open('app/assets/images/avatars/Clara.jpeg'), filename: "Clara.jpeg", content_type: "image/jpeg")

javier = Friend.create(name: "Javier Debén", age: 21, gender: "Male", location: "Spain", price: rand(10..45), language: "Spanish", user_id: 2, description: "Did some courses in Spain about programming (java, javascript, etc). Doing a web development course in Le Wagon to improve my knowledge and get to know more people internationally.")
javier.photo.attach(io: File.open('app/assets/images/avatars/Javier.jpeg'), filename: "Javier.jpeg", content_type: "image/jpeg")

su = Friend.create(name: "Su Lynn Eu", age: 26, gender: "Female", location: "London", price: rand(10..45), language: "English", user_id: 2, description: "New to London, new to coding. Past Experience: Dance, Theatre Scene Shop Builder, Backstage Crew, Cafe Management, Liberal Arts Graduate.")
su.photo.attach(io: File.open('app/assets/images/avatars/Su.jpeg'), filename: "Su.jpeg", content_type: "image/jpeg")

salim = Friend.create(name: "Salim Saadi", age: 35, gender: "Male", location: "London", price: rand(10..45), language: "French", user_id: 2, description: "I have recently moved to London to seek out new challenges and broaden my skill set. As part of this endeavour, I am currently enrolled in web development courses.")
salim.photo.attach(io: File.open('app/assets/images/avatars/Salim.jpeg'), filename: "Salim.jpeg", content_type: "image/jpeg")

pierre = Friend.create(name: "Pierre Robertson", age: 23, gender: "Male", location: "Paris", price: rand(10..45), language: "French", user_id: 2, description: "I want to learn how to code because it is becoming a crucial skill in many industries and seems like a lot of fun. After Le Wagon I will try to move to Australia and start my career there.")
pierre.photo.attach(io: File.open('app/assets/images/avatars/Pierre.jpeg'), filename: "Pierre.jpeg", content_type: "image/jpeg")

sam = Friend.create(name: "Sam Mayhew", age: 21, gender: "Male", location: "London", price: rand(10..45), language: "English", user_id: 2, description: "Philosophy student at the University of York, originally from Kent, based in London, learning to code to open doors and expand my knowledge. Batch 1230 at Le Wagon London and excited for this new adventure.")
sam.photo.attach(io: File.open('app/assets/images/avatars/Sam.jpeg'), filename: "Sam.jpeg", content_type: "image/jpeg")

emilia = Friend.create(name: "Emilia Freitaga", age: 28, gender: "Female", location: "Latvia", price: rand(10..45), language: "Russian", user_id: 2, description: "I had been working in the fashion industry for more than 4 years coordinating manufacture processes in luxury companies in London. However, I have recently decided to change my career path and start coding.")
emilia.photo.attach(io: File.open('app/assets/images/avatars/Emilia.jpeg'), filename: "Emilia.jpeg", content_type: "image/jpeg")

warren = Friend.create(name: "Warren Wisbeach", age: 36, gender: "Male", location: "South Africa", price: rand(10..45), language: "English", user_id: 2, description: "I'm on an exciting journey to change careers and am really looking forward to joining Le Wagon's latest Web Development Bootcamp.")
warren.photo.attach(io: File.open('app/assets/images/avatars/Warren.jpeg'), filename: "Warren.jpeg", content_type: "image/jpeg")

# ebi = Friend.create(name: "Ebitari Alaibe", age: 82, gender: "Male", location: "London", price: rand(10..45), language: "English", user_id: 2, description: "I just want to drink Tequila tbh")
# ebi.photo.attach(io: File.open('app/assets/images/avatars/Ebi.jpeg'), filename: "Ebi.jpeg", content_type: "image/jpeg")

# ife = Friend.create(name: "Ife Odugbesan", age: 32, gender: "Male", location: "London", price: rand(10..45), language: "English", user_id: 2, description: "I'm the front-end wizard of the team. I love to create beautiful and intuitive interfaces.")
# ife.photo.attach(io: File.open('app/assets/images/avatars/Ife.jpeg'), filename: "Ife.jpeg", content_type: "image/jpeg")

# justin = Friend.create(name: "Ling Fung Chan", age: 27, gender: "Male", location: "London", price: rand(10..45), language: "English", user_id: 2, description: "I am Justin from Hong Kong. A Biological Science graduate, former marketer and graphic designer. Love and enjoy coding : )")
# justin.photo.attach(io: File.open('app/assets/images/avatars/Justin.jpeg'), filename: "Justin.jpeg", content_type: "image/jpeg")

# louise = Friend.create(name: "Louise Stone", age: 31, gender: "Female", location: "London", price: rand(10..45), language: "English", user_id: 2, description: "👋 I'm a #1052 batch web dev graduate and currently a TA in the London HQ.")
# louise.photo.attach(io: File.open('app/assets/images/avatars/Louise.jpeg'), filename: "Louise.jpeg", content_type: "image/jpeg")

# zhanna = Friend.create(name: "Zhanna Doronina", age: 28, gender: "Female", location: "London", price: rand(10..45), language: "Russian", user_id: 2, description: "Former Marketing Manager and Freelancer, now a TA and a junior Full-stack Developer. I genuinely enjoy coding, tackling challenges and learning new things on a daily basis. Happy to meet everyone and share this journey into Tech!")
# zhanna.photo.attach(io: File.open('app/assets/images/avatars/Zhanna.jpeg'), filename: "Zhanna.jpeg", content_type: "image/jpeg")

# tom = Friend.create(name: "Tom Duchambon", age: 29, gender: "Male", location: "Paris", price: rand(10..45), language: "French", user_id: 2, description: "Former Marketing Manager and Freelancer, now a TA and a junior Full-stack Developer. I genuinely enjoy coding, tackling challenges and learning new things on a daily basis. Happy to meet everyone and share this journey into Tech!")
# tom.photo.attach(io: File.open('app/assets/images/avatars/Tom.jpeg'), filename: "Tom.jpeg", content_type: "image/jpeg")

# louism = Friend.create(name: "Louis Mellac", age: 23, gender: "Male", location: "Paris", price: rand(10..45), language: "French", user_id: 2, description: "I've been wanting to take a more intensive practical computer-science-y course for a while. I have very little experience with web dev in particular, and wanted to add it to my toolset coming out of my Bachelor's.")
# louism.photo.attach(io: File.open('app/assets/images/avatars/Louis-M.jpeg'), filename: "Louis_M.jpeg", content_type: "image/jpeg")

saroj = Friend.create(name: "Saroj Pun", age: 38, gender: "Male", location: "Kathmandu", price: rand(10..45), language: "English", user_id: 2, description: "I want to be a creative and technically competent software developer that can solve challenging, real life problems using both new and existing technologies. After the bootcamp, I plan to work as a software developer.")
saroj.photo.attach(io: File.open('app/assets/images/avatars/Saroj.jpeg'), filename: "Saroj.jpeg", content_type: "image/jpeg")

Booking.create!(user_id: 1, friend_id: 7, start_date: "2023-05-29", end_date: "2023-05-31")
Booking.create!(user_id: 1, friend_id: 5, start_date: "2023-05-29", end_date: "2023-05-31")

puts "Finished seeding!"
