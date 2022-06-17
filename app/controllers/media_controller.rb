class MediaController < ApplicationController
  def new
    @media = Medium.new
  end

  def create
    media = current_user.mediums.create!(user_params)
    if media.save
      redirect_to root_path
    else
      flash[:danger] = "media not saved"
      redirect_to root_path
    end
  end

  private
    def user_params
      params.require(:medium).permit(:name,:avatar)
    end
end
