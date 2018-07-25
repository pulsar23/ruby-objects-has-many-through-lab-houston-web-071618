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
    appt = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select {|item| item.doctor == self}
  end

  def patients
    self.appointments.map {|item| item.patient}
  end

end
