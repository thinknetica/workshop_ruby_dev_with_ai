class SyncGithubRepositoriesJob < ApplicationJob
  queue_as :default

  def perform(user_id, access_token)
    # Получаем пользователя
    user = User.find_by(id: user_id)
    return unless user

    # Логика синхронизации будет добавлена позже
    # Здесь будем использовать Octokit для получения репозиториев пользователя
    # и сохранять их в базу данных
    Rails.logger.info "Запущена синхронизация репозиториев для пользователя #{user.username}"
    
    # Пример будущей реализации:
    # client = Octokit::Client.new(access_token: access_token)
    # repositories = client.repositories(nil, { visibility: 'private' })
    # repositories.each do |repo|
    #   # Обработка репозитория
    # end
  end
end
