# KooKoo Rails Lab Syllabus

## Lesson 1: Creating the Project

The basis of any new rails site is the initial generation. In this very short lesson, we get the rails foundation for our site KooKoo generated on our file system.

## Lesson 2: View Engines and the Asset Pipeline

Before we start coding the features of our application, it is useful to make decisions on which view engines, javascript, html and css technologies you will be using. It is not always possible
to make these decisions up front for every application, but it is best to have as much of your application stack decided as possible before you start.

In this lesson, we will also be reviewing the Asset Pipeline which is a powerful feature of Rails 3 that allows all of your javascripts and stylesheets to be saved in minified compiled
versions for maximum speed and caching capablities.

* Code for the lesson can be found here:
https://gist.github.com/276102e2e6d84d873e0c

## Lesson 3: Models and Controllers - Setting up a User

The first thing our site needs is users. In order to do so, we will have to generate some models, routes and controllers to support this. In this lesson we will learn about the relationships
of models, controllers and routes as well as experimenting with different generator options adn examining their effect on the project.

* Code for the lesson can be found here:
https://gist.github.com/eb4ea50747f4760be844

## Lesson 4: Migrations and Rake

In order to have users on our site, we will need to modify the user model to be able have encrypted passwords for use in logging in and out of the system. In this lesson we will implement this
using Rails migrations and some rake tasks.

* Code for the lesson can be found here:
https://gist.github.com/1558c4225d36549578dc

## Lesson 5: Authentication - User Sign Up

Now that we have the user model complete, we want to add controller methods and views to allow the user basic sign in functionality. This lesson will also cover a brief introduction to some
premade authentication strategies available toady in the Rails community.

* Code for the lesson can be found here:
https://gist.github.com/17180370684546d31f1b

## Lesson 6: Authentication Continued - Log In and Log Out

Now that our user can sign up for our service, the next step is logging in and logging out. In this lesson we will add the code necessary for users to log in to a personal dashboard page, and
log out conveniently from the UI..

* Code for the lesson can be found here:
https://gist.github.com/dba561a959403e72928c

## Lesson 7: Posting Messages

The lifeblood of our site is the Message. Now that we have users signing up and signing in to their personal dashboard, we need to add the ability for them to post messages to the site. This
lesson will cover the controller methods and models necessary for this feature.

* Code for the lesson can be found here:
https://gist.github.com/b360bd8f717d03718a4f

## Lesson 8: Subscriptions

Now that we have users who are able to actively interact with the site and post messages, we will now want to add the functionality to subscribe or unsubscribe to any user's list of posted
messages. This will be completed in this lesson, along with some view enhancements such as adding statistics to a user's page.

* Code for the lesson can be found here:
https://gist.github.com/80bae5d52b102d20a018

## Lesson 9: Searching for users in the system

Now that we can subscribe to users, we want an easy way to find users in the system. In this lesson, we will build a simple user name search into the header.

* Code for the lesson can be found here:
https://gist.github.com/154f940801583453a91c

## Lesson 10: View Cleanup and Polish

In this lesson we will clean up some of the views, moving repeated view code into partials and passing in relevant information

* Code for the lesson can be found here:

