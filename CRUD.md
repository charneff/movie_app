# CRUD

# Create
POST /movies & GET /movies/new

    GET /movies/new
        erb :'movies/new'
    POST /movies
        movie = Movie.create(params)
                OR
        movie = Movie.new
        movie.attributes= params[:key]
        movie.save
                THEN
        redirect to 

# Read
GET /movies & GET /movies/:id

    GET /movies
        @movies = Movie.all
        erb :'/movies/index'

    GET /movies/:id
        @movie = Movie.find(params[:id])
        @movie = Movie.find_by(id: params[:id])
        @movie = Movie.find_by_id(params[:id])
        erb :'/movies/show'

# Update
GET /movies/:id/edit & PUT/PATCH /movies/:id/edit

    GET /movies/:id/edit
        @movie = Movie.find_by_id(params[:id])
        erb :'/movies/edit'

    PUT/PATCH /movies/:id
        movie = Movie.find_by(id: params[:id])
        
        movie.attribute = params[:att]
        movie.save
            OR
        movie.update(params)
            THEN
        redirect to

# Delete

    DELETE /movies/:id
        movie = Movie.find(params[:id])
        movie.destroy
            OR
        Movie.destroy(movie)
            THEN
        redirect to


| Verb | Route| View |
|------|------|-------|
| GET | /movies | index |  #Get all the movies
| GET | /movies/:id | show|  #Get 1 movie   '/movies/5'
| GET | /movies/new | new | #Get the form to make a movie
| POST | /movies |  | #Create a movie
| GET | /movies/:id/edit | edit | #Get a form to edit 1 movie
| PUT/PATCH | /movies/:id |  | #update 1 movie
| DELETE | /movies/:id |  | #delete 1 movie





# To make Patch and Delete Requests
In your form:

<input type="hidden" name="_method" value="PATCH">

In your config.ru:

use Rack::MethodOverride
