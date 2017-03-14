# media-app
a media tracker and planner made with ruby on rails and angular

## Overview

## Wireframe Links

## User Stories

As a user I want to:

- Sign up for an account
- Login into my account when returning to the application
- View my most recent articles and podcast on an index page
- Add a new piece of media
- Edit an existing piece of media
- Delete an existing piece of media


REACH GOALS for users:
- list my pieces of media as played/read or unplayed/not read
- organize my selected pieces of media on a UI Calendar
- add my media to a list of recommendations for other users (possibly favorites)

## Models
User - Standard user account features for current_user
Links - Full CRUD for media added by current_user
Posts - Full CRUD for media added by current_user


## Active Record Associations

Polymorphic Association Examples

## ERD

### Entities
#### User
```
id: Number,
username: String,
email: String,
password_digest: String,
created_at: Date,
last_updated: Date
```

#### Link
```
id: Number,
name: String,
url: String,

```

#### Note
```
id: Number,
note: String,
description: String,
user_id: String,
created_at: Date,
last_updated: Date
```

### SQL Tables


## Technologies Used
### Front-End
- HTML5
- Angular.js
- CSS3
- Express.js

### Back-End
- Ruby on Rails
- postgresql

## MVP
- Create 3 Models: Users, Links, Notes
- User Routes: Signup, Login, Logout
- Link Routes: full CRUD
- Note Routes: full CRUD
- User Authentication
- Website Design (CSS)

## Reach Goals


## Project Challenges

## Final Thoughts  
