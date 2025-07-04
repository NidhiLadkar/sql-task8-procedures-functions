# Task 8 - Stored Procedures and Functions 

# Objective
To modularize SQL logic using stored procedures and user-defined functions.


# Key Concepts
- **Stored Procedure**: Executes a reusable block of logic with parameters
- **Function**: Returns a value (like a mini calculator)
- **Modular SQL**: Reduces repetition and increases maintainability


# Stored Procedure Created
- `AddCustomer(name, email, address, phone)`
  - Inserts a new customer record into the `customers` table.


# Function Created
- `TotalOrdersByCustomer(customer_id)`
  - Returns the number of orders placed by a specific customer.


# Usage Examples
- `CALL AddCustomer(...)` to add data without repeating INSERT code.
- `SELECT TotalOrdersByCustomer(...)` to fetch insights in queries.


# Tools Used
- MySQL Workbench
- Schema: `ecommerce_db`


# Files Included
- `task8_procedures_functions.sql`


