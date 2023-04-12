# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ActionItem.destroy_all
Phase.destroy_all
Project.destroy_all
User.destroy_all
puts 'everything is destroyed'

#create one user as an admin and one user as a regular user
User.create(name: "Morty Bingo", email: "mortybingo@email.com", password: "Aqu@Fin@123", phone: "1234567891", access_level: "super admin", user_type: "admin")

project = Project.create(title: "Ursa MVP App Project", description: "This is a description of UMGT App", completed: false)

User.create(name: "Marty Binks", email: "martybinks@email.com", password: "Aqu@Fin@123", phone: "1234567891", access_level: "super admin", user_type: "admin", project_id: project.id)

puts 'admin, project, user created'
Phase.create(title: "Phase 1", description: "This is a description of Phase 1", project_id: project.id, completed: false)
Phase.create(title: "Phase 2", description: "This is a description of Phase 2", project_id: project.id, completed: false)
Phase.create(title: "Phase 3", description: "This is a description of Phase 3", project_id: project.id, completed: false)

puts 'three phases created'