## Struktura bazy danych

- Customers- klienci sklepu
- Categories - Products - produkty pogrupowane w kategorie
- Orders - OrderItems - zamówienia i ich pozycje
- Payments - płatności powiązane z zamówieniami

## Struktura projektu
01_create_tables.sql -- definicje tabel i relacji
03_create_indexes.sql -- indeksy + test wydajności przed/po -- przyspieszenie filtrowania po kliencie/dacie
data/
02_insert_sample_data.sql -- przykładowe dane testowe
queries/
01_top_spending_customers.sql -- klienci którzy wydali najwięcej 
02_customer_spending_ranking.sql -- ranking klientów według wydatków 
03_recent_orders_report.sql -- zamówienia w ciągu ostatnich 30 dni 
04_products_never_ordered.sql -- które produkty nigdy nie zostały zamówione
05_days_between_customer_orders.sql -- odstęp dni miedzy zamówieniami tego samego klienta 
06_monthly_revenue_summary.sql -- jaki jest przychód miesięczny 

## Uruchomienie lokalnie 
Wykorzystywany jest kontener z sql server, uruchomienie przez :
```bash
   docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD=HASŁO' \
     -p 1433:1433 --name sql_portfolio -d mcr.microsoft.com/azure-sql-edge
```
Potem należy połączyć się z bazą np przy wykoryztsaniu VS code z rozszerzeniem mssql
   - Server: `localhost,1433`
   - Login: `sa`
   - Password:

Kolejność wywoływania plików 
   1. `schema/01_create_tables.sql`
   2. `data/02_insert_sample_data.sql`
   3. `schema/03_create_indexes.sql`
   4. dowolny plik z `queries/`
