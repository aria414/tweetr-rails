class MetaController < ApplicationController
    # Need to close server and rerun to see the changes in json data.
    def about
        render json: { author: "Foggy Nelson", last_updated: "23 Feb 2021" }
    end

end

