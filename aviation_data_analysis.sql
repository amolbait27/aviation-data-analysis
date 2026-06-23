
-- PROJECT: Aviation Pricing & Route Analysis
-- DESCRIPTION: Analyzing 300,000+ flight records to find 
-- busiest routes and airline pricing strategies.


-- QUERY 1: What is the busiest flight route?
-- This shows which cities have the highest flight traffic.
SELECT 
    source_city, 
    destination_city, 
    COUNT(*) AS Number_of_Flights
FROM flights_data
GROUP BY source_city, destination_city
ORDER BY Number_of_Flights DESC
LIMIT 5;

-- QUERY 2: How big is the price gap between Economy and Business class?
-- This shows which airlines are premium vs. budget.
SELECT 
    airline, 
    class,
    ROUND(AVG(price), 2) AS Avg_Ticket_Price
FROM flights_data
GROUP BY airline, class
ORDER BY Avg_Ticket_Price DESC;

-- QUERY 3: Which flights generate the most money per hour?
-- This calculates how much money an airline makes per hour of flight.
SELECT 
    airline,
    class,
    ROUND(AVG(price / duration), 2) AS Revenue_Per_Hour_INR
FROM flights_data
WHERE duration > 0  
GROUP BY airline, class
ORDER BY Revenue_Per_Hour_INR DESC;

-- QUERY 4: Does the time of day affect ticket prices?
-- This analyzes which time of day is the most expensive to fly.
SELECT 
    departure_time,
    ROUND(AVG(price), 2) AS Avg_Ticket_Price,
    COUNT(*) AS Total_Flights
FROM flights_data
GROUP BY departure_time
ORDER BY Avg_Ticket_Price DESC;

-- QUERY 5: Are direct flights always the most expensive?
-- This calculates how layovers affect both the ticket price and total travel time.
SELECT 
    stops,
    ROUND(AVG(price), 2) AS Avg_Ticket_Price,
    ROUND(AVG(duration), 2) AS Avg_Duration_Hours,
    COUNT(*) AS Total_Flights
FROM flights_data
GROUP BY stops
ORDER BY Avg_Ticket_Price DESC;