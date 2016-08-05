desc 'updates the status of reservation from available to unused'
# run this at 15 mins grace period, hourly

task update_unused_reservations: :environment do

 # ... set options if any
 # reservation_date
 # time_start
 # time_end
 # mark the status to 2 (0, unused)
 
 now = Time.now
 
 time_start = Time.local(now.year,now.month, now.day, now.hour, 0, 0)
 conv_start = time_start.strftime("%H:%M:%S")
 print "convered is: ".concat(conv_start.to_s)
 
 time_end = Time.local(now.year,now.month, now.day, now.hour, 59, 59)
 conv_end = time_end.strftime("%H:%M:%S")
 
 date_criteria = Date.today.strftime("%F")
 reservations = Reservation.all.where(reservation_date: date_criteria, 
 	                       time_start: conv_start , time_end: conv_end)
 
 reservations.each do |r|
   r.update!(status: 2)
 end
 
end