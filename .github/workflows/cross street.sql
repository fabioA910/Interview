SELECT
  cross_street_name,
  COUNT(*) AS number
FROM
  `bigquery-public-data.new_york_mv_collisions.nypd_mv_collisions`
WHERE
  borough="BROOKLYN"
GROUP BY
  cross_street_name
ORDER BY
  number DESC
LIMIT
  1000
