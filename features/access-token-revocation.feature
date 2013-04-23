Feature: Dealing with revoked access tokens
  From time to time, users will revoke access to your application. Sadly, you won't know that this has happened until
you attempt a request on their behalf. Only at that point will you get an authentication failure because your access
token was revoked. Luckily, OAuth::Rails has got your back.