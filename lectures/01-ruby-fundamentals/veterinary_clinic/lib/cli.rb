# Deliverables

$patients = [
    { id: 1, species:"dog", name:"Jack", owner:"John Smith", phone: "999-999-9999"},
    { id: 2, species:"bird", name:"Mia", owner:"Jane Doe", phone: "888-888-8888"},
    { id: 3, species:"cat", name:"Pops", owner:"Lorenzo Sorrells", phone:"777-777-7777"}
]

$clinics = [
    {id: 1, clinic_name:"St. Paws", address:"1234 Puppy Way", phone:"111-111-1111"},
    {id: 2, clinic_name:"St. Claws", address:"9876 Puppy Way", phone:"222-222-2222"}
]

def initialize_app 
    puts "Welcome to Flatiron Veterinary Clinic"
    puts "Please Choose an Option:"
    puts "1. List All Patients"
    puts "2. List All Clinics"
    puts "3. List Patient Names"
    puts "4. Add New Patient"
    puts "0. Exit"

    user_input = gets.strip

    # Break Out Activity #1

    def add_patient
        puts "Please enter Patient Name"
        name = gets.strip
        puts "Please enter Patient Species"
        species = gets.strip
        puts "Please enter Patient Owner"
        owner = gets.strip
        puts "Please enter Patient Phone"
        phone = gets.strip

        new_patient = {
            id: $patients.length + 1,
            name: name,
            species: species,
            owner: owner,
            phone: phone
        }

        $patients << new_patient
        #patients.push new_patient

        puts $patients


    
    end

    case user_input
    when "1"
        $patients.each {|v| puts v}
    when "0"
        puts "Goodbye!"
    when "2"
        $clinics.each {|c| puts c[:clinic_name]}
    when "3"
        patients_arr = $patients.map {|v| v[:name]}
        puts patients_arr
    when "4"
        add_patient()
    end


    # Break Out Activity #2

    # clinics = [
    # { id: 1, clinic_name: "Flatiron Veterinary Clinic", address: "111 Hacker Way", phone: "777-777-7777"},
    # { id: 2, clinic_name: "Bakersville Veterinary Clinic", address: "222 Hyde Street", phone: "666-666-6666"},
    # ...
    # ]
end 

