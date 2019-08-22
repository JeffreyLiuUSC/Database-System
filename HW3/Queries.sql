--Postgres.app + pgadmin4
CREATE TABLE USCGeoData (name varchar, geom geometry);

INSERT INTO USCGeoData VALUES
('1.LVLUnder','POINT(-118.28307466 34.02188751)'),
('2.Home','POINT(-118.2634965 34.05020059)'),
('3.RoyalParking','POINT(-118.28108788 34.02196163)'),
('4.Doheny','POINT(-118.28365773 34.01993165)'),
('5.McCarthyQuad','POINT(-118.28314532 34.02093569)'),
('6.Fountain','POINT(-118.28440167 34.02060509)'),
('7.VKC','POINT(-118.28393235 34.02109806)'),
('8.NorthGate','POINT(-118.28299834 34.02228751)'),
('9.NorthWest','POINT(-118.29136446 34.02552045)'),
('10.VtbLibrary','POINT(-118.28885836 34.01967229)'),
('11.SGM','POINT(-118.28945793 34.02126669)'),
('12.VtbParking','POINT(-118.28970793 34.02107555)');

--calculate the convex hull
SELECT ST_AsText(ST_ConvexHull(ST_Collect(geom)))
FROM USCGeoData;



--calculate the 5 nearest points
SELECT name, geom <#> st_setsrid(st_makepoint(-118.2634965,34.05020059),4326) AS distance
FROM USCGeoData
WHERE name <> '2.Home'
ORDER BY geom <#> st_setsrid(st_makepoint(-118.2634965,34.05020059),4326)
LIMIT 5;

