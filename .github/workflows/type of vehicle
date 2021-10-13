SELECT
  SUM(number) AS total,
  vehicle_type_code1 AS vehilcle_type
FROM (
  SELECT
    COUNT(vehicle_type_code1) AS number,
    vehicle_type_code1
  FROM
    `bigquery-public-data.new_york_mv_collisions.nypd_mv_collisions`
  WHERE
    borough="BROOKLYN"
  GROUP BY
    vehicle_type_code1
  UNION ALL
  SELECT
    COUNT(vehicle_type_code2) AS number,
    vehicle_type_code2
  FROM
    `bigquery-public-data.new_york_mv_collisions.nypd_mv_collisions`
  WHERE
    borough="BROOKLYN"
  GROUP BY
    vehicle_type_code2
  UNION ALL
  SELECT
    COUNT(vehicle_type_code_3) AS number,
    vehicle_type_code_3
  FROM
    `bigquery-public-data.new_york_mv_collisions.nypd_mv_collisions`
  WHERE
    borough="BROOKLYN"
  GROUP BY
    vehicle_type_code_3
  UNION ALL
  SELECT
    COUNT(vehicle_type_code_4) AS number,
    vehicle_type_code_4
  FROM
    `bigquery-public-data.new_york_mv_collisions.nypd_mv_collisions`
  WHERE
    borough="BROOKLYN"
  GROUP BY
    vehicle_type_code_4
  UNION ALL
  SELECT
    COUNT(vehicle_type_code_5) AS number,
    vehicle_type_code_5
  FROM
    `bigquery-public-data.new_york_mv_collisions.nypd_mv_collisions`
  WHERE
    borough="BROOKLYN"
  GROUP BY
    vehicle_type_code_5 ) s
GROUP BY
  vehilcle_type
ORDER BY
  total DESC
LIMIT
  1000
