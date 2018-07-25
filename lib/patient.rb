class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def all
    @@all
  end

  def new_appointment(doctor, date)
    appt  = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|item| item.patient == self}
  end

  def doctors
    self.appointments.map {|item| item.doctor}
  end





end
