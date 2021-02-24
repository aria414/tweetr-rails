class TweetsController < ApplicationController
    def index
        render json: { status: 200, allTweets: Tweet.all }
    end

    def show
        puts "Show Route: params #{params}"
        tweetFound = Tweet.find(params[:id])
        render(json: {tweet: tweetFound})
    end

    def create
        tweet = Tweet.new(tweet_params)

        if tweet.save
            render(status: 200, json: {tweetMade: tweet} )
        else
            render(status: 422, json: {tweetMade: tweet, errors: tweet.errors} )
        end
    end

    def update
        tweetFound = Tweet.find(params[:id])
        tweetFound.update(tweet_params)
        render(json: {tweet: tweetFound})
    end

    def destroy
        Tweet.destroy(params[:id])
        render(status: 204)
    end

    private

    def tweet_params
        params.require(:tweet).permit(:title, :content, :author)
    end
end