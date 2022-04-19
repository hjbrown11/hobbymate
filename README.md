# Hobbymate

#### An app created by Hannah Brown, Stephany Ramirez Escarcega and Astrid de Jaeger using Ruby on Rails and JavaScript. The primary goal of the app is to help users find new hobbies and interests, and to find and connect with other people who share them.

Visit the app at www.hobbymate.me to see the live project. This project was designed and built during the final two weeks of the Le Wagon Web Development bootcamp. Our concept and inspiration was to create a project to bring people together and to help people connect in a meaningful way, and to broaden their interests and experiences.

There were a number of key aspects that we made sure to include. Authorisation and authentication was a priority, along with the ability for a user to customise their own profile with a picture and bio and to select hobbies based on interests. These hobbies are then populated in the user profile and determine which other users are shown as potential Hobbymates (other users are only shown if they share one or more common interests). We also included a map to display users' locations once they have matched with others, so they can see connections in their area.

If cloning/forking the project, please run the following to ensure best performance and to pre-populate data:

```
bundle install
yarn install
rails db:migrate
rails db:seed
```

Thank you for visiting our project - we welcome any feedback or suggestions for changes.
