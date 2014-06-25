class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_user

  def load_user
    @user = User.first_or_create(
      first_name: 'Bob',
      last_name: 'Bob',
      email: 'bob@bob.bob'
    )
  end
end
