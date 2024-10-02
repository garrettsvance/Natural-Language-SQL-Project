
CREATE TABLE Customer (
    customer_id INTEGER PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    phone_number TEXT UNIQUE NOT NULL,
    join_date DATE
);

CREATE TABLE Service (
    service_id INTEGER PRIMARY KEY,
    service_name TEXT NOT NULL,
    description TEXT NOT NULL,
    duration INTEGER NOT NULL,
    price INTEGER NOT NULL
);

CREATE TABLE Stylist (
    stylist_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    phone_number TEXT NOT NULL,
    hire_date DATE NOT NULL,
    salary INTEGER NOT NULL
);

CREATE TABLE Appointment (
    appointment_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    stylist_id INTEGER NOT NULL,
    service_id INTEGER NOT NULL,
    appointment_date DATE NOT NULL,
    total_price INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (stylist_id) REFERENCES Stylist(stylist_id),
    FOREIGN KEY (service_id) REFERENCES Service(service_id)
);

CREATE TABLE Payment (
    payment_id INTEGER PRIMARY KEY,
    appointment_id INTEGER NOT NULL,
    payment_date DATE NOT NULL,
    amount_paid INTEGER NOT NULL,
    FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id)
);