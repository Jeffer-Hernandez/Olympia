Specs:

    [X] Use Rails to build the app 

    [X] Your models must:

    [X] Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships
    -User has many Competitions
    -Competitions belong to Users
    -has many workouts through training sessions
    -has many training sessions through competitions

    [X] Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user
    -Training_sessions is my join table.
    -It takes a date and condition.

    [X] Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.
    -Multiple validations for presence and uniqueness in all models.

    [X] You must include at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).
    -"scope :by_workout" method in training_session model.

    [X] Your application must provide standard user authentication, including signup, login, logout, and passwords.
    -Created a sessions controller and views.

    [X] Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...
    -Used google oauth.

    [X] You must include and make use of a nested resource with the appropriate RESTful URLs:

        • You must include a nested new route with form that relates to the parent resource

        • You must include a nested index or show route
    -Nested training_session routes in workouts and competitions.

    

    [X] Your forms should correctly display validation errors:

        a. Your fields should be enclosed within a fields_with_errors class

        b. Error messages describing the validation failures must be present within the view.
    -Created a partial for errors in Views/Layout


    [X] Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.

        • Your fields should be enclosed within a fields_with_errors class:

        • Logic present in your controllers should be encapsulated as methods in your models.

        • Your views should use helper methods and partials when appropriate.

        • Follow patterns in the Rails Style Guide and the Ruby Style Guide.
    -Affirmative


    [X] Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.
    -Affirmative

Confirm:

    [X] You have a large number of small Git commits
    [X] Your commit messages are meaningful
    [X] You made the changes in a commit that relate to the commit message
    [X] You don't include changes in a commit that aren't related to the commit message