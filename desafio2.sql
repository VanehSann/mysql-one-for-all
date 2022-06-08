SELECT
max(b.song_id) as `cancoes`,
max(a.artist_id) as `artistas`,
max(a.album_id) as `albuns`
FROM albums as a
INNER JOIN songs as b
ON a.album_id = b.album_id;
