class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path ,notice:'ユーザ登録が完了しました'
    else
      render :new
      
    end
  end
  

  def destroy
   @user.destroy
   redirect_to users_path ,   notice:'ユーザを削除しました'
  end

  def edit
    
  end
  
  def update
    if @user.update(user_params)
      redirect_to users_path , notice:'ユーザを更新しました'
    else
      render :edit
      
    end
  end
  
      def show
  
      end

      private
      def user_params
        #   フォームに不正な値が入ってないかフィルタリング
        params.require(:user).permit(:email,:password,:role)
      end
  
      def set_user
        @user = User.find(params[:id])
      end
    end