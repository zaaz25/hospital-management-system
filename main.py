import mysql.connector
print("Connecting as hospital_user...")

db = mysql.connector.connect(
    host="localhost",
    user="hospital_user",
    password="1234",
    database="hospital_db"
)
cursor = db.cursor()

while True:
    print("\n--- Hospital Management System ---")
    print("1. Add Patient")
    print("2. View Patients")
    print("3. Add Appointment")
    print("4. View Appointments")
    print("5. View Treatments")
    print("6. Exit")

    choice = input("Choose option: ")

    # Add Patient
    if choice == "1":
        first_name = input("First name: ")
        last_name = input("Last name: ")
        gender = input("Gender: ")
        birth_date = input("Birth date (YYYY-MM-DD): ")
        phone = input("Phone: ")
        address = input("Address: ")
        email = input("Email: ")

        query = """
        INSERT INTO Patients
        (first_name, last_name, gender, birth_date, phone, address, email)
        VALUES (%s,%s,%s,%s,%s,%s,%s)
        """

        values = (first_name, last_name, gender, birth_date, phone, address, email)

        cursor.execute(query, values)
        db.commit()

        print("Patient added successfully")

    # View Patients
    elif choice == "2":
        cursor.execute("SELECT * FROM Patients")

        patients = cursor.fetchall()

        for patient in patients:
            print(patient)

    # Add Appointment
    elif choice == "3":
        patient_id = input("Patient ID: ")
        doctor_id = input("Doctor ID: ")
        appointment_date = input("Date (YYYY-MM-DD): ")
        appointment_time = input("Time (HH:MM:SS): ")
        status = input("Status: ")

        query = """
        INSERT INTO Appointments
        (patient_id, doctor_id, appointment_date, appointment_time, status)
        VALUES (%s,%s,%s,%s,%s)
        """

        values = (patient_id, doctor_id, appointment_date, appointment_time, status)

        cursor.execute(query, values)
        db.commit()

        print("Appointment added successfully")

    # View Appointments
    elif choice == "4":
        query = """
        SELECT
        Patients.first_name,
        Patients.last_name,
        Doctors.first_name,
        Doctors.last_name,
        Appointments.appointment_date,
        Appointments.status

        FROM Appointments

        JOIN Patients
        ON Appointments.patient_id = Patients.patient_id

        JOIN Doctors
        ON Appointments.doctor_id = Doctors.doctor_id
        """

        cursor.execute(query)

        results = cursor.fetchall()

        for row in results:
            print(row)

    # View Treatments
    elif choice == "5":
        query = """
        SELECT
        Patients.first_name,
        Patients.last_name,
        Treatments.diagnosis,
        Treatments.treatment_description,
        Treatments.cost

        FROM Treatments

        JOIN Appointments
        ON Treatments.appointment_id = Appointments.appointment_id

        JOIN Patients
        ON Appointments.patient_id = Patients.patient_id
        """

        cursor.execute(query)

        results = cursor.fetchall()

        for row in results:
            print(row)

    # Exit
    elif choice == "6":
        print("Program closed")
        break

    else:
        print("Invalid option")
