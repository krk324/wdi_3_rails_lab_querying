1. Get a list of all tow trucks.
  02 > TowTruck.all
    Vehicle Load (5.8ms)  SELECT "vehicles".* FROM "vehicles"
   => #<ActiveRecord::Relation [#<Vehicle id: 1, make: "Honda", model: "Accord", color: "gray", year: 2004, vin: "A950ED1BD5AAC5061", category: "car", acquired_at: "2014-06-20", released_at: nil, fee: nil, is_paid: false, notes: "">, #<Vehicle id: 2, make: "Toyota", model: "Camry", color: "blue", year: 2001, vin: "512C991364316FAA7", category: "car", acquired_at: "2014-06-22", released_at: nil, fee: nil, is_paid: false, notes: "">, #<Vehicle id: 3, make: "Subaru", model: "Outback", color: "brown", year: 2007, vin: "97D04B60834F7A59B", category: "car", acquired_at: "2014-06-21", released_at: nil, fee: nil, is_paid: false, notes: "Damage to rear quarter panel">, #<Vehicle id: 4, make: "Chevrolet", model: "Camaro", color: "red", year: 2012, vin: "6A568B8115633A086", category: "car", acquired_at: "2014-06-20", released_at: nil, fee: #<BigDecimal:1053d61b0,'0.2392E3',18(18)>, is_paid: false, notes: "">, #<Vehicle id: 5, make: "Toyota", model: "Prius", color: "silver", year: 2009, vin: "657589CF5373505EE", category: "car", acquired_at: "2014-06-23", released_at: nil, fee: nil, is_paid: false, notes: "">, #<Vehicle id: 6, make: "Jeep", model: "Wrangler", color: "yellow", year: 2002, vin: "15323190B689F17DE", category: "car", acquired_at: "2014-06-10", released_at: "2014-06-12", fee: #<BigDecimal:1053d5030,'0.1257E3',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 7, make: "Ford", model: "Focus", color: "blue", year: 1996, vin: "D0985DF1593A350A4", category: "car", acquired_at: "2014-06-07", released_at: "2014-06-11", fee: #<BigDecimal:1053d46a8,'0.2153E3',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 8, make: "Scion", model: "xB", color: "pink", year: 2004, vin: "F0B94E2D1E83AF882", category: "car", acquired_at: "2014-06-16", released_at: "2014-06-17", fee: #<BigDecimal:1018ebcd0,'0.761E2',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 9, make: "Honda", model: "Fit", color: "red", year: 2012, vin: "9B0A324912B5675F1", category: "car", acquired_at: "2014-06-15", released_at: "2014-06-18", fee: #<BigDecimal:1018eb348,'0.1746E3',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 10, make: "Volkswagen", model: "Beetle", color: "silver", year: 1964, vin: "9F26BC270E630A3A3", category: "car", acquired_at: "2014-06-09", released_at: "2014-06-13", fee: #<BigDecimal:1018ea9c0,'0.2014E3',18(18)>, is_paid: false, notes: "Check bounced, sent to collections">, ...]>

2. Get the vehicle with ID 3.
  03 > Vehicle.find(id: 3)
    Vehicle Load (0.9ms)  SELECT  "vehicles".* FROM "vehicles"  WHERE "vehicles"."id" = 3 LIMIT 1
   => #<Vehicle id: 3, make: "Subaru", model: "Outback", color: "brown", year: 2007, vin: "97D04B60834F7A59B", category: "car", acquired_at: "2014-06-21", released_at: nil, fee: nil, is_paid: false, notes: "Damage to rear quarter panel">
#find is used specifically for id. Returns an object

3. Get the vehicle with VIN D0985DF1593A350A4.
  05 > Vehicle.find_by(vin: 'D0985DF1593A350A4')
    Vehicle Load (3.1ms)  SELECT  "vehicles".* FROM "vehicles"  WHERE "vehicles"."vin" = 'D0985DF1593A350A4' LIMIT 1
   => #<Vehicle id: 7, make: "Ford", model: "Focus", color: "blue", year: 1996, vin: "D0985DF1593A350A4", category: "car", acquired_at: "2014-06-07", released_at: "2014-06-11", fee: #<BigDecimal:1063e1be0,'0.2153E3',18(18)>, is_paid: true, notes: "">

4. Get a list of all vehicles sorted by acquisition date.
  15 > Vehicle.order(:acquired_at)
    Vehicle Load (2.0ms)  SELECT "vehicles".* FROM "vehicles"   ORDER BY "vehicles"."acquired_at" ASC
   => #<ActiveRecord::Relation [#<Vehicle id: 15, make: "Chevrolet", model: "Malibu", color: "green", year: 1999, vin: "FF3DD7D27D4D3D798", category: "car", acquired_at: "2014-06-07", released_at: "2014-06-11", fee: #<BigDecimal:10646ae18,'0.2319E3',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 7, make: "Ford", model: "Focus", color: "blue", year: 1996, vin: "D0985DF1593A350A4", category: "car", acquired_at: "2014-06-07", released_at: "2014-06-11", fee: #<BigDecimal:10646a490,'0.2153E3',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 10, make: "Volkswagen", model: "Beetle", color: "silver", year: 1964, vin: "9F26BC270E630A3A3", category: "car", acquired_at: "2014-06-09", released_at: "2014-06-13", fee: #<BigDecimal:106469b08,'0.2014E3',18(18)>, is_paid: false, notes: "Check bounced, sent to collections">, #<Vehicle id: 6, make: "Jeep", model: "Wrangler", color: "yellow", year: 2002, vin: "15323190B689F17DE", category: "car", acquired_at: "2014-06-10", released_at: "2014-06-12", fee: #<BigDecimal:106469180,'0.1257E3',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 12, make: "Honda", model: "Civic", color: "black", year: 1997, vin: "76F5B45D4B455023F", category: "car", acquired_at: "2014-06-12", released_at: "2014-06-14", fee: #<BigDecimal:1064687f8,'0.1293E3',18(18)>, is_paid: true, notes: "Dent on right front wheel well">, #<Vehicle id: 11, make: "Mazda", model: "Miata", color: "blue", year: 2009, vin: "6CDFC56EF8AF719D7", category: "car", acquired_at: "2014-06-14", released_at: "2014-06-15", fee: #<BigDecimal:1018f3e08,'0.886E2',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 13, make: "Toyota", model: "Corolla", color: "orange", year: 1977, vin: "410DF611BFBAE2CE1", category: "car", acquired_at: "2014-06-15", released_at: "2014-06-19", fee: #<BigDecimal:1018f3480,'0.1984E3',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 14, make: "Dodge", model: "Dart", color: "white", year: 1973, vin: "EF9D38106063F6DCB", category: "car", acquired_at: "2014-06-15", released_at: "2014-06-19", fee: #<BigDecimal:1018f2af8,'0.1984E3',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 9, make: "Honda", model: "Fit", color: "red", year: 2012, vin: "9B0A324912B5675F1", category: "car", acquired_at: "2014-06-15", released_at: "2014-06-18", fee: #<BigDecimal:1018f2170,'0.1746E3',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 20, make: "Honda", model: "VTR1000F", color: "red", year: 1999, vin: "D77336B451C23CC3C", category: "motorcycle", acquired_at: "2014-06-16", released_at: "2014-06-17", fee: #<BigDecimal:1018f17e8,'0.1091E3',18(18)>, is_paid: true, notes: "Front tire was flat upon arrival">, ...]>

5. Get a list of all silver vehicles, ordered alphabetically by make.
  22 >   Vehicle.where(color: 'white').order(:make)
    Vehicle Load (1.5ms)  SELECT "vehicles".* FROM "vehicles"  WHERE "vehicles"."color" = 'white'  ORDER BY "vehicles"."make" ASC
   => #<ActiveRecord::Relation [#<Vehicle id: 14, make: "Dodge", model: "Dart", color: "white", year: 1973, vin: "EF9D38106063F6DCB", category: "car", acquired_at: "2014-06-15", released_at: "2014-06-19", fee: #<BigDecimal:1064896b0,'0.1984E3',18(18)>, is_paid: true, notes: "">]>


6. Get a list of all red Honda vehicles that are cars.
  24 > Vehicle.where(make: 'Honda' ,color: 'red', category: 'car')
    Vehicle Load (0.7ms)  SELECT "vehicles".* FROM "vehicles"  WHERE "vehicles"."make" = 'Honda' AND "vehicles"."color" = 'red' AND "vehicles"."category" = 'car'
   => #<ActiveRecord::Relation [#<Vehicle id: 9, make: "Honda", model: "Fit", color: "red", year: 2012, vin: "9B0A324912B5675F1", category: "car", acquired_at: "2014-06-15", released_at: "2014-06-18", fee: #<BigDecimal:1054462d0,'0.1746E3',18(18)>, is_paid: true, notes: "">]>

7. Get a count of all vehicles that are motorcycles.
  29 > Vehicle.where(category: 'motorcycle').count
     (0.5ms)  SELECT COUNT(*) FROM "vehicles"  WHERE "vehicles"."category" = 'motorcycle'
   => 5

8. Get a count of vehicles that are currently on the lot (i.e. not released).
  30 > Vehicle.where(released_at:nil).count
     (1.4ms)  SELECT COUNT(*) FROM "vehicles"  WHERE "vehicles"."released_at" IS NULL
   => 6

9. Get a list of all tow trucks whose mileage is over 200,000.
  33 > TowTruck.where('mileage > ?', 200000)
    TowTruck Load (2.0ms)  SELECT "tow_trucks".* FROM "tow_trucks"  WHERE (mileage > 200000)
   => #<ActiveRecord::Relation [#<TowTruck id: 1, make: "International", model: "DT 444E", year: 1998, acquired_at: "2008-06-24", last_service_at: "2014-02-24", mileage: 282453, notes: "Transmission rebuilt December 2012">]>

10. Get a list of all tow trucks whose last service was more than 8 months ago.
  51 > TowTruck.where('last_service_at > ?', Date.today - 8.month)
    TowTruck Load (0.5ms)  SELECT "tow_trucks".* FROM "tow_trucks"  WHERE (last_service_at > '2013-10-24')
   => #<ActiveRecord::Relation [#<TowTruck id: 1, make: "International", model: "DT 444E", year: 1998, acquired_at: "2008-06-24", last_service_at: "2014-02-24", mileage: 282453, notes: "Transmission rebuilt December 2012">, #<TowTruck id: 2, make: "Freightliner", model: "FL70", year: 1997, acquired_at: "2007-06-24", last_service_at: "2013-12-24", mileage: 171024, notes: "Front bumper needs work for inspection">]>

11. Get the average tow fee across all vehicles.
  70 > Vehicle.average(:fee).round(2).to_s
   (0.7ms)  SELECT AVG("vehicles"."fee") AS avg_id FROM "vehicles"
  => 157.77

12. Get the top 3 vehicles with the highest tow fees.
  83 > Vehicle.where.not(fee: nil).order(fee: :desc).limit(3)
    Vehicle Load (0.8ms)  SELECT  "vehicles".* FROM "vehicles"   ORDER BY fee DESC LIMIT 3
   => #<ActiveRecord::Relation [#<Vehicle id: 2, make: "Toyota", model: "Camry", color: "blue", year: 2001, vin: "512C991364316FAA7", category: "car", acquired_at: "2014-06-22", released_at: nil, fee: nil, is_paid: false, notes: "">, #<Vehicle id: 3, make: "Subaru", model: "Outback", color: "brown", year: 2007, vin: "97D04B60834F7A59B", category: "car", acquired_at: "2014-06-21", released_at: nil, fee: nil, is_paid: false, notes: "Damage to rear quarter panel">, #<Vehicle id: 1, make: "Honda", model: "Accord", color: "gray", year: 2004, vin: "A950ED1BD5AAC5061", category: "car", acquired_at: "2014-06-20", released_at: nil, fee: nil, is_paid: false, notes: "">]>

13. Get all vehicles that have a fee assessed which has not been paid.
  04 > Vehicle.where.not(fee: nil).where(is_paid: FALSE)
    Vehicle Load (0.7ms)  SELECT "vehicles".* FROM "vehicles"  WHERE ("vehicles"."fee" IS NOT NULL) AND (is_paid = FALSE)
   => #<ActiveRecord::Relation [#<Vehicle id: 4, make: "Chevrolet", model: "Camaro", color: "red", year: 2012, vin: "6A568B8115633A086", category: "car", acquired_at: "2014-06-20", released_at: nil, fee: #<BigDecimal:105527708,'0.2392E3',18(18)>, is_paid: false, notes: "">, #<Vehicle id: 10, make: "Volkswagen", model: "Beetle", color: "silver", year: 1964, vin: "9F26BC270E630A3A3", category: "car", acquired_at: "2014-06-09", released_at: "2014-06-13", fee: #<BigDecimal:105526cb8,'0.2014E3',18(18)>, is_paid: false, notes: "Check bounced, sent to collections">]>

14. Get a list of all released vehicles, sorted by most recently released.
  01 > Vehicle.where.not(released_at: nil).order(released_at: :DESC)
    Vehicle Load (1.6ms)  SELECT "vehicles".* FROM "vehicles"  WHERE ("vehicles"."released_at" IS NOT NULL)  ORDER BY released_at DESC
   => #<ActiveRecord::Relation [#<Vehicle id: 17, make: "Harley-Davidson", model: "Sportster 883", color: "red", year: 2002, vin: "6C2B482A0EBC0F5B7", category: "motorcycle", acquired_at: "2014-06-20", released_at: "2014-06-21", fee: #<BigDecimal:105534e80,'0.1024E3',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 14, make: "Dodge", model: "Dart", color: "white", year: 1973, vin: "EF9D38106063F6DCB", category: "car", acquired_at: "2014-06-15", released_at: "2014-06-19", fee: #<BigDecimal:1055344a8,'0.1984E3',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 13, make: "Toyota", model: "Corolla", color: "orange", year: 1977, vin: "410DF611BFBAE2CE1", category: "car", acquired_at: "2014-06-15", released_at: "2014-06-19", fee: #<BigDecimal:1065bbc68,'0.1984E3',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 19, make: "BMW", model: "R1200GS", color: "silver", year: 2014, vin: "F3A88F970B736BF06", category: "motorcycle", acquired_at: "2014-06-18", released_at: "2014-06-19", fee: #<BigDecimal:1065bb2e0,'0.1125E3',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 18, make: "BMW", model: "K1200GT", color: "blue", year: 2006, vin: "33E7651FFE585BA02", category: "motorcycle", acquired_at: "2014-06-17", released_at: "2014-06-19", fee: #<BigDecimal:1065ba8e0,'0.1637E3',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 9, make: "Honda", model: "Fit", color: "red", year: 2012, vin: "9B0A324912B5675F1", category: "car", acquired_at: "2014-06-15", released_at: "2014-06-18", fee: #<BigDecimal:1065b9e40,'0.1746E3',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 20, make: "Honda", model: "VTR1000F", color: "red", year: 1999, vin: "D77336B451C23CC3C", category: "motorcycle", acquired_at: "2014-06-16", released_at: "2014-06-17", fee: #<BigDecimal:1065b9440,'0.1091E3',18(18)>, is_paid: true, notes: "Front tire was flat upon arrival">, #<Vehicle id: 8, make: "Scion", model: "xB", color: "pink", year: 2004, vin: "F0B94E2D1E83AF882", category: "car", acquired_at: "2014-06-16", released_at: "2014-06-17", fee: #<BigDecimal:1065b8a18,'0.761E2',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 11, make: "Mazda", model: "Miata", color: "blue", year: 2009, vin: "6CDFC56EF8AF719D7", category: "car", acquired_at: "2014-06-14", released_at: "2014-06-15", fee: #<BigDecimal:1065b8018,'0.886E2',18(18)>, is_paid: true, notes: "">, #<Vehicle id: 12, make: "Honda", model: "Civic", color: "black", year: 1997, vin: "76F5B45D4B455023F", category: "car", acquired_at: "2014-06-12", released_at: "2014-06-14", fee: #<BigDecimal:1065b36a8,'0.1293E3',18(18)>, is_paid: true, notes: "Dent on right front wheel well">, ...]>

15. Get a list of all vehicles that have notes.
  2.1.2 :015 > Vehicle.where.not(notes: [nil,''])
    Vehicle Load (1.9ms)  SELECT "vehicles".* FROM "vehicles"  WHERE ("vehicles"."notes" != '')
   => #<ActiveRecord::Relation [#<Vehicle id: 3, make: "Subaru", model: "Outback", color: "brown", year: 2007, vin: "97D04B60834F7A59B", category: "car", acquired_at: "2014-06-21", released_at: nil, fee: nil, is_paid: false, notes: "Damage to rear quarter panel">, #<Vehicle id: 10, make: "Volkswagen", model: "Beetle", color: "silver", year: 1964, vin: "9F26BC270E630A3A3", category: "car", acquired_at: "2014-06-09", released_at: "2014-06-13", fee: #<BigDecimal:1018f8278,'0.2014E3',18(18)>, is_paid: false, notes: "Check bounced, sent to collections">, #<Vehicle id: 12, make: "Honda", model: "Civic", color: "black", year: 1997, vin: "76F5B45D4B455023F", category: "car", acquired_at: "2014-06-12", released_at: "2014-06-14", fee: #<BigDecimal:1054df840,'0.1293E3',18(18)>, is_paid: true, notes: "Dent on right front wheel well">, #<Vehicle id: 20, make: "Honda", model: "VTR1000F", color: "red", year: 1999, vin: "D77336B451C23CC3C", category: "motorcycle", acquired_at: "2014-06-16", released_at: "2014-06-17", fee: #<BigDecimal:1054dee40,'0.1091E3',18(18)>, is_paid: true, notes: "Front tire was flat upon arrival">]>

16. Get the VINs of all vehicles manufactured before the year 2000.
  2.1.2 :016 > Vehicle.where('year < ?', 2000).pluck(:vin)
    Vehicle Load (0.9ms)  SELECT "vehicles"."vin" FROM "vehicles"  WHERE (year < 2000)
   => #<ActiveRecord::Relation [#<Vehicle id: nil, vin: "D0985DF1593A350A4">, #<Vehicle id: nil, vin: "9F26BC270E630A3A3">, #<Vehicle id: nil, vin: "76F5B45D4B455023F">, #<Vehicle id: nil, vin: "410DF611BFBAE2CE1">, #<Vehicle id: nil, vin: "EF9D38106063F6DCB">, #<Vehicle id: nil, vin: "FF3DD7D27D4D3D798">, #<Vehicle id: nil, vin: "D77336B451C23CC3C">]>

17. Get the make, model, and year of all silver vehicles, ordered by year.
  2.1.2 :017 >   Vehicle.where('color = ?', 'silver').order(:year).pluck(:make,:model,:year)
     (0.7ms)  SELECT "vehicles"."make", "vehicles"."model", "vehicles"."year" FROM "vehicles"  WHERE (color = 'silver')
   => [["Toyota", "Prius", 2009], ["Volkswagen", "Beetle", 1964], ["BMW", "R1200GS", 2014]]

18. Get the total income from all vehicles (i.e. sum of all fees that are paid).
Vehicle.where(:paid TRUE).sum(:fee).round(2).to_s
