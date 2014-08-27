#encoding: utf-8
class UsersController < ApplicationController
  def index
  	@users = User.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new(params[:user])
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
      flash[:notice] = "Профиль успешно создан"
  		redirect_to @user
  	else
      render :new
  	end
  end
end
