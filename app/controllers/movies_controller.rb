class MoviesController < ApplicationController

  def new

    @the_movie = Movie.new

    render template: "movies/new.html.erb"
  end

  def edit
    the_id = params.fetch(:id)
    @the_movie = Movie.where(id: the_id).first

    render template: "movies/edit.html.erb"
  end

  def index
    matching_movies = Movie.all

    @list_of_movies = matching_movies.order({ :created_at => :desc })

    render({ :template => "movies/index.html.erb" })
  end

  def show
    the_id = params.fetch("id")

    matching_movies = Movie.where({ :id => the_id })

    # @the_movie = matching_movies.at(0)

    @the_movie = matching_movies[0]
    @the_movie = matching_movies.first

    render({ :template => "movies/show.html.erb" })
  end

  def create
    @the_movie = Movie.new
    @the_movie.title = params.fetch("query_title")
    @the_movie.description = params.fetch("query_description")
    @the_movie.released = params.fetch("query_released", false)

    if @the_movie.valid?
      @the_movie.save
      redirect_to("/movies", { :notice => "Movie created successfully." })
    else
      # cookies[:title] = params.fetch("query_title")
      # cookies[:description] = params.fetch("query_description")

      # redirect_to("/movies/new", { :alert => the_movie.errors.full_messages.to_sentence })

      render template: "movies/new"
    end
  end

  def update
    the_id = params.fetch("id")
    the_movie = Movie.where({ :id => the_id }).first

    the_movie.title = params.fetch("query_title")
    the_movie.description = params.fetch("query_description")
    the_movie.released = params.fetch("query_released", false)

    if the_movie.valid?
      the_movie.save
      redirect_to("/movies/#{the_movie.id}", { :notice => "Movie updated successfully." })
    else
      redirect_to("/movies/#{the_movie.id}", { :alert => the_movie.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("id")
    the_movie = Movie.where({ :id => the_id }).first

    the_movie.destroy

    redirect_to("/movies", { :notice => "Movie deleted successfully." })
  end
end
