# Application Setup and Development

This README provides instructions on setting up and running the application, as well as additional development tasks and resources. Follow the steps below to get started.

## Environment Setup

Make sure you have the following dependencies installed:

- rbenv or rvm (Ruby environment managers)
- Ruby 3.1.2
- SQLite3

## Visualizing the Database

Connect your SQLite database to DBeaver, a visual database management tool. You can use the ER Diagram tab in DBeaver to visualize the database schema.

## Implementing the Database

Create models and migrations for each table in the schema. Ensure that relationships are properly enforced using Primary/Foreign Keys and Rails Active Record Associations.

## Seeding the Database

If necessary, replace the seed file in the `/db/` folder with your own data. To seed the database, run the following command:

```
rake db:seed
```

## Back Office App

An authentication system has been implemented specifically for employees. The Home page, Navigation Bar, and Entity table pages have been designed and implemented.

Employees can now perform the specified CRUD (Create, Read, Update, Delete) actions on the Entity table pages.

## Bonus: Expanding the Back Office

After completing the required tasks, you have the option to further expand the functionality of the back office by implementing the Entity Table Page for each table in the schema.

## Testing and TDD

The secure API for the Rocket Food Delivery app has been implemented, following the Test-Driven Development (TDD) methodology. Thorough testing has been performed to ensure robustness and high-quality outcomes.

## Expanding the Schema

The existing schema has been expanded to include the `couriers` and `courier_statuses` tables, as specified. A `courier_id` Foreign Key has been added to the `Orders` table. Note that the column can be null.

The relationships between the tables have been enforced using Active Record Associations and Migrations.

## Testing the Schema

All provided model tests have been executed to ensure the correctness of the schema implementation.

## Populate the Database

The `faker` gem has been added to the Gemfile and installed using `bundle install`. The provided seed file has been used to populate the database.

## Implementing an API through TDD

The provided API test files located in `/test/controllers` have been added and executed. These tests cover the following routes:

- POST /api/login
- GET /api/restaurants
- GET /api/products
- POST /order/{id}/status

The failing tests have been resolved by implementing or fixing the corresponding routes. The test files have been studied to understand the expected behavior.

## Writing Tests

Complete test coverage has been ensured for the GET /api/orders route, and the route has been implemented accordingly.

Similarly, complete test coverage has been achieved for the POST /api/orders route, and the route has been implemented.

Thank you for your attention. Let's make this application a success!
