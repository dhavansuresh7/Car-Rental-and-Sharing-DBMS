# Car-Rental-and-Sharing-DBMS

<h2 id="project-details">📝 Project Details</h2>
<table>
  <tbody>
    <tr>
      <td>Group</td>
      <td>4</td>
    </tr>
    <tr>
      <td>Section</td>
      <td>C</td>
    </tr>
  </tbody>
</table>

<h3 id="team-members">Team Members</h3>
<ul>
  <li>K S Dhavan</li>
  <li>Shilpa Samantha</li>
  <li>Mayank Sharma</li>
</ul>

<hr>

<h2 id="database-schema-description">🛠️ Database Schema Description</h2>
<p>
  This section provides a tabular description of all tables in the Car Rental and Sharing system database, detailing their purpose, columns, data types, and primary/foreign key relationships.
</p>

<h3 id="table-driver">Driver Table</h3>
<table>
  <thead>
    <tr>
      <th>Column Name</th>
      <th>Data Type</th>
      <th>Key Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>DriverID</code></td>
      <td>INT</td>
      <td>Primary Key (PK)</td>
      <td>Unique identifier for the driver.</td>
    </tr>
    <tr>
      <td><code>Name</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Driver's full name.</td>
    </tr>
    <tr>
      <td><code>Contact No.</code></td>
      <td>VARCHAR(45)</td>
      <td>Unique Index</td>
      <td>Driver's contact number (unique).</td>
    </tr>
    <tr>
      <td><code>Experience</code></td>
      <td>INT</td>
      <td></td>
      <td>Years of driving experience.</td>
    </tr>
  </tbody>
</table>

<br>

<h3 id="table-location">Location Table</h3>
<table>
  <thead>
    <tr>
      <th>Column Name</th>
      <th>Data Type</th>
      <th>Key Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>State</code></td>
      <td>VARCHAR(45)</td>
      <td>Unique Index</td>
      <td>State where the location is situated.</td>
    </tr>
    <tr>
      <td><code>City</code></td>
      <td>VARCHAR(45)</td>
      <td>Unique Index</td>
      <td>City name (unique).</td>
    </tr>
    <tr>
      <td><code>District</code></td>
      <td>VARCHAR(45)</td>
      <td>Unique Index</td>
      <td>District name (unique).</td>
    </tr>
    <tr>
      <td><code>PinCode</code></td>
      <td>INT</td>
      <td>Primary Key (PK)</td>
      <td>Pin code of the location (unique identifier).</td>
    </tr>
  </tbody>
</table>

<br>

<h3 id="table-cars">Cars Table</h3>
<table>
  <thead>
    <tr>
      <th>Column Name</th>
      <th>Data Type</th>
      <th>Key Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>CarID</code></td>
      <td>INT</td>
      <td>PK</td>
      <td>Unique identifier for the car.</td>
    </tr>
    <tr>
      <td><code>Name</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Car's brand name (e.g., Maruti Swift).</td>
    </tr>
    <tr>
      <td><code>Model</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Car's model and year (e.g., VXI 2023).</td>
    </tr>
    <tr>
      <td><code>Fuel</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Type of fuel used (e.g., Petrol, Diesel, Electric).</td>
    </tr>
    <tr>
      <td><code>Driver_DriverID</code></td>
      <td>INT</td>
      <td>Foreign Key (FK)</td>
      <td>Links to the <code>Driver</code> table. Driver assigned to the car.</td>
    </tr>
    <tr>
      <td><code>Location_PinCode</code></td>
      <td>INT</td>
      <td>Foreign Key (FK)</td>
      <td>Links to the <code>Location</code> table. Current location of the car.</td>
    </tr>
  </tbody>
</table>

<br>

<h3 id="table-employee">Employee Table</h3>
<table>
  <thead>
    <tr>
      <th>Column Name</th>
      <th>Data Type</th>
      <th>Key Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>Employee ID</code></td>
      <td>INT</td>
      <td>Primary Key (PK)</td>
      <td>Unique identifier for the employee.</td>
    </tr>
    <tr>
      <td><code>Name</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Employee's full name.</td>
    </tr>
    <tr>
      <td><code>Department</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Department the employee belongs to (e.g., HR, Sales).</td>
    </tr>
    <tr>
      <td><code>Designation</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Employee's job title (e.g., Manager, Executive).</td>
    </tr>
  </tbody>
</table>

<br>

<h3 id="table-service-station">Service Station Table</h3>
<table>
  <thead>
    <tr>
      <th>Column Name</th>
      <th>Data Type</th>
      <th>Key Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>DepartmentID</code></td>
      <td>INT</td>
      <td>PK</td>
      <td>Unique identifier for the Service Station/Department.</td>
    </tr>
    <tr>
      <td><code>Department Name</code></td>
      <td>VARCHAR(45)</td>
      <td>Unique Index</td>
      <td>Name of the service station (e.g., Delhi Workshop).</td>
    </tr>
    <tr>
      <td><code>No. of Employees</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Number of employees at this station.</td>
    </tr>
    <tr>
      <td><code>Employee_Employee ID</code></td>
      <td>INT</td>
      <td>PK, Foreign Key (FK)</td>
      <td>Links to the <code>Employee</code> table, identifying a key employee (e.g., supervisor/head).</td>
    </tr>
  </tbody>
</table>

<br>

<h3 id="table-service-category">Service Category Table</h3>
<table>
  <thead>
    <tr>
      <th>Column Name</th>
      <th>Data Type</th>
      <th>Key Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>Service ID</code></td>
      <td>INT</td>
      <td>Primary Key (PK)</td>
      <td>Unique identifier for the type of service.</td>
    </tr>
    <tr>
      <td><code>Type</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Description of the service (e.g., Full Car Wash, Engine Oil Change).</td>
    </tr>
    <tr>
      <td><code>Duration</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Estimated duration of the service.</td>
    </tr>
  </tbody>
</table>

<br>

<h3 id="table-payment">Payment Table</h3>
<table>
  <thead>
    <tr>
      <th>Column Name</th>
      <th>Data Type</th>
      <th>Key Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>Payment ID</code></td>
      <td>INT</td>
      <td>Primary Key (PK)</td>
      <td>Unique identifier for the payment transaction.</td>
    </tr>
    <tr>
      <td><code>Mode of Payment</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Method of payment (e.g., UPI, Credit Card, Cash).</td>
    </tr>
    <tr>
      <td><code>Amount</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Total amount of the payment.</td>
    </tr>
    <tr>
      <td><code>Status</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Status of the payment (e.g., Success, Pending, Failed).</td>
    </tr>
  </tbody>
</table>

<br>

<h3 id="table-user">User Table</h3>
<table>
  <thead>
    <tr>
      <th>Column Name</th>
      <th>Data Type</th>
      <th>Key Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>User ID</code></td>
      <td>INT</td>
      <td>PK</td>
      <td>Unique identifier for the user/customer.</td>
    </tr>
    <tr>
      <td><code>Name</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>User's full name.</td>
    </tr>
    <tr>
      <td><code>City</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>User's city of residence.</td>
    </tr>
    <tr>
      <td><code>Age</code></td>
      <td>INT</td>
      <td></td>
      <td>User's age.</td>
    </tr>
    <tr>
      <td><code>Service Category_Service ID</code></td>
      <td>INT</td>
      <td>PK, Foreign Key (FK)</td>
      <td>The primary service category associated with this user record (links to <code>Service Category</code>).</td>
    </tr>
    <tr>
      <td><code>Payment_Payment ID</code></td>
      <td>INT</td>
      <td>PK, Foreign Key (FK)</td>
      <td>The payment transaction associated with this user record (links to <code>Payment</code>).</td>
    </tr>
  </tbody>
</table>

<br>

<h3 id="table-service-history">Service History Table</h3>
<table>
  <thead>
    <tr>
      <th>Column Name</th>
      <th>Data Type</th>
      <th>Key Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>Maintenance ID</code></td>
      <td>INT</td>
      <td>PK</td>
      <td>Unique identifier for a maintenance record.</td>
    </tr>
    <tr>
      <td><code>No. of Services</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Total number of services performed on the car.</td>
    </tr>
    <tr>
      <td><code>Last Service Date</code></td>
      <td>DATE</td>
      <td></td>
      <td>Date of the most recent service.</td>
    </tr>
    <tr>
      <td><code>Cost</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Cost of the last service.</td>
    </tr>
    <tr>
      <td><code>Service Due</code></td>
      <td>DATE</td>
      <td></td>
      <td>Next service due date.</td>
    </tr>
    <tr>
      <td><code>Cars_CarID</code></td>
      <td>INT</td>
      <td>PK, Foreign Key (FK)</td>
      <td>The car this history belongs to (links to <code>Cars</code>).</td>
    </tr>
    <tr>
      <td><code>Service Station_DepartmentID</code></td>
      <td>INT</td>
      <td>PK, Foreign Key (FK)</td>
      <td>The station that performed the service (links to <code>Service Station</code>).</td>
    </tr>
  </tbody>
</table>

<br>

<h3 id="table-booking">Booking Table</h3>
<table>
  <thead>
    <tr>
      <th>Column Name</th>
      <th>Data Type</th>
      <th>Key Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>Booking ID</code></td>
      <td>INT</td>
      <td>PK</td>
      <td>Unique identifier for the booking.</td>
    </tr>
    <tr>
      <td><code>Pickup Location</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Location where the car will be picked up.</td>
    </tr>
    <tr>
      <td><code>Drop Location</code></td>
      <td>VARCHAR(45)</td>
      <td></td>
      <td>Location where the car will be dropped off.</td>
    </tr>
    <tr>
      <td><code>Booking Date</code></td>
      <td>DATE</td>
      <td></td>
      <td>Date the booking was made.</td>
    </tr>
    <tr>
      <td><code>User_User ID</code></td>
      <td>INT</td>
      <td>PK, Foreign Key (FK)</td>
      <td>The user who made the booking (links to <code>User</code>).</td>
    </tr>
    <tr>
      <td><code>Cars_CarID</code></td>
      <td>INT</td>
      <td>PK, Foreign Key (FK)</td>
      <td>The car that was booked (links to <code>Cars</code>).</td>
    </tr>
  </tbody>
</table>

<br>

<h3 id="table-booking-has-service-category">Booking_has_Service Category Table (M:N)</h3>
<p>This table resolves the Many-to-Many relationship between <code>Booking</code> and <code>Service Category</code>, allowing a booking to include multiple services.</p>
<table>
  <thead>
    <tr>
      <th>Column Name</th>
      <th>Data Type</th>
      <th>Key Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>Booking_Booking ID</code></td>
      <td>INT</td>
      <td>PK, Foreign Key (FK)</td>
      <td>Composite FK component linking to the <code>Booking</code> table.</td>
    </tr>
    <tr>
      <td><code>Booking_User_User ID</code></td>
      <td>INT</td>
      <td>PK, Foreign Key (FK)</td>
      <td>Composite FK component linking to the <code>Booking</code> table.</td>
    </tr>
    <tr>
      <td><code>Booking_Cars_CarID</code></td>
      <td>INT</td>
      <td>PK, Foreign Key (FK)</td>
      <td>Composite FK component linking to the <code>Booking</code> table.</td>
    </tr>
    <tr>
      <td><code>Service Category_Service ID</code></td>
      <td>INT</td>
      <td>PK, Foreign Key (FK)</td>
      <td>The service added to the booking (links to <code>Service Category</code>).</td>
    </tr>
  </tbody>
</table>

<hr>

<h2 id="sample-data-dml">💾 Sample Data (DML)</h2>
<p>
  The corresponding SQL file includes DML statements to populate the database with sample data for testing and demonstration.
</p>
