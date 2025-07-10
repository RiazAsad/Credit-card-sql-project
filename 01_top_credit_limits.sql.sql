USE credit_card_data;

CREATE TABLE credit_cards (
    user_id INT,
    card_index INT,
    card_brand VARCHAR(50),
    card_type VARCHAR(50),
    card_number BIGINT,
    expires VARCHAR(10),
    cvv INT,
    has_chip VARCHAR(5),
    cards_issued INT,
    credit_limit VARCHAR(20),
    acct_open_date VARCHAR(10),
    year_pin_last_changed INT,
    card_on_dark_web VARCHAR(5)
);
SELECT * FROM credit_cards LIMIT 10;
USE credit_card_data;

-- 01_top_credit_limits.sql
-- This query shows the top 10 cards with the highest credit limits.

SELECT 
    user_id,
    card_brand,
    card_type,
    credit_limit
FROM 
    credit_cards
ORDER BY 
    CAST(REPLACE(credit_limit, '$', '') AS DECIMAL(12,2)) DESC
LIMIT 10;

USE credit_card_data;

-- 02_dark_web_count.sql
-- This query counts how many cards are flagged as being on the dark web.

SELECT 
    card_on_dark_web,
    COUNT(*) AS count_cards
FROM 
    credit_cards
GROUP BY 
    card_on_dark_web;
