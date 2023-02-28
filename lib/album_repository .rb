require_relative './album'

class albumRepository
  def all
    sql = 'SELECT title, release_year, album_id FROM albums;'
    result_set = DatabaseConnection.exec_params(sql, [])

    albums = []

    result_set.each do |record|
      album = album.new
      album.id = record['id']
      albums.name = record['title']
      album.genre = record['release_year']
      album.genre = record['album_id']

      albums << album
    end

    return albums
  end
end