# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# hanaa = User.create(name: 'Hanaa', username: 'hanaa', password: 'hello', bio: 'hello')
# steven = User.create(name: 'Steven', username: 'steven', password: 'hello', bio: 'hello')
# cristina = User.create(name: 'Cristina', username: 'cristina', password: 'hello', bio: 'hello')
# carson = User.create(name: 'Carson', username: 'carson', password: 'hello', bio: 'hello')
# helen = User.create(name: 'Helen', username: 'helen', password: 'hello', bio: 'hello')
# graham = User.create(name: 'Graham', username: 'graham', password: 'hello', bio: 'hello')
# arren = User.create(name: 'Arren', username: 'arren', password: 'hello', bio: 'hello')

20.times do
    User.create(
        name: Faker::Name.first_name, 
        username: Faker::Name.first_name,
        password_digest: BCrypt::Password.create('hello'),
        bio: Faker::Hipster.paragraph,
        facebook: 'https://www.facebook.com/hannah.sudoku',
        twitter: 'https://twitter.com/hanaasadoqi',
        linkedin: 'https://www.linkedin.com/in/hanaasadoqi/',
        img: Faker::Avatar.image,
        public: false, 
        firstPreference: ['Photography', 'Theater', 'Music', 'Performance', 'Dance', 'Art'].sample,
        secondPreference: ['Photography', 'Theater', 'Music', 'Performance', 'Dance', 'Art'].sample,
        thirdPreference: ['Photography', 'Theater', 'Music', 'Performance', 'Dance', 'Art'].sample
    )
end 

50.times do 
    Project.create(
        title: Faker::RickAndMorty.location,
        img: ['https://www.w3schools.com/w3images/fjords.jpg', 'https://www.w3schools.com/w3images/nature.jpg', 'https://www.w3schools.com/w3images/lights.jpg', 'https://techcrunch.com/wp-content/uploads/2018/03/gettyimages-705351545.jpg?w=730&crop=1', 'https://demo.phpgang.com/crop-images/demo_files/pool.jpg', 'https://www.reduceimages.com/img/image-after.jpg', 'https://static.addtoany.com/images/dracaena-cinnabari.jpg', 'http://www.everlastingcelebrations.com/wp-content/uploads/2018/09/Top-Ganesh-Chaturthi-Messages-Images-Photos.jpg'].sample, 
        category: ['Photography', 'Theater', 'Music', 'Performance', 'Dance', 'Art'].sample,
        description: Faker::Seinfeld.quote,
        content: Faker::Lorem.paragraph,
        manager_id: Faker::Number.between(1, 20), 
        completed: false
    )
end 

100.times do 
    Role.create(
        title: Faker::Job.position,
        description: Faker::Lorem.sentence,
        project_id: Faker::Number.between(1, 50), 
        filled: false
    )
end 

100.times do 
    Application.create(
        role_id: Faker::Number.between(1, 100),
        collaborator_id: Faker::Number.between(1, 20),
        approve: false, 
        reject: false
    )
end 

['https://www.w3schools.com/w3images/fjords.jpg', 'https://www.w3schools.com/w3images/nature.jpg', 'https://www.w3schools.com/w3images/lights.jpg', 'https://techcrunch.com/wp-content/uploads/2018/03/gettyimages-705351545.jpg?w=730&crop=1', 'https://demo.phpgang.com/crop-images/demo_files/pool.jpg', 'https://www.reduceimages.com/img/image-after.jpg', 'https://static.addtoany.com/images/dracaena-cinnabari.jpg', 'http://www.everlastingcelebrations.com/wp-content/uploads/2018/09/Top-Ganesh-Chaturthi-Messages-Images-Photos.jpg']

# first = Project.create(title: 'hello', img: 'https://www.w3schools.com/w3images/fjords.jpg', description: 'hello', manager_id: 1)
# second = Project.create(title: 'hello', img: 'https://www.w3schools.com/w3images/nature.jpg', description: 'hello', manager_id: 1)
# third = Project.create(title: 'hello', img: 'https://www.w3schools.com/w3images/lights.jpg', description: 'hello', manager_id: 1)
# fourth = Project.create(title: 'hello', img: 'https://techcrunch.com/wp-content/uploads/2018/03/gettyimages-705351545.jpg?w=730&crop=1', description: 'hello', manager_id: 1)
# fifth = Project.create(title: 'hello', img: 'https://demo.phpgang.com/crop-images/demo_files/pool.jpg', description: 'hello', manager_id: 1)
# sixth = Project.create(title: 'hello', img: 'https://www.reduceimages.com/img/image-after.jpg', description: 'hello', manager_id: 1)
# seventh = Project.create(title: 'hello', img: 'https://static.addtoany.com/images/dracaena-cinnabari.jpg', description: 'hello', manager_id: 1)
# eighth = Project.create(title: 'hello', img: 'http://www.everlastingcelebrations.com/wp-content/uploads/2018/09/Top-Ganesh-Chaturthi-Messages-Images-Photos.jpg', description: 'hello', manager_id: 1)

# ninth = Role.create(title: 'hello', project: first)
# tenth = Role.create(title: 'hello', project: first)
# eleventh = Role.create(title: 'hello', project: second)

# Application.create(collaborator_id: Faker::Number.between(1, 20), role: ninth)
# Application.create(collaborator_id: Faker::Number.between(1, 20), role: tenth)
# Application.create(collaborator_id: Faker::Number.between(1, 20), role: eleventh)
# Application.create(collaborator_id: Faker::Number.between(1, 20), role: ninth)
# Application.create(collaborator_id: Faker::Number.between(1, 20), role: ninth)
# Application.create(collaborator_id: Faker::Number.between(1, 20), role: eleventh)
# Application.create(collaborator_id: Faker::Number.between(1, 20), role: tenth)
# Application.create(collaborator_id: Faker::Number.between(1, 20), role: ninth)
# Application.create(collaborator_id: Faker::Number.between(1, 20), role: ninth)
# Application.create(collaborator_id: Faker::Number.between(1, 20), role: tenth)

