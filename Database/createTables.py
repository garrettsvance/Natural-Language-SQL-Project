import sqlite3
import random
from datetime import datetime, timedelta

# Connect to SQLite database
conn = sqlite3.connect('salon_database.db')
conn.execute("PRAGMA foreign_keys = 1")
cursor = conn.cursor()

# Create Tables

# SQLite doesn't have a specific integer type with length specification. For phone numbers, it's often better to use
# TEXT to preserve leading zeros and allow for potential special characters (like '+' for country codes)
cursor.execute('''
CREATE TABLE IF NOT EXISTS Customer (
    customer_id INTEGER PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    phone_number TEXT UNIQUE NOT NULL,
    join_date DATE
)
''')

cursor.execute('''
CREATE TABLE IF NOT EXISTS Service (
    service_id INTEGER PRIMARY KEY,
    service_name TEXT NOT NULL,
    description TEXT NOT NULL,
    duration INTEGER NOT NULL,
    price INTEGER NOT NULL
)
''')

cursor.execute('''
CREATE TABLE IF NOT EXISTS Stylist (
    stylist_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    phone_number TEXT NOT NULL,
    hire_date DATE NOT NULL,
    salary INTEGER NOT NULL
)
''')

cursor.execute('''
CREATE TABLE IF NOT EXISTS Appointment (
    appointment_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    stylist_id INTEGER NOT NULL,
    service_id INTEGER NOT NULL,
    appointment_date DATE NOT NULL,
    total_price INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (stylist_id) REFERENCES Stylist(stylist_id),
    FOREIGN KEY (service_id) REFERENCES Service(service_id)
)
''')

cursor.execute('''
CREATE TABLE IF NOT EXISTS Payment (
    payment_id INTEGER PRIMARY KEY,
    appointment_id INTEGER NOT NULL,
    payment_date DATE NOT NULL,
    amount_paid INTEGER NOT NULL,
    FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id)
)
''')

conn.commit()
conn.close()
