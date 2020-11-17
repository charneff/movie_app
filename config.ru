require './config/environment'

use Rack::MethodOverride
use RolesController
use ActorsController
use MoviesController
use UsersController
run ApplicationController