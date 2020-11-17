class RolesController < ApplicationController

    get '/roles/new' do
        redirect_if_not_logged_in
        erb :'roles/new'
    end

    post '/roles' do 
        redirect_if_not_logged_in
        role = Role.new(params[:role])

        if !params[:movie][:name].blank?
            movie = Movie.create(params[:movie])
            role.movie = movie
        end 

        if !params[:actor][:name].blank?
            actor = Actor.create(params[:actor])
            role.actor = actor
        end 

        role.save
        redirect to "/roles/#{role.id}"
    end 

    get '/roles' do 
        @roles = Role.all
        erb :'roles/index'
    end 

    get '/roles/:id' do 
        @role = Role.find_by_id(params[:id])
        erb :'roles/show'
    end 

    get '/roles/:id/edit' do 
        redirect_if_not_logged_in
        @role = Role.find_by_id(params[:id])
        @movies = Movie.all
        @actors = Actor.all
        erb :'roles/edit'
    end 

    patch '/roles/:id' do 
        redirect_if_not_logged_in
        role = Role.find_by_id(params[:id])
        role.update(params[:role])
        
        if params[:actor][:name] != ""
            role.create_actor(params[:actor])
        end 

        if params[:movie][:name] != ""
            role.create_movie(params[:movie])
        end 

        role.save
        redirect to "/roles/#{role.id}"
    end 
    
    delete '/roles/:id' do
        redirect_if_not_logged_in
        role = Role.find_by_id(params[:id])
        role.destroy
        redirect to '/roles'
    end
end