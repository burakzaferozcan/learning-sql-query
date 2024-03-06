use Northwind

-- TOP komutu istenilen tablodaki ilk kaç verinin listeleneceğini seçer
select top 3 * from Personeller

-- DISTINCT komutu istenilen tablodaki benzer verilein teke indirilmesini sağlar
select distinct sehir from Personeller

-- GROUP BY
select * from urunler 
select kategoriID, count(*) urunSayisi from urunler GROUP BY kategoriID 
select kategoriID,tedarikciID, count(*) urunSayisi from urunler GROUP BY kategoriID , TedarikciID

select personelID,count(*) satisSayisi from Satislar GROUP BY PersonelID

select personelID,SUM(NakliyeUcreti) toplamNakliyeUcreti from satislar GROUP BY PersonelID

-- GROUP BY işleminde WHERE şartı kullanmak group by'dan önce yazılır
select * from Urunler
select kategoriID, count(*) from urunler where kategoriID >5 group by KategoriID
select personelID,count(*) from satislar where PersonelID<4 GROUP BY PersonelID
SELECT personelID,SUM(nakliyeUcreti) from satislar where nakliyeUcreti<3000 GROUP BY PersonelID 

-- GROUP BY işleminde HAVİNG komutu ile şart kullanmak aggregate fonksiyonları üzerinde şart oluşturmamıza yarar group by'dan sonra yazılır
select * from Urunler
select kategoriID, count(*) from urunler where kategoriID >5 group by KategoriID HAVING COUNT(*)>5
select personelID,count(*) from satislar where PersonelID<4 GROUP BY PersonelID HAVING COUNT(*)>5
SELECT personelID,SUM(nakliyeUcreti) from satislar GROUP BY PersonelID HAVING SUM(NakliyeUcreti)>1000

-- Join olmadan tabloları yan yana birleştirme 
 SELECT p.PersonelID, s.musteriID from personeller p,satislar s where p.PersonelID=s.PersonelID