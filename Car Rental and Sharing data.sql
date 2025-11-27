INSERT INTO `carrental`.`Driver` (`DriverID`, `Name`, `Contact No.`, `Experience`) VALUES
(101, 'Rajesh Kumar', '+91-9876543210', 5),
(102, 'Suresh Singh', '+91-9988776655', 8),
(103, 'Vikram Malhotra', '+91-8877665544', 3),
(104, 'Amit Verma', '+91-7766554433', 10),
(105, 'Deepak Chahar', '+91-6655443322', 6);

-- Insert into Location
INSERT INTO `carrental`.`Location` (`State`, `City`, `District`, `PinCode`) VALUES
('Delhi', 'New Delhi', 'Central Delhi', 110001),
('Maharashtra', 'Mumbai', 'Mumbai City', 400001),
('Karnataka', 'Bengaluru', 'Bangalore Urban', 560001),
('Tamil Nadu', 'Chennai', 'Chennai', 600001),
('Telangana', 'Hyderabad', 'Hyderabad', 500001);

-- Insert into Employee
INSERT INTO `carrental`.`Employee` (`Employee ID`, `Name`, `Department`, `Designation`) VALUES
(201, 'Anjali Mehta', 'HR', 'Manager'),
(202, 'Rohan Das', 'Sales', 'Executive'),
(203, 'Priya Sharma', 'Maintenance', 'Supervisor'),
(204, 'Karan Johar', 'IT', 'Support Lead'),
(205, 'Simran Kaur', 'Customer Care', 'Head');

-- Insert into Service Category
INSERT INTO `carrental`.`Service Category` (`Service ID`, `Type`, `Duration`) VALUES
(301, 'Full Car Wash', '1 Hour'),
(302, 'Engine Oil Change', '2 Hours'),
(303, 'General Inspection', '30 Minutes'),
(304, 'Tire Replacement', '1 Hour'),
(305, 'Brake Repair', '3 Hours');

-- Insert into Payment
INSERT INTO `carrental`.`Payment` (`Payment ID`, `Mode of Payment`, `Amount`, `Status`) VALUES
(401, 'UPI', '1500', 'Success'),
(402, 'Credit Card', '5000', 'Success'),
(403, 'Cash', '300', 'Pending'),
(404, 'Debit Card', '2500', 'Failed'),
(405, 'Net Banking', '10000', 'Success');

-- Insert into Cars
-- Linked to DriverID (101-105) and Location PinCode
INSERT INTO `carrental`.`Cars` (`CarID`, `Name`, `Model`, `Fuel`, `Driver_DriverID`, `Location_PinCode`) VALUES
(501, 'Maruti Swift', 'VXI 2023', 'Petrol', 101, 110001),
(502, 'Hyundai Creta', 'SX 2022', 'Diesel', 102, 400001),
(503, 'Tata Nexon', 'EV Max', 'Electric', 103, 560001),
(504, 'Mahindra Thar', '4x4 Hard Top', 'Diesel', 104, 110001),
(505, 'Toyota Innova', 'Crysta', 'Diesel', 105, 500001);

-- Insert into Service Station
-- Linked to EmployeeID (201-205)
INSERT INTO `carrental`.`Service Station` (`DepartmentID`, `Department Name`, `No. of Employees`, `Employee_Employee ID`) VALUES
(601, 'Delhi Workshop', '50', 203),
(602, 'Mumbai Hub', '40', 201),
(603, 'Bangalore Tech Center', '35', 204),
(604, 'Chennai Garage', '25', 202),
(605, 'Hyderabad Repair', '30', 205);

-- Insert into User
-- Linked to Service ID (301-305) and Payment ID (401-405)
-- Note: User table schema implies a user record per transaction context
INSERT INTO `carrental`.`User` (`User ID`, `Name`, `City`, `Age`, `Service Category_Service ID`, `Payment_Payment ID`) VALUES
(701, 'Aditi Rao', 'Delhi', 28, 301, 401),
(702, 'Kabir Singh', 'Mumbai', 34, 302, 402),
(703, 'Neha Dhupia', 'Bengaluru', 25, 303, 403),
(704, 'Rahul Dravid', 'Indore', 45, 304, 404),
(705, 'Saniana Sanghi', 'Hyderabad', 22, 305, 405);

-- Insert into Service History
-- Linked to CarID (501-505) and DepartmentID (601-605)
INSERT INTO `carrental`.`Service History` (`Maintenance ID`, `No. of Services`, `Last Service Date`, `Cost`, `Service Due`, `Cars_CarID`, `Service Station_DepartmentID`) VALUES
(801, '3', '2023-10-01', '1500', '2024-01-01', 501, 601),
(802, '1', '2023-09-15', '5000', '2024-03-15', 502, 602),
(803, '5', '2023-11-20', '500', '2024-02-20', 503, 603),
(804, '2', '2023-08-10', '2000', '2024-01-10', 504, 601),
(805, '4', '2023-10-05', '8000', '2024-04-05', 505, 605);

-- Insert into Booking
-- Linked to UserID (701-705) and CarID (501-505)
INSERT INTO `carrental`.`Booking` (`Booking ID`, `Pickup Location`, `Drop Location`, `Booking Date`, `User_User ID`, `Cars_CarID`) VALUES
(901, 'Delhi Airport', 'Noida Sector 18', '2023-12-01', 701, 501),
(902, 'Bandra Terminus', 'Marine Drive', '2023-12-05', 702, 502),
(903, 'Koramangala', 'Whitefield', '2023-12-10', 703, 503),
(904, 'Connaught Place', 'Gurgaon Cyber City', '2023-12-12', 701, 504),
(905, 'Hitech City', 'Charminar', '2023-12-15', 705, 505);

-- Insert into Booking_has_Service Category (M:N Relationship)
-- Linking Booking to Service Category
INSERT INTO `carrental`.`Booking_has_Service Category` (`Booking_Booking ID`, `Booking_User_User ID`, `Booking_Cars_CarID`, `Service Category_Service ID`) VALUES
(901, 701, 501, 301),
(902, 702, 502, 302),
(903, 703, 503, 303),
(904, 701, 504, 301), -- User 701 booked Car 504 and added Service 301
(905, 705, 505, 305);

-- Restore Settings
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;