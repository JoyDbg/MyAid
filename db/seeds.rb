puts "Cleaning the database"
Appointment.destroy_all
User.destroy_all
Treatment.destroy_all
Doctor.destroy_all

puts "Seeding"

# Creating the Treatments
paracetamol = Treatment.create!(name: "paracetamol", category: "pills")
tylenol = Treatment.create!(name: "tylenol", category: "pills")
apronax = Treatment.create!(name: "apronax", category: "pills")
dectancyl = Treatment.create!(name: "dectancyl", category: "pills")
relaxon = Treatment.create!(name: "relaxon", category: "pills")
muscadol = Treatment.create!(name: "muscadol", category: "pills")
targin = Treatment.create!(name: "targin", category: "pills")
zopiclone = Treatment.create!(name: "zopiclone", category: "pills")
humira = Treatment.create!(name: "humira", category: "pills")
navidoxine = Treatment.create!(name: "navidoxine", category: "pills")
codeine = Treatment.create!(name:"codeine", category: "pills")
amoxiciline = Treatment.create!(name:"amoxicillin (antibiotic)", category: "pills")

bandage = Treatment.create!(name: "bandage", category: "cares")
cream = Treatment.create!(name: "skin cream on burn", category: "cares")
bath = Treatment.create!(name: "feet bath", category: "cares")
betadine = Treatment.create!(name: "betadine", category: "cares")

meditation = Treatment.create!(name: "meditation", category: "exercises")
relaxation = Treatment.create!(name: "relaxation", category: "exercises")
gentle_walk = Treatment.create!(name: "gentle walk", category: "exercises")
dynamic_walk = Treatment.create!(name: "dynamic walk", category: "exercises")
physical_exercice = Treatment.create!(name: "physical exercise", category: "exercises")


# Creating the users
theo = User.create!(
  email: "tt@gmail.com",
  password: "123456",
  first_name: "theo",
  last_name: "thiberge",
  birthdate: "01/01/1992",
  address: "68 avenue Parmentier Paris"
)
joy = User.create!(
  email: "joy@icloud.com" ,
  password: "123456",
  first_name: "joy",
  last_name: "danenberg",
  birthdate: "04/04/1993",
  address: "12 rue saint Maur Paris"
)
diane = User.create!(
  email: "diane@icloud.com" ,
  password: "123456",
  first_name: "diane",
  last_name: "lesvenan",
  birthdate: "03/03/1994",
  address: "place de l'église Neuilly sur seine"
)
maung = User.create!(
  email: "maung@icloud.com" ,
  password: "123456",
  first_name: "maung maung",
  last_name: "kha",
  birthdate: "05/06/1990",
  address: "gare montparnasse Paris"
)

# Creating the prescriptions

prescription_1 = Prescription.create!(start_date: "10/03/2023", end_date: "20/03/2023", todo_hours: 11, todo_minutes: 30, day_half: "AM", comment: "2 x 500mg - Take the pills before the main meal of the day", user: theo, treatment: paracetamol, taken_date: Date.today)

prescription_2 = Prescription.create!(start_date: "07/03/2023", end_date: "17/03/2023", todo_hours: 9, todo_minutes: 00,  day_half: "PM", comment: "3 x 125mg - Take the pills before going to sleep", user: theo, treatment: tylenol, taken_date: Date.today)

prescription_5 = Prescription.create!(start_date: "17/03/2023", end_date: "21/03/2023", todo_hours: 1, todo_minutes: 00, day_half: "PM",  comment: "4 x 250mg - Take during the meal", user: theo, treatment: muscadol)

prescription_3 = Prescription.create!(start_date: "02/03/2023", end_date: "22/03/2023", todo_hours: 10, todo_minutes: 00, day_half: "AM",  comment: "1 x 250mg - In the morning ", user: theo, treatment: amoxiciline)

prescription_6 = Prescription.create!(start_date: "04/03/2023", end_date: "19/03/2023", todo_hours: 4, todo_minutes: 00, day_half: "PM",  comment: "1 x 500mg - Take in the afternoon", user: theo, treatment: targin)

prescription_4 = Prescription.create!(start_date: "03/03/2023", end_date: "18/03/2023", todo_hours: 11, todo_minutes: 00, day_half: "AM",  comment: "2 tablets - Take with a fair amount of water", user: theo, treatment: relaxon)

prescription_7 = Prescription.create!(start_date: "03/03/2023", end_date: "18/03/2023", todo_hours: 10, todo_minutes: 00, day_half: "PM",  comment: "Apply a fair amount on the burnt area before going to bed", user: theo, treatment: cream)

prescription_8 = Prescription.create!(start_date: "15/03/2023", end_date: "27/03/2023", todo_hours: 7, todo_minutes: 00, day_half: "PM",  comment: "During your shower, instead of the current shower gel and shampoo", user: theo, treatment: betadine)

prescription_9 = Prescription.create!(start_date: "04/03/2023", end_date: "19/03/2023", todo_hours: 2, todo_minutes: 00, day_half: "PM",  comment: "Spend around 30 min outdoors to exercise", user: theo, treatment: dynamic_walk)

prescription_10 = Prescription.create!(start_date: "14/03/2023", end_date: "19/03/2023", todo_hours: 9, todo_minutes: 00, day_half: "AM",  comment: "Save a 1h-time slot to practice meditation to relax and accept the present time", user: theo, treatment: meditation)


#prescriptions for demo day
prescription_12 = Prescription.create!(start_date: "16/03/2023", end_date: "30/03/2023", todo_hours: 2, todo_minutes: 30, day_half: "PM", comment: "2 x 500mg - Take the pills with a huge glass of water", user: diane, treatment: paracetamol, taken_date: Date.today)
prescription_13 = Prescription.create!(start_date: "16/03/2023", end_date: "30/03/2023", todo_hours: 6, todo_minutes: 30, day_half: "PM", comment: "2 x 500mg - Take the pills with a huge glass of water", user: diane, treatment: paracetamol)
prescription_14 = Prescription.create!(start_date: "16/03/2023", end_date: "30/03/2023", todo_hours: 10, todo_minutes: 30, day_half: "PM", comment: "2 x 500mg - Take the pills with a huge glass of water", user: diane, treatment: paracetamol)
prescription_15 = Prescription.create!(start_date: "16/03/2023", end_date: "23/03/2023", todo_hours: 4, todo_minutes: 30, day_half: "PM", comment: "1 x 1000mg - Don't mix this pill with alcool", user: diane, treatment: amoxiciline)
prescription_16 = Prescription.create!(start_date: "14/03/2023", end_date: "15/03/2023", todo_hours: 9, todo_minutes: 00, day_half: "AM", comment: "2 x 500 mg - Don't mix this pill with alcool", user: diane, treatment: codeine)
prescription_17 = Prescription.create!(start_date: "16/03/2023", end_date: "23/03/2023", todo_hours: 9, todo_minutes: 00, day_half: "PM", comment: "Use it instead of your current shower gel", user: diane, treatment: betadine)
prescription_18 = Prescription.create!(start_date: "16/03/2023", end_date: "30/03/2023", todo_hours: 10, todo_minutes: 30, day_half: "AM", comment: "Disinfect the wound and make sure it's dry before to change the bandage", user: diane, treatment: bandage, taken_date: Date.today)
prescription_19 = Prescription.create!(start_date: "16/03/2023", end_date: "30/03/2023", todo_hours: 5, todo_minutes: 00, day_half: "PM", comment: "around 15 minutes to prevent phlebitis", user: diane, treatment: gentle_walk)
prescription_20 = Prescription.create!(start_date: "16/03/2023", end_date: "30/03/2023", todo_hours: 10, todo_minutes: 00, day_half: "PM", comment: "meditate to accept and fight the pain", user: diane, treatment: meditation)

# creating doctors
doctor1 = Doctor.create!(title: "Dr.", name: "Doe", specialty: "Surgeon", address: "1 Av. Claude Vellefaux, 75010 Paris", latitude: 37.7749, longitude: -122.4194, user: theo)
doctor2 = Doctor.create!(title: "Nrs.", name: "Smith", specialty: "Pediatrics", address: "6 Rue de Jarente, 75004 Paris", latitude: 37.7749, longitude: -122.4194, user: theo)
doctor3 = Doctor.create!(title: "Dr.", name: "Johnson", specialty: "Ophthalmologist", address: "104 Bd Saint-Germain, 75006 Paris", latitude: 37.7749, longitude: -122.4194, user: theo)
doctor4 = Doctor.create!(title: "Pr.", name: "Malek", specialty: "Cardiologist", address: "92 Av. de la République, 75011 Paris", latitude: 37.7749, longitude: -122.4194, user: theo)
doctor5 = Doctor.create!(title: "Dr.", name: "Hendricks", specialty: "Dermatology", address: "61 Av. Franklin Delano Roosevelt, 75008 Paris", latitude: 37.7749, longitude: -122.4194, user: theo)
doctor6 = Doctor.create!(title: "Pr.", name: "Donovan", specialty: "General", address: "68 Rue Pernety, 75014 Paris", latitude: 37.7749, longitude: -122.4194, user: theo)
doctor7 = Doctor.create!(title: "Pr.", name: "Pilgert", specialty: "Cancer", address: "184 Rue du Faubourg Saint-Antoine, 75012 Paris", latitude: 37.7749, longitude: -122.4194, user: theo)

#doctors for demo day
doctor8 = Doctor.create!(title: "Dr.", name: "Estegassy", specialty: "Post Op", address: "1 Av. Claude Vellefaux, 75010 Paris", latitude: 37.7749, longitude: -122.4194, user: diane)
doctor9 = Doctor.create!(title: "Nrs.", name: "Hawks", specialty: "Post Op Care", address: "102 Rue Saint-Maur, 75011 Paris", latitude: 37.7749, longitude: -122.4194, user: diane)


# Appointments
appointment1 = Appointment.create(date: Date.parse('11/12/2023'), comment: "Meeting with the surgeon to prepare the operation of next month. Should last around 45min", user: theo, doctor: doctor1, appointment_hour: 8, appointment_min: 30, day_half: "AM" )
appointment2 = Appointment.create(date: Date.today, comment: "The nurse will show me how to do the injections after the operation", user: theo, doctor: doctor2, appointment_hour: 10, appointment_min: 30, day_half: "AM" )
appointment3 = Appointment.create(date: Date.today, comment: "Yearly meeting with the ophtalmologist in order to see how my sight has evolved. Ask for the new glasses prescription!", user: theo, doctor: doctor3, appointment_hour: 4, appointment_min: 30, day_half: "PM" )
appointment4 = Appointment.create(date: Date.today, comment: "General checkup. He is replacing Dr Linda for the next months because she is pregnant.", user: theo, doctor: doctor4, appointment_hour: 1, appointment_min: 30, day_half: "PM" )
appointment5 = Appointment.create(date: Date.today, comment: "Yearly check-up. I should ask her regarding the different suncreams I've seen online that seem to be more ecological. Can they be trusted?", user: theo, doctor: doctor5, appointment_hour: 3, appointment_min: 0, day_half: "PM" )
appointment6 = Appointment.create(date: Date.today, comment: "Show her your latest blood test results. It seems that you're a bit low in iron", user: theo, doctor: doctor6, appointment_hour: 11, appointment_min: 30, day_half: "AM" )
appointment7 = Appointment.create(date: Date.today, comment: "Global check-up to make sure I don't have any hereditary risks.", user: theo, doctor: doctor7, appointment_hour: 7, appointment_min: 30, day_half: "PM" )


#appointments for demo day
appointment8 = Appointment.create(date: Date.today, comment: "Post Op checking, ask when I can do sport again ", user: diane, doctor: doctor8, appointment_hour: 6, appointment_min: 30, day_half: "PM" )
appointment9 = Appointment.create(date: Date.parse('18/03/2023'), comment: "The nurse will show me how to change the bandage", user: diane, doctor: doctor9, appointment_hour: 10, appointment_min: 30, day_half: "AM" )


#diaries seed
# t.integer "pain_scale"
#t.integer "motivation_scale"
#t.string "daily_feeling"
#t.bigint "user_id", null: false
#t.datetime "created_at", null: false
#t.datetime "updated_at", null: false
#t.index ["user_id"], name: "index_diaries_on_user_id"

# Diary
diary1 = Diary.create!(pain_scale: 8, motivation_scale: 2, daily_feeling: "I am suffering a lot today, I am trying to fight the pain but it's hard because I am so exausted", user: diane, date: Date.today)
diary2 = Diary.create!(pain_scale: 7, motivation_scale: 3, daily_feeling: "I am suffering a bit less than yesterday, it gives me hope", user: diane, date: Date.today )
diary3 = Diary.create!(pain_scale: 8, motivation_scale: 3, daily_feeling: "The real pain is back but I am seeing my friends today so I already feel better", user: diane, date: Date.today )
diary4 = Diary.create!(pain_scale: 7, motivation_scale: 5, daily_feeling: "I went out for the first time today, it's so cool to be able to go outside again", user: diane, date: Date.today )
diary5 = Diary.create!(pain_scale: 6, motivation_scale: 5, daily_feeling: "I feel tired but I am happy the scarf looks great ", user: diane, date: Date.today )

# Motivational quotes
quote1 = Quote.create!(motivational_quote: "Healing requires from us to stop struggling, but to enjoy life more and endure it less.", author: "Darina Stoyanova")
quote2 = Quote.create!(motivational_quote: "Part of the healing process is sharing with other people who care.", author: "Jerry Cantrell")
quote3 = Quote.create!(motivational_quote: "Just one small positive thought in the morning can change your whole day.", author: "Dalaï lama")
quote4 = Quote.create!(motivational_quote: "Don’t be afraid to give up the good to go for the great.", author: "John D. Rockefeller")
quote5 = Quote.create!(motivational_quote: "Magic is believing in yourself. If you can make that happen, you can make anything happen.", author: "Johann Wolfgang Von Goethe")
quote6 = Quote.create!(motivational_quote: "Impossible is just an opinion.", author: "Paulo Coelho")
quote7 = Quote.create!(motivational_quote: "One day or day one. You decide.", author: "Unknown")
quote8 = Quote.create!(motivational_quote: "I’m alive, motivated and ready to slay the day #MONSLAY.", author: "Unknown")
quote9 = Quote.create!(motivational_quote: "Sometimes when you’re in a dark place you think you’ve been buried but you’ve actually been planted.", author: "Christine Caine")
quote10 = Quote.create!(motivational_quote: "Start where you are. Use what you have. Do what you can.", author: "Arthur Ashe")


puts "Seeded"
