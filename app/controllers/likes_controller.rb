class LikesController < ApplicationController
    # before_action :correct_user, only: [:create, :destroy]
    before_action :logged_in_user, only: [:create, :destroy]

    def create
      @like = current_user.likes.create(tweet_id: params[:tweet_id])
      redirect_to root_url
    end

    def destroy
      @like = Like.find_by(tweet_id: params[:tweet_id], user_id: current_user.id)
      @like.destroy
      redirect_to root_url
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
