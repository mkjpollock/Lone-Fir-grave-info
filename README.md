# Grave Info

## Current functionality:
----------------


Signing in: Users can sign in using devise.

Roles: Users have limited access to site depending on role, using CanCan. Users with the contributor role can create new entries and edit their own entries. Users with the admin role can access and edit all entries. Admin users can also reassign the roles of other users.

Graves: Users with correct permissions can create graves. Users with admin status and users that have created the grave can update graves. Graves have a database table for basic information and additional tables for data that can have multiple values.

AWS storage connected, deployed to Heroku.

## ToDos
----------------

Can setup contribution statistics.

Add updating, other

Add searching

Add GUI for searching