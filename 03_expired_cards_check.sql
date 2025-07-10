USE credit_card_data;

-- 03_expired_cards_check.sql
-- This query counts how many cards are expired based on the expiry date.

SELECT 
    COUNT(*) AS expired_cards
FROM 
    credit_cards
WHERE 
    STR_TO_DATE(CONCAT('01/', expires), '%d/%m/%Y') < CURDATE();
