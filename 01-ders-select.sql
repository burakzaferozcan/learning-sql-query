-- transact SQL(T-SQL)dili özellikleri
--yorum satırı -- ifadesidir
-- T-sql büyük küçük harf duyarlılığına sahip değildir
USE Northwind
Select 3
Select 'burak'
Select 3,5,7
select 'burak','zafer',23
print 'burak'
select * from Personeller
select adi,soyadi from personeller

-- alias
 select 3 as değer
  select 3  değer
  select 'burak zafer' adi, 'özcan' soyadi
  select adi isimler, soyadi soyisimler from personeller

  -- boşluk karakteri olan tabloyu sorgulama
  select 1453 [istanbulun fethi]
  select *from [satis detaylari]

  --kolonları birleştirme
  select adi, soyadi from personeller
  select adi+' '+soyadi [personel bilgileri] from personeller

  --f farkli tipte kolonları birleştirme
  select Adi + ' '+ IseBaslamaTarihi from Personeller --hata
  select adi +' '+ CONVERT(nvarchar,isebaslamatarihi) from personeller
  select adi +' '+ CAST(IseBaslamaTarihi as nvarchar) [personellerin ise baslama tarihi] from personeller