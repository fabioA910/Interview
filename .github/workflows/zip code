SELECT
  zip_code,
  COUNT(*) AS number
FROM
  `bigquery-public-data.new_york_mv_collisions.nypd_mv_collisions`
WHERE
  borough="BROOKLYN"
GROUP BY
  zip_code
ORDER BY
  number DESC
LIMIT
  1000
