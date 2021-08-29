class LikesController < ApplicationController
    before_action :correct_user, only: [:create, :destroy]
    before_action :logged_in_user, only: [:create, :destroy]

    def create
      @tweet = Tweet.find(params[:tweet_id])
      @tweet.fav(current_user)
      redirect_to user_path
    end

    def destroy
      @tweet = Like.find(params[:id]).tweet
      @tweet.unfav(current_user)
      redirect_to user_path
    end

    private
        def correct_user
            @tweet = current_user.tweets.find_by(id: params[:id])
            if @tweet.nil?
                flash[:danger] = "不正なアクセスです"
                redirect_to root_url
            end
        end
end
