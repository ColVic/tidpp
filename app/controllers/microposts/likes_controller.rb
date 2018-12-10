class Microposts::LikesController < ApplicationController
  before_action :set_post

  def create
    @micropost.likes.where(user_id: current_user.id).first_or_create

    render 'microposts/likes/create'
  end

  def destroy
    @micropost.likes.where(user_id: current_user.id).destroy_all

    respond_to do |format|
      format.html { redirect_to @micropost }
      format.js
    end
  end

  private

  def set_post
    @micropost = Micropost.find(params[:micropost_id])
  end
end
