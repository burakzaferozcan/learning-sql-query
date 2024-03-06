USE northwind

-- Tarih FOnksiyonları

-- GETDATE() : bugünün tarihini verir
select GETDATE()

-- DATEADD() : verilen tarihe verildiği kadar gün, ay, yıl ekler.
select DATEADD(day,999,GETDATE())
select DATEADD(month,999,GETDATE())
select DATEADD(year,999,GETDATE())

-- DATEDIFF() : iki tarih arasında günü, ayı, veya yılı hesaplar
select DATEDIFF(DAY,'05.09.1992',GETDATE())
select DATEDIFF(MONTH,'05.09.1992',GETDATE())
select DATEDIFF(YEAR,'05.09.1992',GETDATE())

-- DATEPART() : verilen tarihin haftanın, ayın ya da yılın kaçıncı günü olduğunu hesaplar
SELECT DATEPART(DW,GETDATE()) --hafta'nın günü
SELECT DATEPART(MONTH,GETDATE()) --ay'ın değeri
SELECT DATEPART(DAY,GETDATE()) --ay'ın günü

