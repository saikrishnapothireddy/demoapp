class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build if logged_in?
    @feed_items = Micropost.all.paginate(page: params[:page])# if current_user.present?
  end

  def help
  end

  def about
  end

  def contact
  end
end
