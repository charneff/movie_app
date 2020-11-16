require './config/environment'

use Rack::MethodOverride
use RolesController
use MoviesController
run ApplicationController