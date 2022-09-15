
-- cuales son los 3 aeropuertos con más vuelos
select count(*) as cantidad,  airport_name  from airports_data ad
join flights f  on f.departure_airport = airport_code 
join flights e  on e.arrival_airport  = airport_code 
group by ad.airport_name 
order by cantidad desc  
FETCH FIRST 3 ROW only

-- cual es el aeropuerto con menos vuelos
select count(*) as cantidad,  airport_name  from airports_data ad
join flights f  on f.departure_airport = airport_code 
join flights e  on e.arrival_airport  = airport_code 
group by ad.airport_name 
order by cantidad asc  
FETCH FIRST 3 ROW ONLY


-- mostrar el promedio de valor del ticket por avion 

select avg(amount)  as promedio_precio , model as avion from ticket_flights tf 
join flights f  on f.flight_id = tf.flight_id 
join aircrafts_data ad on ad.aircraft_code  = f.aircraft_code 
group by ad.model 
order by promedio_precio desc  
