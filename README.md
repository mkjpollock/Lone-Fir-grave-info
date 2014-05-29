# Grave Info

## Current functionality:
----------------


Signing in: Users can sign in using devise.

Roles: Users have limited access to site depending on role, using CanCan. Users with the contributor role can create new entries and edit their own entries. Users with the admin role can access and edit all entries.

Graves: Users with correct permissions can create graves. Users with admin status and users that have created the grave can update graves. Graves have basic information and additional information for data that can have multiple values.

## ToDos
----------------

Setting up role assignment, available to admin only.

Setting up views for users, available to admin only?

Can setup contribution statistics.

Get AWS setup for storage.

Fix devise views
