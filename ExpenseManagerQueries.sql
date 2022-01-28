-- ExpenseManager App's database queries.

-- Looking for flight prices from my trip to South America.
SELECT Category.name, datetime(TransactionItem.timestamp / 1000, 'unixepoch', 'localtime') as Date, TransactionItem.*
FROM TransactionItem INNER JOIN Category ON TransactionItem.categoryId == Category.id
WHERE Category.name == "Transportation"
    AND TransactionItem.note like "%flight%"
    AND TransactionItem.dayId > 2019050
    AND TransactionItem.dayId < 2019200
ORDER BY TransactionItem.dayId

