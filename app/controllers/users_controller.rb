class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
    # Pathパラメータで送信されるID値で、Userモデルの特定のオブジェクトを取得するように記述し、それを@userに代入した
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
