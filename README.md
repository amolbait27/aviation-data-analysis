# Aviation Data Analysis: Flight Prices & Routes (SQL Project)

Hi! Welcome to my SQL portfolio project. 

For this project, I analyzed a dataset of over 300,000 flight records from the Indian aviation industry. As someone learning Data Analytics, 
I wanted to practice my SQL skills by answering some real-world questions—like why some flights cost so much more than others, and which routes are the busiest.

# Tools I Used
* **Database:** MySQL
* **SQL Skills Practiced:** Grouping (GROUP BY), Sorting (ORDER BY), Aggregation functions (SUM, AVG, COUNT), and basic math operations.

# What's in this repo?
* aviation_analysis.sql: This file contains all the SQL queries I wrote to explore the dataset. 

# The Questions I Asked (And What the Data Showed)

**1. What is the busiest flight route?**
* **The Finding:** The corridor between **Delhi and Mumbai** is the most popular route by far. 
* **The Data:** My query counted exactly **15,289 flights** between these two cities, proving it is the highest-demand market.

**2. How big is the price gap between Economy and Business class?**
* **The Finding:** There is a massive pricing gap overall, especially on premium carriers.
* **The Data:** For example, Vistara's Business class averages around **₹ 55,477/-**, while their Economy class is only around **₹ 7,807/-**.

**3. Which flights generate the most money per hour?**
* **The Finding:** A high ticket price doesn't always mean high efficiency if the flight takes 10 hours.
                   I divided the ticket price by the flight duration to calculate "Revenue per Flight Hour."
* **The Data:** Premium classes obviously win, but looking at Economy, Indigo is the most time-efficient!
  * **Vistara (Business):** ₹5,586.83 per hour
  * **Air India (Business):** ₹4,392.88 per hour
  * **Indigo (Economy):** ₹1,151.47 per hour
  * **SpiceJet (Economy):** ₹952.92 per hour
  * **AirAsia (Economy):** ₹666.39 per hour

**4. Does the time of day affect ticket prices?**
* **The Finding:** Yes, airlines definitely use time-based pricing. Peak travel hours cost significantly more than flying at odd hours.
* **The Data:** Flights departing in the **night** averaged **₹23062.15**, while flights leaving late at night dropped to an average of **₹9295.30**.

**5. Are direct flights always the most expensive?**
* **The Finding:** My initial assumption was that direct flights would cost more because of a "convenience premium."
  However, the data revealed the exact opposite! Direct (zero-stop) flights are actually the cheapest overall.
* **The Data:** Zero-stop flights averaged only **₹9,375**, while one-stop flights jumped to **₹22,900**. 
* **The Business Logic:** Why does this happen? The secret is in the flight duration. The data shows that zero-stop flights average only **2.19 hours** (short-haul, cheaper flights),
*                         while one-stop flights average **13.5 hours** (cross-country, expensive journeys).
*                         The distance of the flight heavily outweighs the cost of convenience!

---
*Note: This is a personal learning project to showcase my SQL problem-solving skills. Feel free to check out my code.*
