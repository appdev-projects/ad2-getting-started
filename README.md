# AD2: Getting started

Welcome to Full-Stack Application Development II! If it's been a while since you took Application Development I, here are a few things to review to get you back into swing of things:

## Ruby reference

We collected most of the Ruby and Rails classes/methods/keywords that we used in AppDev 1 into one giant reference here:

https://chapters.firstdraft.com/chapters/774

Skim through for a refresher and click into Full Explanations for more depth. Ask questions on Piazza about anything that’s fuzzy.

## Setup

Create a Gitpod workspace based on this repository.

In AppDev 1, we used the base-rails repo when starting a project from scratch; but from now on, we'll use [vanilla-rails](https://github.com/appdev-projects/vanilla-rails). Other than that, the steps in [this Chapter for starting a new app from scratch](https://chapters.firstdraft.com/chapters/851) still hold.

## The goal

To begin with, let's get a sneak peek at our goal for the first 2-3 weeks. Try running the following command:

```
rails generate scaffold book title:string description:text released:boolean
```

The `scaffold` generator is very similar to the `draft:generator`; but it's built in to Rails, and it exemplifies the kind of code that we need to learn to read and write in order to join the community of professional Rails developers.

`rails db:migrate`, visit `/books`, click around, and examine the code that was generated (`config/routes.rb`, `app/controllers/books_controller.rb`, etc).

Phew! There's a lot of mysterious new stuff. We're going to demystify it all over the next few weeks, step by step.

## Back it up

Let's now go back and review the code we learned in AD1. Run the following:

```
rails generate draft:resource movie title:string description:text released:boolean
```

As before, `rails db:migrate`, visit `/movies`, click around, and examine the code that was generated (`config/routes.rb`, `app/controllers/books_controller.rb`, etc).

Think of questions about anything and everything that looks fuzzy.

## Start the evolution

Together, we're going to start evolving the code we learned in AD1 into the kind of code that professional Rails developers write. Let's get started!

- Update our routes to be RESTful.
- Add dedicated add/edit pages.
- Create a better UX when validations don't pass.
