class FollowersController < ApplicationController

  skip_before_action :verify_authentication

  def new
  end

  def create
    @follow = Follow.new
    user = User.find(params[:id])
    user = User.find(params[:id])
    user.follow(user)

     if @follow.save
      render json: @follow, status: :created, location: @follow
    else
      render json: @follow.errors, status: :unprocessable_entity
    end
end

# def follow_params
# params.require(:follow).permit(:followable_type, :followable_id,                                     :follower_type, :follower_id)
# end

end
