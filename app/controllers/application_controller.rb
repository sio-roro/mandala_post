class ApplicationController < ActionController::Base
  # ログイン後のリダイレクト先
  def after_sign_in_path_for(resource)
    users_show_path(resource.id)
  end
end
