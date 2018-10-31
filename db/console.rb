require('pry')
require_relative('../models/album')
require_relative('../models/artist')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new('name' => 'Shania Twain')
artist2 = Artist.new('name' => 'Madonna')

artist1.save()
artist2.save()

album1 = Album.new( 'title' => 'Up!', 'genre' => 'country', 'artist_id' => artist1.id)
album2 = Album.new( 'title' => 'Now', 'genre' => 'country', 'artist_id' => artist1.id)

album1.save()
album2.save()

# p Album.find(album2.id) this is a find on the whole class and required an input.

# p Artist.find(artist1.id) this is a find on the whole class and requires an input.

# pp album1.artist this isn't a 'find' as you don't need to input anything to the method you just run it on the instance

# pp artist1.albums this isn't a 'find' as you don't need to input anything to the method you just run it on the instance

# album1.delete

# pp Album.all()

# pp Artist.all()

# album1.title = "Now"
# album1.update()

# artist1.name = 'Santana'
# artist1.update
