# Remote-Tech-Support-Database

# Remote Tech Support Database

## CIS 344 – Database Management

**Student:** Maryam Diallo  
**Semester:** Fall 2026  
**Project:** Remote Tech Support Services Database

## Project Overview

This project is a relational database designed for a Remote Tech Support Services system. The database organizes information related to customers, customer devices, technicians, support tickets, and troubleshooting activities.

The project was inspired by my experience working as a Linux System Administrator, where troubleshooting technical issues, supporting users and systems, and documenting problem resolutions were important parts of the support process.

## Database Purpose

The purpose of the database is to provide an organized way to:

- Store customer information and their devices
- Track technical support tickets
- Assign technicians to support tickets
- Record issue descriptions and ticket status
- Track troubleshooting activities
- Maintain ticket creation and resolution information

## Database Entities

The database contains five main entities:

### Customer
Stores customer contact information.

### Device
Stores information about devices owned by customers, including device type, operating system, and serial number.

### Technician
Stores technician information, specialization, and support tier level.

### Support Ticket
Stores technical issues reported by customers and connects customers, devices, and technicians.

### Ticket Log
Stores troubleshooting activities and notes associated with support tickets.

## Relationships

The database contains the following one-to-many relationships:

- Customer → Device
- Customer → Support Ticket
- Device → Support Ticket
- Technician → Support Ticket
- Support Ticket → Ticket Log

## ER Diagrams

Two ER diagrams were created for the project:

- **Chen-Style ER Diagram** – Hand-drawn conceptual representation of the entities, attributes, relationships, and cardinalities.
- **UML/EER Diagram** – Created using MySQL Workbench and represents the implemented tables, primary keys, foreign keys, attributes, and relationships.

## Technologies Used

- MySQL
- MySQL Workbench
- SQL
- GitHub

## SQL Implementation

The database was implemented in MySQL Workbench using the database name:

`remote_tech_support`

SQL scripts are included for:

- Inserting sample customer data
- Inserting technician data
- Inserting device data
- Creating support ticket records
- Creating ticket log records
- Retrieving data with SELECT statements
- Retrieving related information using JOIN operations

## Repository Files

This repository contains:

- SQL script
- MySQL Workbench `.mwb` file
- Chen-style ER diagram
- MySQL Workbench EER/UML diagram
- Final project report
- README documentation

