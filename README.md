# Mind Click Backend API

A backend API that provides you with a Mental Health Therapist Catalogue. Through the API you can access Users, Therapists, and the list of the User's favorite therapists. Each Therapist and User will have information on their own. The API is built with the RESTful API convention.

## Live version

- [API Url: https://whispering-scrubland-17484.herokuapp.com/api/](https://whispering-scrubland-17484.herokuapp.com/api/)

## RESTful API -> Endpoints

Through the endpoints you can get access to the following endpoint:

- Authentication:
  - Signup a User to the Data Base
    - Method: 'POST'
    - Url: '/signup'
    - Params: email and password
  - Login a User to create a session
    - Method: 'POST'
    - Url: '/login'
    - Params: full_name, email, password, password_confirmation

- Therapist:
  - Get an array of current therapists:
    - Method: 'GET'
    - Url: '/therapists/'
    - Headers: Authentication: authToken
  - Get a specific therapist:
    - Method: 'GET'
    - Url: '/therapists/:id'
    - Headers: Authentication: authToken

- Favorites
  - Create a Favorite:
    - Method: 'POST'
    - URL: 'users/:id/favorites/
    - Params: user_id and therapist_id
    - Headers: Authentication: authToken
  - Destroy a Favorite:
    - Method: 'DELETE'
    - URL: 'users/:user_id/favorites/:favorite_id'
    - Headers: Authentication: authToken

## Back end Built with
  - Ruby on Rails 6
  - Deployed on Heroku

## Tests

Run `rspec` to run Rspec suite testing on models, requests, authentication and controller methods.

## Author

👤 **Santiago Rodriguez Bermúdez**

  - Github: [@srba87](https://github.com/santiagorodriguezbermudez)
  - Twitter: [@srba87](https://twitter.com/srba87)
  - Linkedin: [srba87](https://linkedin.com/in/srba)

## 🤝 Contributing

  - Contributions, issues and feature requests are welcome!

  - Feel free to check the [issues page](./issues).

## Show your support

  - Give a ⭐️ if you like this project!