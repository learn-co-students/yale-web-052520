class Doctor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def patients
        # listAppointments = Appointment.all.select {|appointment| appointment.doctor == self}
        self.appointments.map { |appointment| appointment.patient}
        appointments.map { |appointment| appointment.patient}
    end
  
end