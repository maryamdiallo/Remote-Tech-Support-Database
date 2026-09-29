USE remote_tech_support;
INSERT INTO customer
(fName, lName, email, phoneNumber, createdAt)
VALUES
('Amina', 'Johnson', 'amina.johnson@email.com',
 '718-555-1024', NOW()),

('David', 'Smith', 'david.smith@email.com',
 '347-555-2087', NOW()),

('Fatou', 'Ndiaye', 'fatou.ndiaye@email.com',
 '929-555-3012', NOW());
 
SELECT * FROM customer;

--- Technician ---

INSERT INTO technician
(fName, lName, email, specialization, tierLevel)
VALUES
('Michael', 'Brown', 'michael.brown@techsupport.com',
 'Networking', 2),

('Sarah', 'Williams', 'sarah.williams@techsupport.com',
 'Windows Support', 1),

('James', 'Wilson', 'james.wilson@techsupport.com',
 'Linux Support', 3);
 SELECT * FROM technician;
 
 --- Devices ---
 
 INSERT INTO devices
(customerID, deviceType, operatingSystem, serialNumber)
VALUES
(1, 'Laptop', 'Windows 11', 'LT-10001'),
(2, 'Desktop', 'Windows 11', 'DT-20002'),
(3, 'Laptop', 'RedHat Linux', 'LT-30003');
SELECT * FROM devices;

--- SupportTickets ---

INSERT INTO supportTickets
(customerID, deviceID, TechnicianID,
 issueDescription, status, createdAt, resolvedAt)
VALUES
(1, 1, 1,
 'Laptop cannot connect to Wi-Fi',
 'Open', NOW(), NULL),

(2, 2, 2,
 'Computer is running very slowly',
 'In Progress', NOW(), NULL),

(3, 3, 3,
 'Linux system fails to install updates',
 'Resolved', NOW(), NOW());
 
 SELECT * FROM supportTickets;
 
 --- TicketLogs ----
 
 INSERT INTO ticketLogs
(ticketID, logDate, actionType, notes)
VALUES
(1, NOW(), 'Remote Session',
 'Checked wireless adapter and network configuration.'),

(2, NOW(), 'Troubleshooting',
 'Checked running processes and system resource usage.'),

(3, NOW(), 'Remote Session',
 'Updated package repositories and successfully installed updates.');
 
 SELECT * FROM ticketLogs;
 
SELECT
    st.TicketID,
    c.fName AS customerFirstName,
    c.lName AS customerLastName,
    st.issueDescription,
    st.status,
    t.fName AS technicianFirstName,
    t.lName AS technicianLastName
FROM supportTickets st
JOIN customer c
    ON st.customerID = c.customerID
JOIN technician t
    ON st.TechnicianID = t.technicianID;