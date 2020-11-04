# Mind Click Backend API

A backend API that provides you with a Mental Health Therapist Catalogue. Through the API you can access Users, Therapists, and the list of the User's favorite therapists. Each Therapist and User will have information on their own. The API is built with the RESTful API convention.

## Live version

- [API Url: https://whispering-scrubland-17484.herokuapp.com/api/](https://whispering-scrubland-17484.herokuapp.com/api/)

## RESTful API -> Endpoints

Through the endpoints you can get access to the following endpoint:

- Users:
  - Get an array of current users:
    - Method: 'GET'
    - Url: '/users/'
  - Get a specific user:
    - Method: 'GET'
    - Url: '/users/:id'
  - Update a user:
    - Method: 'PATCH'
    - Url: '/users/:id'
    - Parameters: Users object with the parameters that must change
  - Delete a user:
    - Method: 'DELETE'
    - Url: '/users/:id'
  - Create a user:
    - Method: 'POST'
    - Url: '/users/
    - Parameters: User object with the initial parameters

- Therapist:
  - Get an array of current therapists:
    - Method: 'GET'
    - Url: '/therapists/'
  - Get a specific therapist:
    - Method: 'GET'
    - Url: '/therapists/:id'
  - Update a therapist:
    - Method: 'PATCH'
    - Url: '/therapists/:id'
    - Parameters: Therapists object with the parameters that must change
  - Delete a therapist:
    - Method: 'DELETE'
    - Url: '/therapists/:id'
  - Create a therapist:
    - Method: 'POST'
    - Url: '/therapists/
    - Parameters: Therapists object with the initial parameters

- Favorites
  - Create a Favorite:
    - Method: 'POST'
    - URL: '/favorites/
  - Destroy a Favorite:
    - Method: 'DELETE'
    - URL: '/favorites/'

## Back end Built with
  - Ruby on Rails 6
  - Deployed on Heroku

## Tests

To be determined

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