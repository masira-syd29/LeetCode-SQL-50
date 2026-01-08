# Write your MySQL query statement 
SELECT 
    Person.firstName,
    Person.lastName,
    Address.city,
    Address.state
FROM Person
LEFT JOIN Address on Person.personId = Address.personId

-- Person.id, Person.lastName, Person.firstName, Address.addressId , Address.personId, Address.city, Adrress.state