CREATE TABLE if not exists Genre (id SERIAL PRIMARY KEY, genre VARCHAR(50) NOT NULL
);
CREATE TABLE if not exists Performers(id SERIAL PRIMARY KEY, performer VARCHAR(70) NOT NULL
);
CREATE TABLE IF NOT EXISTS GenrePerformer (genre_id INTEGER REFERENCES Genre(id), performer_id INTEGER REFERENCES Performers(id), CONSTRAINT pk1 PRIMARY KEY(genre_id, performer_id)
);
CREATE TABLE IF NOT exists Albums(id SERIAL PRIMARY KEY, album VARCHAR(120) NOT NULL, year_of INTEGER NOT NULL
);
CREATE TABLE IF NOT exists PerfomerAlbum(performer_id INTEGER REFERENCES Performers(id), album_id INTEGER REFERENCES Albums(id), CONSTRAINT pk2 PRIMARY KEY(performer_id, album_id)
);
CREATE TABLE  track (id SERIAL PRIMARY KEY, album_id INTEGER REFERENCES Albums(id), track VARCHAR(120)NOT NULL , duration INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS Compilations(id SERIAL PRIMARY KEY,compilation VARCHAR(120) NOT NULL ,year_of INTEGER NOT NULL 
);
create TABLE IF NOT EXISTS TRACKSCOMPILATION(track_id INTEGER REFERENCES Track(id), compilation_id INTEGER REFERENCES Compilations(id), CONSTRAINT pk3 PRIMARY KEY(track_id, compilation_id));
