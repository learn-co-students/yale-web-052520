require 'pry'
require 'require_all'

require_all 'lib'

# require_relative 'lib/doctor.rb'
# require_relative 'lib/patient.rb'
# require_relative 'lib/appointment.rb'

d1 = Doctor.new("Dr. William")
d2 = Doctor.new("Dr. Jeannifer")



binding.pry
0