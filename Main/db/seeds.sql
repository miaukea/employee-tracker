INSERT INTO department (department_name)
VALUES ('Customer Service'),
       ('Grocery'),
       ('Produce')
       ('Meat/Seafood'),
       ('Deli'),
       ('Bakery'),
       ('Pharmacy');
      

INSERT INTO role (title, salary, department_id)
VALUES ('Cashier', 15.00, 10),
       ('Bagger', 12.00, 10),
       ('Grocery Clerk', 16.00, 20),
       ('Produce Clerk', 16.00, 30),
       ('Butcher', 18.00, 40),
       ('Deli Clerk', 17.00, 50),
       ('Baker', 17.00, 60),
       ('Pharmacy Tech', 21.00, 70);
       
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Ashley', 'Brown', 10, 100),
       ('Cathy', 'Doe', 10),
       ('Elijah', 'Frederick', 20, 101),
       ('Geoff', 'Hargett', 20),
       ('Isaiah', 'Jackson', 30, 102),
       ('Katrina', 'Lennon', 30),
       ('Melody', 'Nichols', 40, 103),
       ('Omar', 'Peters', 40),
       ('Quin', 'Rogers', 50, 104),
       ('Sarah', 'Trueman', 50),
       ('Ulysses', 'Vernon', 60, 105),
       ('Walter', 'White', 60),
       ('Xavier', 'York', 70, 106),
       ('Zander', 'Anderson', 70);