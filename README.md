# Votaprato

Votaprato is a Ruby on Rails application that allows users to rate dishes at restaurants.

## Models

The main models in Votaprato are:

- **Client** - Represents a customer who rates dishes and restaurants. A client has many ratings.
- **Restaurant** - A restaurant that serves dishes. A restaurant has many dishes and ratings.
- **Dish** - A dish served at a restaurant. A dish belongs to a restaurant and has many ratings.  
- **Rating** - A rating of a dish at a restaurant by a client. A rating belongs to a client, restaurant and dish. It contains attributes like score, price paid, comments etc.

These models have validations for data integrity and associations defined between them.

## Features

Some main features of Votaprato are:

- Clients can browse restaurants and dishes
- Clients can rate and review dishes they have tried
- Restaurants can view ratings and reviews for their dishes  
- Aggregate ratings are calculated for restaurants and dishes
- Admin section to manage clients, restaurants and dishes

## Getting Started

To set up the Votaprato Rails app on your local system:

1. Clone the repository 
2. Run `bundle install`
3. Set up the database with `rails db:create db:migrate`
4. Start the Rails server with `rails server`
5. Access the app at `http://localhost:3000`

## Usage

The app contains standard users flows for:

- Clients signing up/logging in 
- Clients rating dishes and restaurants
- Restaurants managing their dishes
- Admins managing all data

APIs could be added in the future for mobile apps etc to integrate with Votaprato data.

## Contributing

Pull requests are welcome. Open an issue first to discuss any major changes.

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for more details.
