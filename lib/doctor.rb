require "pry"
class Doctor
  attr_accessor :name
  @@all=[]
  def initialize(name)
    @name = name 
    @@all << self
    @appointments = []
    
  end
  
 
  
  def self.all
    @@all
  end
  
  def new_appointment(patient,date)
    Appointment.new(date,patient,self)
    
    
  end
  
  def appointments
 
    
    Appointment.all.select do |appointment| appointment.doctor == self
  end
  
  end

  def patients
     appointments.map do |b| 
       b.patient
    end 
   end


end 
     
     
     
     
     