# Database: ABC Company (CS 4347 Fall 2024)
Implemented from mid-October 2024 to November 2024.

In this project, use the following information to develop a database system. 
There is a company called ABC Company, which purchases parts from vendors to produce some products. The company has several departments, marketing sites, and parts supply vendors.
1.	For each department, the department id and department name will be recorded.
2.	People in the company can be divided into three types -- employees, customers, and potential employees. Each person can belong to more than one type. Each person in the company has the following attributes: Personal_ID, Name (Last Name, First Name), Age (below 65), Gender, Address (address line 1, address line 2, city, state, zip code), and Phone number (one individual may have more than one phone number). For customers, their preferred salespeople were recorded in the system. Rank and Title (e.g., CEO, Principle, Partner, etc.) will be recorded for employees.
3.	Each company employee must have only one direct supervisor, while each supervisor can have several supervisees. One employee can work for one or more departments at different times. But at one time, one employee can only work for one department. The system needs to record each shift's start and end times among different departments for one employee.
4.	Each job position's information is recorded to hire new people. It contains the Job ID, job description, and posted date in the system.
5.	The departments post the job positions. Both existing and potential employees can apply for each job posted by any department. The company will select some candidates from the applications and conduct interviews.
6.	For each job position, several interviews will be conducted to select a suitable person.
7.	For each interview, candidates (interviewees), interviewers, job positions, and interview times are recorded. After each interview round, the interviewers give a grade ranging from 0 to 100. A grade over 60 represents that the interviewee passes the interview. One person is selected when her/his average grade is over 70, and she/he passes at least five rounds of interviews.
8.	For each product in the company, the system needs to record Product ID, Product Type, Size, List Price, Weight, and Style.
9.	There are many marketing sites for the company. Site ID, Site Name, and Location are recorded for each site.
10.	Several people work for each site, and one can work on different sites. It can track the details of each sale history – salespeople, customers, product, sale time, and sites.
11.	Part purchase is also a vital activity in the company. The system needs to record each vendor's Vendor ID, Name, Address, Account Number, Credit Rating, and Purchasing Web Service URL.
12.	One vendor may supply many types of parts. The price of the same part type may vary from different vendors, but the price of one part type of one vendor will keep the same. It can track which part types are used in each product and the number of each type of part used for the product.
13.	In addition, the system maintains the information of each employee's monthly salary, which includes transaction number, pay_date, and amount (Note: transaction number could be the same among different employees. However, for each employee, the transaction number is unique).
