use Northwind

-- Inner Join : ilişkili tabloları join ile birleştirebiliriz
-- hangi personel hangi satışları yapmıştır
select * from personeller Inner JOIN satislar on personeller.personelID= satislar.personelID
select * from personeller p Inner JOIN satislar s on p.personelID= s.personelID

-- hangi ürün hangi kategoride 
select u.urunadi, k.kategoriadi from urunler u JOIN kategoriler k on u.kategoriID = k.kategoriID

-- Join komutunda where komutunun kullanımı
-- beverages kategorisindeki ürünlerim (urunler, kategoriler)
select K.kategoriAdi from kategoriler k JOIN urunler u on k.kategoriID = u.kategoriID  WHERE k.kategoriAdi= 'beverages'

-- beverages kategorisindeki ürünlerimin sayısı kaçtır?
select COUNT(u.urunadi) bevegaresUrunSayisi from kategoriler k JOIN urunler u on k.kategoriID= u.kategoriID where k.kategoriAdi='beverages'

--seafood kategorisindeki ürünlerin listesi
 select urunler.urunadi from kategoriler join urunler on kategoriler.kategoriID=urunler.kategoriID where kategoriler.kategoriAdi='seafood'

 --hangi satışı hangi çalışan yapmış (satislar,personeller)
 select satislar.satisID,personeller.adi  +' '+ personeller.soyadi [satış yapan personel] from satislar join personeller on satislar.PersonelID=personeller.personelID

 --faks numarası null olmayan tedarikçilerden alınmış ürünler nelerdir (urunler,tedarikciler)
 select urunler.urunadi, tedarikciler.sirketAdi from urunler JOIN tedarikciler on urunler.TedarikciID=tedarikciler.TedarikciID where tedarikciler.faks<>'NULL'
  select urunler.urunadi, tedarikciler.sirketAdi from urunler JOIN tedarikciler on urunler.TedarikciID=tedarikciler.TedarikciID where tedarikciler.faks is not null


  -- Inner Join ile 2den fazla ilişkili tabloları birleştirme