require 'pry'
require 'require_all'
# binding.pry
require_all 'lib'

# require_relative 'lib/doctor.rb'
# require_relative 'lib/patient.rb'
# require_relative 'lib/appointment.rb'

d1 = Doctor.new("Dr. William")
d2 = Doctor.new("Dr. Jeannifer")

p1 = Patient.new("Sia")
p2 = Patient.new("Ria")
p3 = Patient.new("Kia")
p4 = Patient.new("Dia")

a1 = Appointment.new("05/29/2020", d1, p2)
a2 = Appointment.new("05/30/2020", d2, p1)
a3 = Appointment.new("06/29/2020", d1, p3)
a4 = Appointment.new("06/18/2020", d1, p4)
a5 = Appointment.new("07/29/2020", d2, p2)
a6 = Appointment.new("08/13/2020", d2, p3)



binding.pry
0