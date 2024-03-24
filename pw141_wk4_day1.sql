CREATE TABLE Salesperson (
    salesperson_id INT PRIMARY KEY,
    name VARCHAR(255),
  
);

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255),
  
);

CREATE TABLE Car (
    car_id INT PRIMARY KEY,
    serial_number VARCHAR(255),
    make VARCHAR(255),
    model VARCHAR(255),
    
);

CREATE TABLE Invoice (
    invoice_id INT PRIMARY KEY,
    salesperson_id INT,
    car_id INT,
    
    FOREIGN KEY (salesperson_id) REFERENCES Salesperson(salesperson_id),
    FOREIGN KEY (car_id) REFERENCES Car(car_id)
);

CREATE TABLE ServiceTicket (
    service_ticket_id INT PRIMARY KEY,
    customer_id INT,
    car_id INT,
    
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (car_id) REFERENCES Car(car_id)
);

CREATE TABLE ServiceHistory (
    service_history_id INT PRIMARY KEY,
    car_id INT,
   
    FOREIGN KEY (car_id) REFERENCES Car(car_id)
);

CREATE TABLE Mechanic (
    mechanic_id INT PRIMARY KEY,
    name VARCHAR(255),
    
);

CREATE TABLE MechanicCar (
    mechanic_id INT,
    car_id INT,
 
    FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id),
    FOREIGN KEY (car_id) REFERENCES Car(car_id),
    PRIMARY KEY (mechanic_id, car_id)
);



-- Salespersons
INSERT INTO Salesperson (salesperson_id, name) VALUES
(1, 'John Doe'),
(2, 'Jane Smith');

-- Customers
INSERT INTO Customer (customer_id, name) VALUES
(1, 'Alice Johnson'),
(2, 'Bob Williams');

-- Cars
INSERT INTO Car (car_id, serial_number, make, model) VALUES
(1, '123ABC', 'Toyota', 'Camry'),
(2, '456DEF', 'Honda', 'Accord');

-- Invoices
INSERT INTO Invoice (invoice_id, salesperson_id, car_id) VALUES
(1, 1, 1),
(2, 2, 2);

-- Service Tickets
INSERT INTO ServiceTicket (service_ticket_id, customer_id, car_id) VALUES
(1, 1, 1),
(2, 2, 2);

-- Service History
INSERT INTO ServiceHistory (service_history_id, car_id) VALUES
(1, 1),
(2, 2);

-- Mechanics
INSERT INTO Mechanic (mechanic_id, name) VALUES
(1, 'Mike Smith')
(2, 'Emily Brown');

-- Mechanic-Car Relationship
INSERT INTO Mechanic Car (mechanic_id, car_id) VALUES
(1, 1),
(2, 2);