class ProfilesController < ApplicationController
  def edit
    @country_options = ['USA', 'Canada', 'some other place']
  end

  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      redirect_to edit_user_path(@user)
    else
      @country_options = ['USA', 'Canada', 'some other place']
      render :edit
    end
  end
end
