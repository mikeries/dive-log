# Dive Logger
An app to log dives.  Each user is a diver that records data for the dives that he has made, including the location.

## Classes
### Diver
* A Diver has the following information: name, email, and password,  For safety, the divers must log in and their data must be kept securely.

### Dive
* The Dive class contains information about each specific dive, including:
  * Time and Date
  * Dive duration
  * Maximum depth
  * Starting tank pressure
  * Ending tank pressure
  * ballast
  * comments
  * location

### Location
* The Location class contains informations regarding specific locations, which is shared between dives and divers:
  * Name
  * Desciption
  * Type
  * City
  * Country

IDEA: Maybe add the ability for divers to add comments to the locations...

## Navbar
Shows the app title, and the following:
* Home button
* User information
* Login (or Logout) depending on session.
* Locations button for managing locations
* Dives button for managing dives

## Pages
### Welcome
Welcome the user, describe the application, and invite them to sign up or log in.

### Log In
Divers will log in using email and password.  Failing redirects back to login page with an included error message.

### Sign Up
Divers sign up using email, password, and Name.  All fields are required.  Failing validation redirects back to the signup page with an included error message.

### Home
Redirects to welcome if not logged in.  Otherwise shows a list of dives (summarized) for that Diver.  Selecting a dive navigates to the Show Dive Detail page.  Includes a 'new dive' button at the top of the list.

### Show Dive Detail
Shows all details for a dive, allowing the Diver to edit or delete their own dives.  Redirects to Home if the current user is not the owner of this dive.
* Make sure to perform user authentication on all routes related to showing, editing, or deleting dives.

### New/Edit Dive
Allow the diver to create or edit one of his or her own dives.  Requires user authentication and must validate inputs.  Invalid posts reroute back to the new/edit screen with an error message.  Use a dropdown box to select location.  If "new" is selected, the user is redirected to the "New Location" page after submitting the dive.  Otherwise returns to the home page.

### Locations
Show a list of all dive locations, with links to allow editing/deleting.  Add a 'new location' button somewhere.  Login is required, but anyone can view or edit a location.

### New/Edit Location
Show form allowing users to create/edit/delete a location.  Login is required, but any user can modify locations.
* A location can only be deleted or modified if it is not referenced by a Dive.

## Implementation
Diver is the root class.  A Diver has many Dives and many Locations through Dive
A Dive belogs to a diver, and belongs to a location.
A Location has many Dives, and many Divers through Dive.
(Maybe just use User instead of Diver?)

## Controllers
### UserController
get '/' Welcome page
get '/login' login page
get '/signup' signup page

### DiveController
get '/dives'
get '/dives/:id'
get '/dives/new'
post '/dives'
get '/dives/:id/edit
post '/dives/:id'
post '/dives/:id/delete'

### LocationController
get '/locations'
get '/locations/new'
post '/locations'
get '/locations/:slug'
post '/locations/:slug'
get '/locations/:slug/edit'
post '/locations/:slug/delete'

