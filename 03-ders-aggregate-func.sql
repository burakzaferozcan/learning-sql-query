USE Northwind

--AGGREGATE FONKSIYONLAR

-- AVG : ortalama alır
select AVG(personelID) from Personeller

-- MAX : en büyük değeri bulur
select max(personelId) from personeller

-- MIN : en küçük değeri bulur
select MIN(personelID) from personeller

-- COUNT : toplam sayısını verir
select count(*) from personeller
select count(adi) from personeller

-- SUM : toplamını verir 
select sum(NakliyeUcreti) from satislar
