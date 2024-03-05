USE Northwind

-- STRİNG FONKSİYONLAR

-- LEFT : soldan(baştan) belirtilen sayıda karakteri getirir
select LEFT(adi,2)from personeller

-- RİGHT : sağdan(sondan) belirtilen sayıda karakteri getirir
select RIGHT(adi,2)from personeller

-- UPPER : büyük harfe çevirir
select UPPER(adi) from personeller

-- LOWER : küçük harfe çevirir 
select LOWER(adi) from personeller

-- SUBSTRİNG : belirtilen indexten itibaren belirtilen sayıda karakter getirir.
select SUBSTRING(adi,2,3) from personeller

-- LTRIM : soldan boşlukları keser
select '             burak'
select LTRIM('             burak')

-- RTRIM : sağdan boşlukları keser
select 'burak                   '
select RTRIM('burak              ')

-- REVERSE : tersine çevirir
select reverse(adi) from personeller

-- REPLACE : belirtilen ifadeyi , belirtilen ifade ile değiştirir
select replace('benim adım burak','burak','zafer')

-- CHARINDEX : belirtilen karakterin veri içinde sıra numarasını verir
select MusteriAdi, CHARINDEX(' ',MusteriAdi) 'bosluk indexi' from musteriler

-- müşteriler tablosunun müşteri adı kolonundan sadece adlarını çekelim
select MusteriAdi from musteriler
select SUBSTRING(MusteriAdi,0,CHARINDEX(' ',MusteriAdi)) from musteriler

-- müşteriler tablosunun müşteri adı kolonundan sadece soyadlarını çekelim
select SUBSTRING(MusteriAdi,CHARINDEX(' ',MusteriAdi),LEN(MusteriAdi) - CHARINDEX(' ',MusteriAdi)-1) from musteriler
select REVERSE(SUBSTRING(REVERSE(MusteriAdi),0,CHARINDEX(' ',REVERSE(MusteriAdi))))  from musteriler