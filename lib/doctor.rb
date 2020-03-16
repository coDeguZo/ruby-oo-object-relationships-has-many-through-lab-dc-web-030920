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
  
    def new_appointment(patient, date)
      Appointment.new(date, patient, self)
    end
  
    def appointments
      Appointment.all.find_all do |ai| 
        ai.doctor == self 
      end
    end
  
    def patients
      Patient.all
    end
  end