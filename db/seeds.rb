# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database.....'
Artwork.destroy_all
User.destroy_all

url1 = 'https://payload.cargocollective.com/1/22/726497/12334190/debord_1750.jpg'
url2 = 'https://payload.cargocollective.com/1/22/726497/12334185/Sans-titre-1_1750.jpg'
url3 = 'https://payload.cargocollective.com/1/22/726497/12334185/Magnesia-copie_1750.jpg'
url4 = 'https://payload.cargocollective.com/1/22/726497/12334190/revele_1750.jpg'
url5 = 'https://payload.cargocollective.com/1/22/726497/12334190/tri-eau_1750.jpg'
url6 ='https://payload.cargocollective.com/1/22/726497/12334185/infinitions--2_1750.jpg'

puts 'Creating artworks...'



User.create(name: 'Jean-Michel', email: 'jeanmi@gmail.fr', password: 'yesssais', id: 1, category: 'sculptor')
User.create(name: 'Jeanne', email: 'jeanne@gmail.fr', password: 'yesdfghjk', id: 2, category: 'sculptor')
User.create(name: 'Pierre', email: 'pierre@gmail.fr', password: 'yesfcgvjkv', id: 3, category: 'sculptor')
User.create(name: 'Samy', email: 'samy@gmail.fr', password: 'yesjnibhb', id: 4, category: 'painter')
User.create(name: 'Claire', email: 'claire@gmail.fr', password: 'yesbhiouvg', id: 5, category: 'painter')
User.create(name: 'Mickael', email: 'mickael@gmail.fr', password: 'yesguvytctr', id: 6, category: 'sculptor')

cyclique = Artwork.new(name: 'Débordement cyclique', category: 'gravure', start_date: '2019-02-05', end_date: '2019-02-28', user_id: 1, address: '41 Quai de Pierre-Scize, 69009 Lyon', price: 370 )
bienheureux = Artwork.new(name:'77 bienheureux', category:'sculpture', start_date: '2019-02-05', end_date: '2019-02-28', user_id: 2, address: '3 Rue de Lisbonne, 75008 Paris', price: 300  )

magnesia = Artwork.new(name:'Magnésia', category: 'sculpture', start_date: '2019-02-05', end_date: '2019-02-28', user_id: 3, address: '130 Avenue Daumesnil, 75012 Paris', price: 50 )

revele = Artwork.new(name: 'Révèle', category: 'Peinture', start_date: '2019-02-05', end_date: '2019-02-28', user_id: 4, address: '3 Rue des Minimes, 37000 Tours', price: 200)

trio = Artwork.new(name: 'trie eau', category: 'Peinture', start_date: '2019-02-05', end_date: '2019-02-28', user_id: 5, address: '41 Quai de Pierre-Scize, 69009 Lyon', price: 30)

infinition = Artwork.new(name: 'infinition', category: 'sculpture', start_date: '2019-02-28', end_date: '2019-02-28', user_id: 6, price: 500, address: '16 villa Gaudelet 75011 Paris')





cyclique.remote_photo_url = url1
cyclique.save

bienheureux.remote_photo_url = url2
bienheureux.save
magnesia.remote_photo_url = url3
magnesia.save
revele.remote_photo_url = url4
revele.save
trio.remote_photo_url = url5
trio.save
infinition.remote_photo_url = url6
infinition.save

puts 'Finished!'
