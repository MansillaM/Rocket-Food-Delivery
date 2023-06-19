# Application Setup and Development

This README provides instructions on setting up and running the application, as well as additional development tasks and resources. Follow the steps below to get started.

## Environment Setup

Ensure you have the following dependencies installed:

- rbenv or rvm (Ruby environment managers)
- Ruby 3.1.2
- SQLite3

## Visualizing the Database

Connect your SQLite database to DBeaver, a visual database management tool. Use the ER Diagram tab in DBeaver to visualize the database schema.

## Implementing the Database

Create models and migrations for each table in the schema. Enforce relationships using Primary/Foreign Keys and Rails Active Record Associations.

## Seeding the Database

Replace the seed file in the `/db/` folder with your own and run the following command to seed the database:

```
rake db:seed
```

## Back Office App

Create an authentication system only for employees. Design and implement a Home page, Navigation Bar, and Entity table pages.

Allow employees to perform the specified CRUD (Create, Read, Update, Delete) actions on the Entity table pages.

## Bonus: Expanding the Back Office

After completing the required tasks, you can expand the back office functionality by implementing the Entity Table Page for each table in the schema.

## Testing and TDD

Continue the previous week's task by ensuring the secure API for the Rocket Food Delivery app. Follow the Test-Driven Development (TDD) methodology for robust testing and high-quality outcomes.

## Expanding the Schema

Expand the existing schema by adding the `couriers` and `courier_statuses` tables according to the provided details.

Add a `courier_id` Foreign Key to the `Orders` table. Note that the column can be null.

Enforce the relationships between the tables using Active Record Associations and Migrations.

## Testing the Schema

Make sure all provided model tests pass to ensure the correctness of the schema implementation.

## Populate the Database

Add the `faker` gem to your Gemfile and run `bundle install` to install it. Then, use the provided seed file to populate the database.

## Implementing an API through TDD

Add and run the provided API test files located in `/test/controllers`. These tests cover the following routes:

- POST /api/login
- GET /api/restaurants
- GET /api/products
- POST /order/{id}/status

Resolve the failing tests by implementing or fixing the corresponding routes. Study the test files to understand the expected behavior.

## Writing Tests

Ensure complete test coverage for the GET /api

/orders route and implement the route accordingly.

Similarly, ensure complete test coverage for the POST /api/orders route and implement the route.

## Bonus: SQLite Queries

In the repository, you will find a file named `crud.sql`. This file contains SQLite queries for creating a "students" table, inserting data, updating and deleting rows, and selecting data. Use these queries for SQLite database creation and viewing in DBeaver.

Thank you for your attention. Let's make this application a success!
