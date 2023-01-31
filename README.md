# Calendar_OOP
Week 4 Day 1 (Fullstack) - Calendar using OOP

## Object-Oriented Programming (OOP)

Object-oriented programming (OOP) is a computer programming model that organizes software design around data, or objects, rather than functions and logic. An object can be defined as a data field that has unique attributes and behavior.

The first step in OOP is to collect all of the objects a programmer wants to manipulate and identify how they relate to each other -- an exercise known as data modeling.

Once an object is known, it is labeled with a class of objects that defines the kind of data it contains and any logic sequences that can manipulate it. Each distinct logic sequence is known as a method. Objects can communicate with well-defined interfaces called messages.

## The "app.rb" file

The main file "app.rb" allow to test and execute the final program, that will call other class programs (user.rb and event.rb) and make them communicate.

## The User class

In the "user.rb" file we will define the User class, that can do :
- Stores the email and age of a user (initialize)
- Returns all users if called (method)
- Research users by email (method)

## The Event class

In the "event.rb" file we will define the Event class, that stores an event information: start_date, duration, title, attendees (initialize).
The methods that can be called are :
- Postpone the event for 24h, returns the end date
- Finds if the event is past, future and in less than 30 min
- Display the event using the to_s method
- Performs an age anaysis: stores ages in array, calculates average
- Creates a "daugther" class WorkEvent that reuses methods from mother class