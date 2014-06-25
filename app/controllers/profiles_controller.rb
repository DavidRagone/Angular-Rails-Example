class ProfilesController < ApplicationController
  def edit
    @user = User.first_or_create(first_name: 'Bob', email: 'bob@bob.bob')
    @country_options = ['USA', 'Canada', 'some other place']
  end

  def update
  end
end
