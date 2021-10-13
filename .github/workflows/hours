SELECT
  EXTRACT(hour
  FROM
    timestamp) AS hours,
  COUNT(timestamp) AS number
FROM
  `bigquery-public-data.new_york_mv_collisions.nypd_mv_collisions`
WHERE
  borough="BROOKLYN"
GROUP BY
  hours
ORDER BY
  hours ASC
LIMIT
  1000
