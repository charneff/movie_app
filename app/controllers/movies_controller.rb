class MoviesController < ApplicationController

    get '/movies' do
        #index
        #get all of the movies
        @movies = Movie.all
        erb :'movies/index'
    end 

    get '/movies/new' do
        #new
        #get the form to create a new movie
        erb :'movies/new'
    end

    post '/movies' do 
        binding.pry
        #create (backend)
        #create a new movie and redirect
    end 

    get '/movies/:id' do 
        #show
        #show one movie
    end 

    get '/movies/:id/edit' do 
        #edit
        #get the form to edit a movie
    end 

    patch '/movies/:id' do 
        #update
        # update the single movie 
    end

    delete '/movies/:id' do 
        #delete
        #destroy the single movie
    end 
  

end 