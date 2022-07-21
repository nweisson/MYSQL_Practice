/* 1 */
SELECT Listings.address
FROM Listings, House
WHERE Listings.address = House.address;

/* 2 */
SELECT Listings.address, Listings.mlsNumber
FROM Listings, House
WHERE Listings.address = House.address;

/* 3 */
SELECT Listings.address
FROM Listings, House
WHERE Listings.address = House.address AND House.bedrooms = 3 AND House.bathrooms = 2;

/* 4 */
SELECT address, price
FROM House
WHERE bedrooms = 3 AND bathrooms = 2 AND price >= 100000 AND price <= 250000
ORDER BY price DESC;

/* 5 */
SELECT address, price
FROM BusinessProperty
WHERE type = 'office space'
ORDER BY price DESC;

/* 6 */
SELECT agentId, Agent.name, Firm.name, phone, dateStarted
FROM Agent, Firm
WHERE Agent.firmId = Firm.id;

/* 7 - ID used in this case is 444 */
SELECT Property.*
FROM Property, Listings
WHERE Property.address = Listings.address AND Listings.agentId = 444;

/* 8 */
SELECT Agent.name AS "Agent Name", Buyer.name AS "Buyer Name"
FROM Agent, Buyer, Works_With
WHERE Agent.agentId = Works_With.agentId AND Buyer.id = Works_With.buyerId;

/* 9 */
SELECT Agent.agentId AS "Agent ID", 
(SELECT COUNT(Works_With.buyerId) FROM Works_With WHERE Agent.agentId = Works_With.agentId) AS Count
FROM Agent, Buyer, Works_With
WHERE Works_With.agentId = Agent.agentId
AND Works_With.buyerId = Buyer.id;


/* 10 - ID used in this case is 763 */
SELECT House.*
FROM House, Buyer
WHERE Buyer.id = 763 AND Buyer.bedrooms = House.bedrooms AND
      Buyer.bathrooms = House.bathrooms AND
      Buyer.minimumPreferredPrice <= House.price AND
      Buyer.maximumPreferredPrice >= House.price;