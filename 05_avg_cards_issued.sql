USE credit_card_data;

-- 05_avg_cards_issued.sql
-- This query calculates the average number of cards issued per user.

SELECT 
    ROUND(AVG(cards_issued), 2) AS avg_cards_issued
FROM 
    credit_cards;
