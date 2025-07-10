USE credit_card_data;

-- 04_brand_distribution.sql
-- This query shows how many cards exist for each card brand.

SELECT 
    card_brand,
    COUNT(*) AS total_cards
FROM 
    credit_cards
GROUP BY 
    card_brand
ORDER BY 
    total_cards DESC;
