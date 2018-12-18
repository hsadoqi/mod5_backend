# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hanaa = User.create(name: 'Hanaa', username: 'hanaa', password: 'hello', bio: 'hello')
steven = User.create(name: 'Steven', username: 'steven', password: 'hello', bio: 'hello')
cristina = User.create(name: 'Cristina', username: 'cristina', password: 'hello', bio: 'hello')
carson = User.create(name: 'Carson', username: 'carson', password: 'hello', bio: 'hello')
helen = User.create(name: 'Helen', username: 'helen', password: 'hello', bio: 'hello')
graham = User.create(name: 'Graham', username: 'graham', password: 'hello', bio: 'hello')
arren = User.create(name: 'Arren', username: 'arren', password: 'hello', bio: 'hello')

first = Project.create(title: 'hello', img: 'https://www.w3schools.com/w3images/fjords.jpg', description: 'hello', manager: hanaa)
second = Project.create(title: 'hello', img: 'https://www.w3schools.com/w3images/nature.jpg', description: 'hello', manager: hanaa)
third = Project.create(title: 'hello', img: 'https://www.w3schools.com/w3images/lights.jpg', description: 'hello', manager: hanaa)
fourth = Project.create(title: 'hello', img: 'https://techcrunch.com/wp-content/uploads/2018/03/gettyimages-705351545.jpg?w=730&crop=1', description: 'hello', manager: hanaa)
fifth = Project.create(title: 'hello', img: 'https://demo.phpgang.com/crop-images/demo_files/pool.jpg', description: 'hello', manager: hanaa)
sixth = Project.create(title: 'hello', img: 'https://www.reduceimages.com/img/image-after.jpg', description: 'hello', manager: carson)
seventh = Project.create(title: 'hello', img: 'https://static.addtoany.com/images/dracaena-cinnabari.jpg', description: 'hello', manager: carson)
eighth = Project.create(title: 'hello', img: 'http://www.everlastingcelebrations.com/wp-content/uploads/2018/09/Top-Ganesh-Chaturthi-Messages-Images-Photos.jpg', description: 'hello', manager: steven)

ninth = Role.create(title: 'hello', project: first)
tenth = Role.create(title: 'hello', project: first)
eleventh = Role.create(title: 'hello', project: second)

Application.create(collaborator: hanaa, role: ninth)
Application.create(collaborator: carson, role: tenth)
Application.create(collaborator: hanaa, role: eleventh)
Application.create(collaborator: cristina, role: ninth)
Application.create(collaborator: steven, role: ninth)
Application.create(collaborator: cristina, role: eleventh)
Application.create(collaborator: carson, role: tenth)
Application.create(collaborator: graham, role: ninth)
Application.create(collaborator: carson, role: ninth)
Application.create(collaborator: arren, role: tenth)

