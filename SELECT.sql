select track, duration from track t  
where duration = (select max(duration) from track);

select track from track t
where duration >= 210;

select compilation from compilations c 
where year_of <= 2020 and year_of >= 2018;

select performer from performers p 
where performer  not like '% %';

select track from track t 
where track like '%Мой%' or track like '%My%';

select genre, count(*) from genreperformer gp
left join genre g on gp.genre_id = g.id 
group by genre;

select count(*) from track t
left join albums a on t.album_id = a.id 
where year_of = 2020 or year_of = 2019;

select album, AVG(duration) from track t 
left join albums a on t.album_id = a.id
group by album
order by album;

select performer from performers
except (select performer from albums a 
left join perfomeralbum p on a.id = p.album_id 
left join performers p2 on p.performer_id = p2.id 
where year_of = 2020);

select compilation from compilations c 
left join trackscompilation t on c.id  = t.compilation_id 
left join track t2 on t.track_id = t2.id 
left join perfomeralbum p on t2.album_id = p.album_id
left join performers p2 on p.performer_id = p2.id 
where performer = 'Queen';