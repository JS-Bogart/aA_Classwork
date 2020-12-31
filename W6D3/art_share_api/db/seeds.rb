# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all

artist1 = User.create({username: 'Leonardo da Vinci'})
artist2 = User.create({username: 'Vincent van Gogh'})
artist3 = User.create({username: 'Banksy'})
artist3 = User.create({username: 'Hieronymus Bosch'})
Artwork.create(title: 'Mona Lisa', image_url: 'adfhsdhjdruj.com', artist_id: artist1.id)
Artwork.create(title: 'Starry Night', image_url: 'adasdgafgha.com', artist_id: artist1.id)
Artwork.create(title: 'Girl with Balloon', image_url: 'adfhs234523432hjdruj.com', artist_id: artist1.id)
Artwork.create(title: 'Beasts in the Garden of Earthly Delights', image_url: 'aadfhdafha324dhjdruj.com', artist_id: artist1.id)