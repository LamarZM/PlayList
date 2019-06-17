class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        songs_path #your path
      end
end
