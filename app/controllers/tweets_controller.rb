class TweetsController < ApplicationController
    def index
        render json: { status: 200, allTweets: Tweet.all }
    end

    def show
        puts "Show Route: params #{params}"
        tweetFound = Tweet.find(params[:id])
        render(json: {tweet: tweetFound})
    end
end