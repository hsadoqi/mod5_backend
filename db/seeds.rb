# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hanaa = User.create(name: 'hanaa', username: 'hanaa', password: 'hello', bio: 'hello')
steven = User.create(name: 'steven', username: 'steven', password: 'hello', bio: 'hello')
cristina = User.create(name: 'cristina', username: 'cristina', password: 'hello', bio: 'hello')
carson = User.create(name: 'carson', username: 'carson', password: 'hello', bio: 'hello')
helen = User.create(name: 'helen', username: 'helen', password: 'hello', bio: 'hello')
graham = User.create(name: 'graham', username: 'graham', password: 'hello', bio: 'hello')
arren = User.create(name: 'arren', username: 'arren', password: 'hello', bio: 'hello')

first = Project.create(title: 'hello', img: 'hello', description: 'hello', manager: hanaa)
second = Project.create(title: 'hello', img: 'hello', description: 'hello', manager: arren)
third = Project.create(title: 'hello', img: 'hello', description: 'hello', manager: arren)
fourth = Project.create(title: 'hello', img: 'hello', description: 'hello', manager: arren)
fifth = Project.create(title: 'hello', img: 'hello', description: 'hello', manager: cristina)
sixth = Project.create(title: 'hello', img: 'hello', description: 'hello', manager: carson)
seventh = Project.create(title: 'hello', img: 'hello', description: 'hello', manager: carson)
eighth = Project.create(title: 'hello', img: 'hello', description: 'hello', manager: steven)

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

