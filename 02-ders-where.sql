-- select sorgularında where şartı yazmak
select *from personeller

--personeller tablosunda şehri london verileri listeleyelim
select * from personeller where sehir='london'

--personeller tablosunda bağlı çalıştığı kişi sayısı 5'ten küçük olan verileri listeleyelim
select * from personeller where baglicalistigikisi<5

--and operatörü
--personeller tablosunda şehri london ve ülkesi UK olanları listeleyelim
select *from personeller where(sehir='london' and ulke='uk')

--or operaötrü
--personeller tablosunda unvaneki mr. olanları veya şehri seattle olan tüm personelleri listeleyelim
select *from personeller where(unvaneki='mr.'or sehir='seattle')

-- karışık operatörler
--adı robert soyadı king olan personellerin tüm bilgilerini çek
select * from personeller where (adi='robert' and soyadi='king')

--personel id'si 5 olan personeli getir
select * from personeller where PersonelID=5

--personel id'si 5'ten büyük ve eşit olan tüm personeli getir
select * from personeller where PersonelID>=5

--personel id'si 5 olmayanları getir
select * from personeller where PersonelID<>5

--fonksiyon sonuçlarını şart olarak kullanmak
-- 1993 yılında işe başlayanları getir
select * from personeller where(YEAR(IseBaslamaTarihi)=1993)

-- 1992 yılından sonra işe başlayanları getir
select * from personeller WHERE(year(IseBaslamaTarihi)>1992)

-- doğum günü ayın 29u olamayan personelleri listeleyelim
select * from personeller WHERE(day(DogumTarihi)<>29)

--doğum yılı 1950 ile 1965 yılları arasında olan personelleri listeleyelim
select * FROM personeller WHERE(YEAR(DogumTarihi)>1950  and YEAR(DogumTarihi)<1965)

--yaşadığı şehir london tacoma ve kirkland olan personellerin adını listeleyelim
select adi from personeller where(Sehir='london' or Sehir='tacoma' or Sehir='kirkland' )

--where komutunda Between komutu
--doğum yılı 1950 ile 1965 yılları arasında olan personelleri listeleyelim
select * from personeller where(year(DogumTarihi)Between 1950 and 1965)

--where komutunda  in komutu
--yaşadığı şehir london tacoma ve kirkland olan personellerin adını listeleyelim
select adi from personeller where(Sehir in('london','tacoma','kirkland'))


-- Like sorgular
-- % (genel, önemli değil) operatörü
-- isminin baş harfi j olanların adını ve soyadını yazdıralım
select adi,soyadi from personeller where(adi like 'j%')

-- isminin son harfi y olanların adını ve soyadını yazdıralım
select adi,soyadi from personeller where(adi like '%y' )

-- isminin son 3 harfi ert olan personellerin tüm bilgilerini yazdıralım
select * from personeller where(adi like '%ert')

-- isminin ilk harfi r son harfi t olan personellerin tüm bilgilerini yazdıralım
select * from personeller where (adi like 'r%t')

--isminda an geçen personelin adını yazdıralım
select adi from personeller where(adi like'%an%')

--isminin baş harfi n olan ve isminde an geçen personeli getirelim
select * from personeller where(adi like 'n%an%' )
-- gereksiz kullanım
select * from personeller where(adi like 'n%' and adi like '%an%')

-- _ (ozel önemli değil operatörü)
-- isminin ilk harfi a, 2. harfi önemli değil , 3. harfi d olan personelin tüm bilgilerini getirelim
select * from personeller where(adi like 'a_d%')

-- isminin ilk harfi m, 2. 3. 4. harfi önemli değil 5. harfi a olan personelin tüm bilgilerini getirelim
select * from personeller where(adi like 'm___a%')

-- [] (ya da) operatörü
-- isminin ilk harfi n ya da m ya da r olan personelleri getirelim
select * from personeller where(adi like '[nmr]%')

--isminin içerisinde a ya da i geçen personeli getirelim
select * from personeller where (adi like '%[ai]%')

-- [x-y] alfabetik arasında operatörü
--ismnin baş harfi a ile k arasında alfabetik sıraya göre herhangi bir harf olan personellerin adını yazdıralım
select adi from personeller where(adi like '[a-k]%')

-- [^x] (değil) operatörü
-- isminin baş harfi a olmayan personelleri getirelim
select * from personeller where(adi like '[^a]%')

-- isminin baş harfi a olmayan personelleri getirelim
select * from personeller where(adi like '[^an]%')

-- Like sorgularında escape (kaçış) karakterleri
-- sorgularda (%,_,[]) gibi özel ifadeler geçiyorsa hata ile karşılaşabiliriz önlemek için escape karakterleri ile belirleyebiliriz

-- [] operatörü ile 
select * from personeller where (adi like '[_]%')
-- escape komutu ile
select * from personeller where(adi like 'K_%' ESCAPE 'K') 


