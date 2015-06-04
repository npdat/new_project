class ManageUsersController < ApplicationController
  before_action :set_manage_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /manage_users
  # GET /manage_users.json
  def index
    @users = User.order(:email).all
  end

  # GET /manage_users/1
  # GET /manage_users/1.json
  def show
    @users = User.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users }
    end
  end

  # GET /manage_users/new
  def new
    @user = User.new
  end

  # GET /manage_users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /manage_users
  # POST /manage_users.json
  def create
    @user = User.new
    @user.email = manage_user_params[:email]
    @user.password = manage_user_params[:password]
    upload_file_path = User.upload_file(manage_user_params[:upload_file])
    @user.user_signature = upload_file_path ? upload_file_path : nil


    respond_to do |format|
      if @user.save
        format.html { redirect_to manage_users_path, notice: 'User was successfully created.' }
        # format.json { render manage_users_path, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manage_users/1
  # PATCH/PUT /manage_users/1.json
  def update
    @user.email = manage_user_params[:email]
    @user.password = manage_user_params[:password]
    upload_file_path = User.upload_file(manage_user_params[:upload_file])
    @user.user_signature = upload_file_path ? upload_file_path : nil

    respond_to do |format|
      if @user.save
        format.html { redirect_to manage_users_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manage_users/1
  # DELETE /manage_users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to manage_users_path, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manage_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manage_user_params
      params[:user]
    end
end
