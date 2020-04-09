class Patient
  attr_accessor :name
  
  @@all = []
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self 
  end 
  
  def self.all
    @@all 
  end
  
  def new_appointment(doctor,date)
     
      Appointment.new(doctor,date,Patient)
  
    
  end
  
  def appointments 
    Appointment.all.select do |appointment| appointment.patient == self
  end
  end 
  
  def doctors
    
  end


  
end