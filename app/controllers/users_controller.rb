class UsersController < ApplicationController
  #before_action :set_user, only: %i[ show edit update destroy ]
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy,
                                        :following, :followers]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  # GET /users or /users.json
  def index
    @users = User.paginate(page: params[:page])
  end

  # GET /users/1 or /users/1.json
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      @user.send_activation_email
      flash[:info] = "Please check your email to activate your account."
      redirect_to root_url
      # format.html { redirect_to user_url(@user) }
      # format.json { render :show, status: :created, location: @user }
    else
      render 'new'
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    if @user.update(user_params)
      flash[:success] = "User was successfully updated."
      redirect_to user_url(@user)
      # format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
      # format.json { render :show, status: :ok, location: @user }
    else      
      # format.html { render :edit, status: :unprocessable_entity }
      # format.json { render json: @user.errors, status: :unprocessable_entity }
      render 'edit'
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    # @user.destroy
    # flash[:success] = "User deleted successfully."
    # redirect_to users_url
    User.find(params[:id]).destroy
    flash[:success] = "User deleted successfully."
    redirect_to users_url
  end

  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  def switch_user
    session[:culprit] = current_user.id if session[:culprit].blank? || session[:culprit] == current_user
    user = User.find(params[:id])
    log_in(user)
    redirect_to users_url
  end

  def original_user
    user = User.where(id: session[:culprit]).first
    log_in(user)
    redirect_to users_url
  end

  def make_admin
    user = User.where(id: params[:id]).first
    if !user.admin?
      user.update_attribute(:admin, true)
    else
      user.update_attribute(:admin, false)
    end
    redirect_to users_url
  end

  def message_user
    @chat = current_user.messages.build
    @message_feed = (Message.all.where(user_id: [current_user.id, params[:id]], receiver_id: [current_user.id, params[:id]])).paginate(page: params[:page], per_page: 5)
    @chat.receiver_id = params[:id]
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def correct_user
      @user = User.find(params[:id])
      unless current_user?(@user)
        flash[:danger] = "Access Denied"
        redirect_to(root_url)
      end
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
