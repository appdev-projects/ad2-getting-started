# Scaffold: Getting started

Let's level up our code to become Industrial Grade™.

## Setup

Create a Gitpod workspace based on this repository.

In Phase 1, we used the base-rails repo when starting a project from scratch; but from now on, we'll use [vanilla-rails](https://github.com/appdev-projects/vanilla-rails). Other than that, the steps in [this Chapter for starting a new app from scratch](https://chapters.firstdraft.com/chapters/851) still hold.

## Back it up

Let's review what we learned in Phase 1. Run the following:

```
rails generate draft:resource movie title:string description:text released:boolean
```

[The `draft:resource` generator](https://chapters.firstdraft.com/chapters/773) automates writing the code that we spent many painstaking weeks learning how to write, step-by-step. It creates a fully-function database-backed CRUD web resource.

`rails db:migrate`, visit `/movies`, click around, and examine the code that was generated (`config/routes.rb`, `app/controllers/books_controller.rb`, etc). Think of questions about anything and everything that looks fuzzy.

## The goal

Let's get a sneak peek at our goal for the next few projects. Try running the following command:

```
rails generate scaffold book title:string description:text released:boolean
```

The `scaffold` generator is very similar to the `draft:generator`; but it's built in to Rails, and it exemplifies the kind of code that we need to learn to read and write in order to join the community of professional Rails developers.

As before, `rails db:migrate`, visit `/books`, click around, and examine the code that was generated (`config/routes.rb`, `app/controllers/books_controller.rb`, etc).

Phew! There's a lot of mysterious new stuff. We're going to demystify it all over the next few weeks, step by step.

## Start the evolution

Together, we're going to start evolving the code we learned in AD1 into the kind of code that professional Rails developers write. Let's get started!

- Update our routes to be RESTful.
- Add dedicated add/edit pages.
- Create a better UX when validations don't pass.
