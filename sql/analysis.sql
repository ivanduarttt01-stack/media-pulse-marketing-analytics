-- Media Pulse
SELECT channel,SUM(spend_usd) spend,SUM(revenue_usd) revenue,SUM(conversions) conversions,SUM(revenue_usd)/NULLIF(SUM(spend_usd),0) roas,SUM(spend_usd)/NULLIF(SUM(conversions),0) cpa FROM campaign_performance GROUP BY channel ORDER BY roas DESC;
SELECT market,SUM(spend_usd) spend,SUM(revenue_usd) revenue,SUM(conversions) conversions,SUM(revenue_usd)/NULLIF(SUM(spend_usd),0) roas FROM campaign_performance GROUP BY market ORDER BY roas DESC;
SELECT DATE_TRUNC('month',date) month,SUM(spend_usd) spend,SUM(revenue_usd) revenue,SUM(conversions) conversions,SUM(revenue_usd)/NULLIF(SUM(spend_usd),0) roas FROM campaign_performance GROUP BY 1 ORDER BY 1;
