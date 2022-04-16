SELECT name FROM tracks WHERE Composer = 'Jimi Hendrix';
/* composer ı jimi olan şarkıları sorgulayınız */

SELECT * FROM invoices WHERE total > 10;
/* invoices tablosundaki Total değeri 10 dan büyük olan faturaların tüm bilgileri sorgula */
/* limti 
invoices tablosunda Total değeri 10 dan büyük olan ilk dört kaydın invoicedıd ınvoiceDate ve 
Total bilgileri sorgulayınz. */
SELECT InvoiceId, InvoiceDate, total FROM invoices WHERE total >10  
LIMIT 4;
/* ORDER BY
invoices tablosunda Total değeri 10 dan büyk olan kayıtlardan işlem tarihi(InvoiceDate) en yeni olan
10 kaydın tüm bilgilerini listeleyiniz. */
SELECT * 
FROM invoices 
WHERE total > 10 
ORDER By InvoiceDate DESC
LIMIT 10 ;
SELECT CustomerId, InvoiceDate, BillingCity, total FROM invoices ORDER BY
BillingCity ASC , total DESC;
/* And operator
iki koşulda doğru olması gerekiyır.
OR
iki koiuldan biri tutsa yeter.*/
/* invoices tablosunda ülkesi BillingCountry usa olmayan 
kayıtları total değerine göre azalan sırada listeleyiniz */
SELECT * 
FROM invoices
where BillingCountry <> "USA"  /* != not için kullanılabilir. */
/*WHERE NOT BillingCountry = "USA" */
ORDER by total DESC;

/* and örnek  */ 
SELECT *
FROM invoices
where BillingCountry = "USA" OR BillingCountry = "Germany";
ORDER by InvoiceId ASC;
SELECT *
FROM invoices 
WHERE InvoiceDate >='2012-01-01' AND InvoiceDate <='2013-01-02 00:00:00'; 
/* time ı dikkate almak gerekiyor kapsayıcı yazmak lazım. */
SELECT *
FROM invoices 
WHERE InvoiceDate BETWEEN '2012-01-01' AND '2013-01-02 00:00:00' ; 

/* invoices tabl fatura tarihi InvoiceDate 2009 ile 2011 arasındaki en yeni 
faturayı listeleyen sorgu yazınız. */
SELECT *
FROM invoices 
WHERE InvoiceDate BETWEEN '2009-01-01' AND '2011-12-31' 
ORDER by InvoiceDate DESC
LIMIT 1;
SELECT FirstName, LastName, country
FROM customers
WHERE country IN('Belgium', 'Norway','Canada','USA');