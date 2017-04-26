# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
- [x] Include more than one model class (list of model class names e.g. User, Post, Category)
  - Diver, Dive, Location
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Posts)
  - Dive belongs to Diver and Location
  - Diver has many Dives, and has many Locations through Dives.
  - Location has many Dives, and many Divers through Dives.
- [x] Include user accounts
  - A Diver is a user account, with name, email, and secured password.  All data are restricted to logged in Divers, and some (Dive) data
  - can only be edited by their owner.  Locations many be edited or added by any logged-in user.
- [x] Ensure that users can't modify content created by other users
  - Dives may only be created, edited, or deleted by their corresponding Diver.
- [x] Include user input validations
  - Each class has several inputs that must be validated, or ActiveRecord will not save them.
- [x] Display validation failures to user with error message (example form URL e.g. /posts/new)
  - If invalid fields are present in a form, validation messages are returned and displayed so the user can correct them and resubmit.
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
