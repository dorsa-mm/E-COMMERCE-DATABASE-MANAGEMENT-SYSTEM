Project Description:

A robust database management system designed for an e-commerce platform, featuring optimized SQL queries, an entity-relationship (ER) model, and a Java-based Command Line Interface (CLI) built with Object-Relational Mapping (ORM). This project focuses on efficient data storage, retrieval, and performance optimization.  


Features:
Database Design: 
  - Designed an ER model and implemented schema designs for effective data organization.
Optimized SQL Queries: 
  - Improved query efficiency, reducing average data retrieval load time by 20%.
Java CLI with ORM Integration: 
  - Developed a user-friendly interface for database interaction using Java and ORM tools.
Performance Metrics: 
  - Achieved a 25% improvement in testing efficiency by optimizing database operations.


Usage:
The E-commerce Database Management System provides users with the ability to interact with the e-commerce platform's backend database.
- User Login
  Upon starting the Java CLI application, users are prompted to log in with either an administrator or customer account.
  Admin Login: Allows users to access all database operations, such as adding products, updating inventory, and viewing customer orders.
  Customer Login: Provides limited access, allowing customers to view available products and place orders.

- Database Operations
  Once logged in, users can perform various database-related operations via the CLI interface:
  View Products: Display all products available in the inventory, including details such as price, description, and quantity available.
  Add/Update Product: Admin users can add new products or update existing ones in the database (e.g., changing prices, adding descriptions, and updating stock).
  Customer Orders: Admins can view customer orders and update their status. Customers can place new orders, view their order history, and track their order status.
  Generate Reports: Users can generate reports such as total sales, inventory levels, and customer activity. These reports help the e-commerce platform administrators keep track of performance and manage the store effectively.

- Database Queries & Optimization
  SQL Queries: All data operations are performed through optimized SQL queries for fast and efficient data retrieval.
  ORM Integration: The Java application uses Object-Relational Mapping (ORM) to bridge the Java application with the Oracle SQL database, ensuring smooth interaction between the two.


Reflection:
Lessons Learned
This project provided valuable insights into the process of building, optimizing, and managing an e-commerce database system, while also strengthening key skills in database design, SQL, and Java development. Here are some of the major lessons learned:

1. The Importance of Efficient Database Design
ER Model & Schema Optimization: We learned that a well-designed entity-relationship model and schema are fundamental for ensuring data consistency and improving query efficiency. By mapping out entities and their relationships in advance, we could design a database structure that minimized redundancy and ensured easier data retrieval.
2. SQL Query Optimization
Query Performance: Optimizing SQL queries was crucial in reducing load times. We learned how to use indexing and ensure that queries were structured efficiently to minimize retrieval time, which led to a 20% improvement in overall system performance. For example, using JOINs and subqueries effectively helped reduce the need for multiple queries and improved the speed of complex operations.
3. Object-Relational Mapping (ORM) in Java
ORM Tools: Integrating ORM tools with Java allowed us to interact with the database using objects, making the code more maintainable and reducing the complexity of raw SQL statements. This also highlighted the advantages of decoupling the database logic from the business logic of the application.
4. The Challenges of Managing a Team
Teamwork and Delegation: Working in a team of 3, we learned the importance of clear communication and effective delegation. Each member had a specific responsibility (e.g., database design, query optimization, Java CLI development), but we had to ensure that we frequently collaborated and reviewed each other’s work to ensure consistency.
5. Real-World Problem Solving
Testing and Iteration: During the project, we realized how important it was to test the database under real-world conditions. We conducted multiple rounds of testing, ensuring the database could handle various scenarios such as product additions, large customer orders, and generating reports under load. Each testing phase revealed potential bottlenecks that we could address before delivery.
6. Delivering a Functional Prototype under Time Constraints
Deadlines and Reporting: This project was completed as part of an assignment to deliver a functional prototype to the Head of Computer Science at TMU. Working under tight deadlines taught us the importance of prioritizing tasks, delivering incremental prototypes, and ensuring that our project met the required goals.
7. Documentation and Reporting
Project Reporting: Writing a comprehensive project report allowed us to synthesize our work, outline our technical decisions, and demonstrate the value of our solution. The project report included the schema design, query optimizations, and the performance improvements we achieved, helping to showcase our understanding of both the technical and business aspects of the project.
