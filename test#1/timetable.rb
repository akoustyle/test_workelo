
class TimeSlot
   attr_reader :start, :end

   def initialize(attributes = {})
    @start = attributes[:start]
    @end = attributes[:end]
   end
end

# Parser hash Json
# Stocker dans 2 variables d’instance @andy_slots @sandra_slots leur slots ( [ [ start[0] , end[0] ] , [ start[1] , end[1] ] ] (array dans array)
# busy_slots = []
# andy_slots for each |slot| { busy_slots << slot }
# sandra_slots for each |slot| { busy_slots << slot }
# busy_slots = [ [ start[0] , end[0] ], [ start[1] , end[1] ], [ start[2] , end[2] ], .... ]
# create def that lists all slots qui return un array all_slots
# dispo_slots = all_slots - busy_slots
# creer un methode display_slots pour afficher les slots dispo dans le terminal
