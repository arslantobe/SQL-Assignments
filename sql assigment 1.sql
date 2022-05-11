--1. Her fatura için FaturaKimliği, MüşteriKimliği ve toplam dolar tutarını önce MüşteriKimliği'ne göre (artan düzende) ve ardından toplam dolar tutarına göre (azalan düzende) sıralayan bir sorgu yazın.
--1. Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice, sorted first by CustomerId (in ascending order), and then by total dollar amount  (in descending order).
SELECT InvoiceId, CustomerId, total
from invoices
ORDER by CustomerId asc, total DESC;

--2. Her fatura için FaturaKimliği, MüşteriKimliği ve toplam dolar tutarını gösteren bir sorgu yazın, ancak bu sefer önce toplam dolar tutarına göre (azalan düzende), ardından MüşteriKimliği'ne göre (artan düzende) sıralayın.
SELECT InvoiceId, CustomerId,total
from invoices
ORDER By total desc, CustomerId asc;
--3. Yukarıdaki iki sorgunun sonuçlarını karşılaştırın. İlk sıraladığınız sütunu değiştirdiğinizde sonuçlar nasıl farklı oluyor? (Kendi kelimelerinizle açıklayın.)
-- ilk sorguda CustomerId yi 1'den 59' a artan şekilde ayrı ayrı gruplayıp her grubun totatlini de azalan şakide sıraladık
--ikinci sorguda ise total i azalan şekilde ayrı ayrı gruplayıp her grubun CustomerId sini artan şekilde sıralattık

--4. Faturalar tablosundan dolar toplamı 10'a eşit veya daha büyük olan ilk 10 satırı ve tüm sütunları çekmek için bir sorgu yazın. 
SELECT *
FROM invoices
where total >= 10 
order by total asc LIMIT 10;
--5. Faturalar tablosundan ilk 5 satırı ve tüm sütunları çekmek için bir sorgu yazın. toplam tutarı 10'dan az olan.
SELECT * 
FROM invoices 
where total < 10 
ORDER by total DESC LIMIT 5;
--6. 'B' ile başlayan ve 's' ile biten tüm parça adlarını bulun.
SELECT name
FROM tracks
WHERE name LIKE 'B%S';
--7.  Fatura adresi ABD veya Almanya veya Norveç veya Kanada olan ve fatura tarihi 2010 yılının herhangi bir noktasında olan faturalarla ilgili tüm bilgileri en yeniden en eskiye doğru sıralayarak bulmak için fatura tablosunu kullanın.
SELECT *
FROM invoices
WHERE BillingCountry in ('USA' ,'Germany' , 'Norway','Canada')
AND InvoiceDate like '2010%'
ORDER By InvoiceDate DESC ;