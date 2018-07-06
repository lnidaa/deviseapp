class ConfirmationsController < Devise::ConfirmationsController
  private

  def user_confirmation_path
    posts_path
  end
end