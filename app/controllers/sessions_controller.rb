class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create, :failure ]

  def new
    # Страница входа
    redirect_to root_path if current_user
  end

  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by(github_id: auth.uid) || User.create_from_github(auth)

    # Запуск фоновой задачи для синхронизации репозиториев
    SyncGithubRepositoriesJob.perform_later(user.id, auth.credentials.token)

    session[:user_id] = user.id
    redirect_to root_path, notice: "Вход выполнен успешно"
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Вы вышли из системы"
  end

  def failure
    redirect_to login_path, alert: "Не удалось войти через GitHub: #{params[:message]}"
  end
end

  # Метод только для тестов
  def create_test_session
    if Rails.env.test?
      session[:user_id] = params[:user_id]
      redirect_to root_path
    else
      render plain: "Только для тестовой среды", status: :forbidden
    end
  end
