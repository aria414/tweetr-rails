class TweetsController < ApplicationController
    def index
        render json: { status: 200, allTweets: Tweet.all }
    end

    # def show
    # end
end