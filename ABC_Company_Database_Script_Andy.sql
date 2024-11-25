/* Name: Andy Nguyen
Course: CS 4347.004
Database Project: ABC Company */

create database ABCDatabase;
use ABCDatabase;

/* create tables for regular entities */
create table Person (
    Personal_ID	int primary key not null,
    First_Name varchar(20),
    Last_Name varchar(20),
    Age int,
    Gender char(1),
    Email varchar(50),
    AddressLine1 varchar(100),
    AddressLine2 varchar(100),
    City varchar(20),
    State varchar(20),
    ZipCode varchar(5)
);
 /* multivalued attribute from PERSON*/
create table Phone_numbers (
    Personal_ID int not null,
    Phone_number varchar(15), -- stored as single value
    primary key (Personal_ID, Phone_number),
    foreign key (Personal_ID) references Person(Personal_ID)
);

create table Employee (
    Employee_ID int primary key, 
    Employee_Rank varchar(50), -- rank in diagram = employee_rank in SQL
    Title varchar(50),
    foreign key (Employee_ID) references Person(Personal_ID)
);

create table Customer (
    Customer_ID int primary key,
    Preferred_Salesperson_ID int,
    foreign key (Customer_ID) references Person(Personal_ID),
    foreign key (Preferred_Salesperson_ID) references Employee(Employee_ID)
);

create table Potential_Employee (
    Potential_Employee_ID int primary key,
    foreign key (Potential_Employee_ID) references Person(Personal_ID)
);

create table Department (
    Department_ID int primary key,
    Department_Name varchar(50)
);

create table Job_Position (
    Job_ID int primary key,
    Job_Description varchar(100),
    Posted_Date date,
    Department_ID int,
    foreign key (Department_ID) references Department(Department_ID)
);

create table Marketing_Site (
    Site_ID int primary key,
    Site_Name varchar(100),
    Location varchar(100)
);

create table Product (
    Product_ID int primary key,
    Product_Type varchar(100),
    Size varchar(20),
    Price decimal(10,2),
    Weight decimal(10,2),
    Style varchar(20)
);

create table Part (
    Part_ID int primary key,
    Part_Type varchar(50),
    Part_Weight decimal(10,2)
);

create table Vendor (
    Vendor_ID int primary key,
    Vendor_Name varchar(50),
    Vendor_Address varchar(100),
    Vendor_AccountNo varchar(20),
    Credit_Rating decimal(3,1),
    Purchasing_URL varchar(200)
);

/* create tables for weak entities */
create table Month_Salary (
    Transaction_No int primary key auto_increment,
    Pay_Date date,
    Amount decimal(10,2),
    Employee_ID int,
    foreign key (Employee_ID) references Employee(Employee_ID)
);

create table Interview (
    Interview_ID int primary key,
    Interview_Time datetime,
    Grade varchar(3),
    Job_ID int,
    Interviewee_ID int,
    Interviewer_ID int,
    foreign key (Job_ID) references Job_Position(Job_ID),
    foreign key (Interviewee_ID) references Person(Personal_ID),
    foreign key (Interviewer_ID) references Employee(Employee_ID)
);

create table Sales (
    Sales_ID int primary key,
    Sales_Time datetime,
    Quantity int,
    Salesperson_ID int,
    Product_ID int,
    foreign key (Salesperson_ID) references Employee(Employee_ID),
    foreign key (Product_ID) references Product(Product_ID)
);

/* create tables for relationship types */
create table Works_in (
    Employee_ID int,
    Department_ID int,
    Start_Date date,
    End_Date date,
    primary key (Employee_ID, Department_ID),
    foreign key (Employee_ID) references Employee(Employee_ID),
    foreign key (Department_ID) references Department(Department_ID)
);

create table Apply (
    Person_ID int,
    Job_ID int,
    foreign key (Person_ID) references Person(Personal_ID),
    foreign key (Job_ID) references Job_Position(Job_ID)
);

create table Uses (
    Product_ID int,
    Part_ID int,
    Part_No int, -- number of parts used in a product
    foreign key (Product_ID) references Product(Product_ID),
    foreign key (Part_ID) references Part(Part_ID)
);

create table Supplied_by (
    Vendor_ID int,
    Part_ID int,
    Part_Price double(10,2),
    foreign key (Vendor_ID) references Vendor(Vendor_ID),
    foreign key (Part_ID) references Part(Part_ID)
);

create table Supervision (
    Employee_ID int,
    Supervisor_ID int,
    primary key (Employee_ID),
    foreign key (Employee_ID) references Employee(Employee_ID),
    foreign key (Supervisor_ID) references Employee(Employee_ID)
);

create table Works_For( /* Employee-Marketing_Site */
    Employee_ID int,
    Site_ID int,
    foreign key (Employee_ID) references Employee(Employee_ID),
    foreign key (Site_ID) references Marketing_Site (Site_ID)
);

create table Sales_Participation(
    Sales_ID int,
    Customer_ID int,
    foreign key (Sales_ID) references Sales(Sales_ID),
    foreign key (Customer_ID) references Customer(Customer_ID)
);

create table Has_Sales(
    Sales_ID int,
    Site_ID int,
    foreign key (Sales_ID) references Sales(Sales_ID),
    foreign key (Site_ID) references Marketing_Site(Site_ID)
);










 
