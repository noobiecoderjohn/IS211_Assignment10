-- Create table for artists
CREATE TABLE artists (
    artist_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

-- Create table for albums
CREATE TABLE albums (
    album_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    artist_id INTEGER NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

-- Create table for songs
CREATE TABLE songs (
    song_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    album_id INTEGER NOT NULL,
    track_number INTEGER NOT NULL,
    duration_seconds INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
);