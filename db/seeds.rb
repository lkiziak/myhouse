This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   Group.create(group_name: "WWU", group_email: "wwu@email.com")
#   Event.create(title: "Concert", description: "Community concert", location: "Riverside", contact: "La Sierra")


User.destroy_all
Event.destroy_all

30.times do ||

x = ::Faker::Internet.user_name
y = ::Faker::Internet.email
z = ::Faker::Internet.password(8)
a = ::Faker::Internet.url #website
#b = ::Faker::Lorem.sentence #about
#c = ::Faker::Avatar.image #img_url

User.create({name: x, email: y, password: z, password_confirmation: z})

#website: a, about: b, img_url: c
end

20.times do ||
    30.times do |i|

    id = User.first.id + i
    x = Faker::group_name.words(2) #title
    #y = ::Faker::Number.between(0, 100000) #plays
    #z = ["music", "stories", "poetry", "gratitude", "wishes", "rants"].sample #category
    #a = ::Faker::Internet.url #website
    #b = ::Faker::Lorem.paragraph #about
    #c = ::Faker::Number.between(0, 300) #length

    Group.create({group_name: id, group_email: y})

    end
end











