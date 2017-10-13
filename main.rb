require_relative 'patient'

new_patient = Patient.new("Jisie", "David")


puts new_patient.first_name
puts new_patient.last_name
begin
	puts patient_contact_info
rescue NameError
	puts "tried to print an undefined local variable"
end

begin
	puts new_patient.patient_status(:coma)
rescue ArgumentError
	puts "Argument is not a string"
end

begin
	puts new_patient.patient_currently_admitted?
rescue ArgumentError
	puts "wrong number of arguments given"
end

begin
	puts new_patient.patient_new_total(125)
rescue ZeroDivisionError
	puts "Cannot divide by zero!!! Literally not possible"
end

begin
	new_patient.add_med_to_list("lipitor", 123.12)
rescue ArgumentError
	puts "YOUR NUMBER IS NOT AN INTERGER! Also did you know kangaroos do not have the ability to jump backwards?"
end

begin
	new_patient.patient_medications_list
rescue RuntimeError
	puts "There was a runtime error. try again, or don't."
end


