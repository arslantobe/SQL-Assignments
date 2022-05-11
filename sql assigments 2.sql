--Her albümde kaç parça var? Çözümünüz, Albüm kimliğini ve en yüksekten en düşüğe sıralanmış parça sayısını içermelidir
SELECT * from tracks
select AlbumId,count(*) as parça_sayısı
from tracks
group by AlbumId
order by parça_sayısı DESC;
--Find the album title of the tracks. Your solution should include track name and its album title.
--Parçaların albüm başlığını bulun. Çözümünüz parça adını ve albüm başlığını içermelidir
SELECT tracks.name, albums.Title
FROM tracks
INNER join albums on tracks.AlbumId=albums.AlbumId;
--Her albümdeki parçanın minimum süresini bulun. Çözümünüz, en yüksekten en düşüğe doğru sıralanmış albüm kimliği, albüm başlığı ve parçanın süresini içermelidir.
--Find the minimum duration of the track in each album. Your solution should include album id, album title and duration of the track sorted from highest to lowest.
SELECT albums.AlbumId, albums.Title, min(tracks.Milliseconds) as min_sre
from albums
LEFT JOIN tracks on tracks.AlbumId=albums.AlbumId
GROUP by albums.AlbumId 
ORDER by min_sre desc;

--Find the total duration of each album. Your solution should include album id, album title and its total duration sorted from highest to lowest.
--Her albümün toplam süresini bulun. Çözümünüz albüm kimliği, albüm başlığı ve en yüksekten en düşüğe sıralanmış toplam süresini içermelidir.
SELECT albums.AlbumId, albums.Title, sum(tracks.Milliseconds) as total_sre
from albums
LEFT JOIN tracks on tracks.AlbumId=albums.AlbumId
GROUP by albums.AlbumId
ORDER by total_sre desc;
--Based on the previous question, find the albums whose total duration is higher than 70 minutes. Your solution should include album title and total duration.
--Bir önceki soruya göre toplam süresi 70 dakikadan fazla olan albümleri bulun. Çözümünüz albüm başlığını ve toplam süreyi içermelidir.

SELECT  albums.Title, sum(tracks.Milliseconds) as total_ms
from albums
LEFT JOIN tracks on tracks.AlbumId=albums.AlbumId
GROUP by albums.AlbumId
HAVING total_ms >70*60*1000
ORDER by total_ms desc;




