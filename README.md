## Quack - Backend API
Quack is an interactive website that gives users a fun and easy solution to group communication. Users can send and received messages in real time with auto-updating individualized chatrooms. Past messages are stored server side on the backend API so that you will never have to worry about forgetting a conversation. With included timestamps and metadata, simply login and return to your chatroom to see what everyone was chatting about while you were gone.

## Contents
- [Setup](#setup)
- [Features](#features)
  - [Users](#users)
  - [Action Cable](#action-cable)
  - [Models](#models)
- [Work In Progress](#work-in-progress)
- [Contact](#contact)


## Setup
(how to clone and build, bundle install, rails s, etc)

## Features
These are some of the key features in Quack - Backend API:

### Users
JWT Auth is used for proper and secure user authentication that keeps sensitive user information private.

### Action Cable
Quack uses action cables for the instant web socket communication between front end and back end servers.

### Models
Relationship table consists of Messages, Chatrooms, and Users, where users are connected to chatrooms via a "Join" model.

## Work In Progress
There are a couple of features that will need to be tuned/finished as well as additional functionality that needs to be implemented in the future. The user model needs to be expanded upon with the ability to select an icon as well as change your font type. With these additions, there will need to be changes to editing a user as well. Action cable will also need to be expanded upon to allow audio chatrooms to be setup and the relationship model needs to be configured to account for sending/receiving invitations to a chatroom.

## Contact
  - Email: simonlee0306@gmail.com
  - LinkedIn: https://www.linkedin.com/in/simonlee0306
  - Website: https://rakugen.github.io/
