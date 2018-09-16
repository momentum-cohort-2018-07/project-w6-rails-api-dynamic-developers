# README

Hello!! Welcome to Chirpper, an API only Post & Comment app.  With this app, you can:

  * Create a User Account
  * Add a Post & Delete your own Post
  * View other User's Post
  * Add a Comment to a Post
  * View the Comments on a Post
  * Follow other Users
  * Be followed by other Users

Basics:

  * You must Create a valid User Account before 
    accessing this application
  * Upon successful User Account creation, the return JSON response
    will include an API TOKEN that must be included with 
    all other application requests
  * All Posts must have a minimum of 2 characters and
    no more than 280 characters


Creating a User Account 

  * The User Account parameters are as follows:
    * username:string
    * password_digest:string

  * The HTTP path for User Account Creation is: 
    * localhost:3000/users

    * Sample User Account Creation POST Request: JSON format

        {
          "username": "John Doe"
          "password_digest": "password"
        }

    * Sample User Account POST Response: JSON format

        {
          "id": 1,
          "username": "John Doe",
          "password_digest": "password",
          "api_token": "GsRvDunhmbSLWXF4JcZtZEPF",
          "created_at": "2018-09-09T19:37:07.008Z",
          "updated_at": "2018-09-09T19:37:07.008Z"
        }


  Creating a Post

  * Requires TOKEN assigned to valid User Account
  * All Post must be a minimum of 2 characters and 
    maximum of 280 characters

   * POST parameters are as follows:
    * body:string
    * user_id:integer

   * The HTTP path for Post creation is:
    *  //localhost:3000/posts

    * Sample Post creation using POST request: JSON format

      {
        "body": "this is sample text for the body of a post",
        "user_id": 1
      }

    * Sample Post creation POST response: JSON format

        {
          "id": 1,
          "body": "this is sample text for the body of a post",
          "user_id": 1,
          "created_at": "2018-09-09T23:55:10.608Z",
          "updated_at": "2018-09-09T23:55:10.608Z"
        }


  Viewing a Post

  * Any User can view any Post

  * The HTTP path for viewing Post is:
    *  //localhost:3000/posts/[Post :id]

    * Submitting a GET request with Post ID 1
      will return the below JSON response

        {
          "id": 1,
          "body": "this is sample text for the body of a post",
          "user_id": 1,
          "created_at": "2018-09-09T23:55:10.608Z",
          "updated_at": "2018-09-09T23:55:10.608Z"
        }


  Deleting a Post

  * Only the User that created a Post can delete it and it Comments
    * All Comments will be deleted when the Post is deleted

  * The HTTP path for viewing Post is:
    *  //localhost:3000/posts/[Post :id]

    * Submitting a DELETE request with Post ID 1
      will return the below JSON response

        {
          "id": 1,
          "body": "this is sample text for the body of a post",
          "user_id": 1,
          "created_at": "2018-09-09T23:55:10.608Z",
          "updated_at": "2018-09-09T23:55:10.608Z"
        }


  Adding a Comment to a Post

  * Any user can add a Comment to any Post

  * Comment parameters are as follows:
    * body:string

  * The HTTP path for adding a Comment to a Post is:
    *  //localhost:3000/posts/[post:id]/comments


    * Sample Comment creation using POST request: JSON format

        {
          "body": "this is sample text for the body
                  of a Comment on a Post"
        }

    * Sample Comment creation POST response: JSON format

        {
          "id": 1,
          "body": "this is sample text for the body
                   of a Comment on a Post",
          "post_id": 1,
          "user_id": 1,
          "created_at": "2018-09-10T00:23:00.275Z",
          "updated_at": "2018-09-10T00:23:00.275Z"
        }

    
  Viewing  Commnents on a Post

  * Any User can view any Comment

  * The HTTP path for viewing Post is:
    * //localhost:3000/posts/[post:id]/comments

    * Submitting a GET request with Post ID 1
      will return ALL the Comments for that Post
      in the JSON response

        {
          "id": 1,
          "body": "this is sample text for the body
                   of a Comment on a Post",
          "post_id": 1,
          "user_id": 1,
          "created_at": "2018-09-10T00:23:00.275Z",
          "updated_at": "2018-09-10T00:23:00.275Z"
        }

        {
          "id": 2,
          "body": "this is additional sample text for the body
                   of a Comment on a Post",
          "post_id": 1,
          "user_id": 1,
          "created_at": "2018-09-10T00:23:01.275Z",
          "updated_at": "2018-09-10T00:23:01.275Z"
        }

