SELECT
  SUM(number) AS total,
  contributing_factor_vehicle_1 AS contributing_factor
FROM (
  SELECT
    COUNT(contributing_factor_vehicle_1) AS number,
    contributing_factor_vehicle_1
  FROM
    `bigquery-public-data.new_york_mv_collisions.nypd_mv_collisions`
  WHERE
    borough="BROOKLYN"
  GROUP BY
    contributing_factor_vehicle_1
  UNION ALL
  SELECT
    COUNT(contributing_factor_vehicle_2) AS number,
    contributing_factor_vehicle_2
  FROM
    `bigquery-public-data.new_york_mv_collisions.nypd_mv_collisions`
  WHERE
    borough="BROOKLYN"
  GROUP BY
    contributing_factor_vehicle_2
  UNION ALL
  SELECT
    COUNT(contributing_factor_vehicle_3) AS number,
    contributing_factor_vehicle_3
  FROM
    `bigquery-public-data.new_york_mv_collisions.nypd_mv_collisions`
  WHERE
    borough="BROOKLYN"
  GROUP BY
    contributing_factor_vehicle_3
  UNION ALL
  SELECT
    COUNT(contributing_factor_vehicle_4) AS number,
    contributing_factor_vehicle_4
  FROM
    `bigquery-public-data.new_york_mv_collisions.nypd_mv_collisions`
  WHERE
    borough="BROOKLYN"
  GROUP BY
    contributing_factor_vehicle_4
  UNION ALL
  SELECT
    COUNT(contributing_factor_vehicle_5) AS number,
    contributing_factor_vehicle_5
  FROM
    `bigquery-public-data.new_york_mv_collisions.nypd_mv_collisions`
  WHERE
    borough="BROOKLYN"
  GROUP BY
    contributing_factor_vehicle_5 ) s
GROUP BY
  contributing_factor
ORDER BY
  total DESC
LIMIT
  1000
