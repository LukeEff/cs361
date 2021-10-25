# Exercise 5 Part 1 (Exception Handling)

class MentalState
  def auditable?
    # true if the external service is online, otherwise false
  end
  def audit!
    # Could fail if external service is offline    
  end
  def do_work
    # Amazing stuff...
  end
end

class OfflineExternalServiceException < StandardError
  def initialize(msg="Error: External service is offline")
    super(msg)
  end
end

def audit_sanity(bedtime_mental_state)
  begin
    if bedtime_mental_state.audit!.ok?
      MorningMentalState.new(:ok)
    else
      MorningMentalState.new(:not_ok)
    end
  rescue
    raise OfflineExternalServiceException.new
  end
end

new_state = audit_sanity(bedtime_mental_state)




# Exercise 5 Part 2 (Don't Return Null / Null Object Pattern)

class BedtimeMentalState < MentalState ; end

class MorningMentalState < MentalState ; end

def audit_saity(bedtime_mental_state)
  raise OfflineExternalServiceException.new unless bedtime_mental_state.auditable?
  
  if bedtime_mental_state.audit!.ok?
    MorningMentalState.new(:ok)
  else 
    MorningMentalState.new(:not_ok)
  end
end

new_state = audit_sanity(bedtime_mental_state)
new_state.do_work




# Exercise 5 Part 3 (Wrapping APIs)
require 'candy_service'

class CandyMachineWrapper < CandyMachine
  def initialize
    super
  end

  def prepare
    super.prepare
  end

  def ready?
    super.ready?
  end

  def make!
    super.make!
  end
end

machine = CandyMachineWrapper.new
machine.prepare

if machine.ready?
  machine.make!
else
  puts "sadness"
end

