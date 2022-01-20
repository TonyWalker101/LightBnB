SELECT city, COUNT(reservations.id) as total_reservation
  FROM properties JOIN reservations
    ON properties.id = reservations.property_id
  GROUP BY city
  ORDER BY total_reservation DESC;