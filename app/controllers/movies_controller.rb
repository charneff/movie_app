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
        redirect_if_not_logged_in
        erb :'movies/new'
    end

    post '/movies' do
        #create (backend)
        #create a new movie and redirect
        redirect_if_not_logged_in
        movie = Movie.create(params[:movie])
        redirect to "/movies/#{movie.id}"
    end 

    get '/movies/:id' do 
        #show one movie
        @movie = Movie.find(params[:id])
        erb :'movies/show'
    end 

    get '/movies/:id/edit' do 
        #edit
        #get the form to edit a movie
        redirect_if_not_logged_in
        @movie = Movie.find_by_id(params[:id])
        if @movie.user_id && @movie.user_id == current_user.id
            erb :'movies/edit'
        else 
            flash[:message] = "You are unable to perform that action."
            redirect to "/movies/#{@movie.id}"
        end 
    end 

    patch '/movies/:id' do 
        #update
        # update the single movie 
        redirect_if_not_logged_in
        movie = Movie.find_by_id(params[:id])
        if movie.user_id && movie.user_id == current_user.id
            movie.update(params[:movie])
            redirect to "/movies/#{movie.id}"
        else
            flash[:message] = "You are unable to perform that action."
            redirect to "/movies/#{movie.id}"
        end 
    end

    delete '/movies/:id' do 
        #delete
        #destroy the single movie
        binding.pry
        redirect_if_not_logged_in
        movie = Movie.find_by_id(params[:id])
        if movie.user_id && movie.user_id == current_user.id
            movie.destroy
            redirect to '/movies'
        else
            flash[:message] = "You are unable to perform that action."
            redirect to "/movies/#{movie.id}"
        end 
    end 
  

end 