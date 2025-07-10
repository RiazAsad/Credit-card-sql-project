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
