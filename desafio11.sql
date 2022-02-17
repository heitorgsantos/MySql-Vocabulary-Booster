SELECT 
    c.ContactName AS `Nome`,
    c.Country AS País,
    (SELECT 
            COUNT(CustomerId) - 1
        FROM
            w3schools.customers
        WHERE
            c.Country = Country) AS `Número de compatriotas`
FROM
    w3schools.customers AS c
WHERE
    (SELECT 
            COUNT(CustomerId) - 1
        FROM
            w3schools.customers
        WHERE
            c.Country = Country) > 0
ORDER BY Nome ASC;
