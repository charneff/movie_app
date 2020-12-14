class ActorsController < ApplicationController
    get '/actors' do 
        @actors = Actor.all 
        erb :'actors/index'
    end

    get '/actors/:id' do 
        @actor = Actor.find_by_id(params[:id])
        @movies = @actor.movies
        erb :'actors/show'
    end

end 