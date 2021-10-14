SELECT
  EXTRACT(month
  FROM
    timestamp) AS months,
  COUNT(timestamp) AS number
FROM
  `bigquery-public-data.new_york_mv_collisions.nypd_mv_collisions`
WHERE
  borough="BROOKLYN"
GROUP BY
  months
ORDER BY
  months ASC
LIMIT
  1000
