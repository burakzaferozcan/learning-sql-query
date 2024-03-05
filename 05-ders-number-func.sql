USE Northwind

-- sayısal değer işlemleri
select 3+2
select 3-2
select 3*2
select 3/2

-- PI() : Pi sayısını verir
select pi()

-- SIN() : sinüs alır
select sin(pi())

-- POWER() : üs alır
select power(2,3)

-- ABS() : mutlak değer alır
select abs(-56)

-- RAND() : 0-1 arasında rastgele sayı üretir
select rand()*100

-- FLOOR() : kendisine en yakın bir alt sayıya yuvarlar
select floor(rand()*100)

-- ROUND() : Sayıyı istenilen uzunlukta ondalık basamağa yuvarlar
select Round(rand()*100,2)