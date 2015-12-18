class UsersController < ApplicationController
    skip_before_filter :require_login, only: [:create, :new]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in(@user)
      redirect_to new_member_path
    else
      flash[:error] = @user.errors.messages
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to members_path
    else
      flash[:error] = @user.errors.full_messages
      render :edit
    end
  end

  def destroy
    user = User.find(params[:id])
    user.delete
    redirect_to members_path
  end

  def show
    @members = Member.all
  end

end

