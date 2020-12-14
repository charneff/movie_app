class ApplicationController < Sinatra::Base 

    configure do 
        set :public_folder, 'public'
        set :show_exceptions, :after_handler
        set :views, 'app/views'
        enable :sessions
        set :session_secret, ENV['SESSION_SECRET']
         # set :environment, :production
        register Sinatra::Flash
    end 

    get '/' do 
        if settings.development?
            @env = "development"
        else
            @env = "not development"
        end 
       erb :welcome
    end 

    error ActiveRecord::RecordNotFound do
        redirect '/movies'
    end

    error 400..510 do
        'Boom'
    end

    helpers do 
        def logged_in?
            !!session[:user_id]
        end 

        def current_user
            @current_user ||= User.find_by_id(session[:user_id])
        end 

        def redirect_if_not_logged_in
            flash[:message] = "Please log in before continuing!"
            redirect to '/signin' if !logged_in?
        end
        
    end 
end 
