require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_path
    assert_response :success
  end

  test "should redirect after logout" do
    # Создаем пользователя и имитируем вход
    user = User.create!(github_id: "123456", username: "testuser", email: "test@example.com")
    post "/session", params: { user_id: user.id }

    # Выход
    delete logout_path
    assert_response :redirect
    assert_redirected_to login_path

    # Очистка
    user.destroy
  end

  # Не можем напрямую тестировать create и failure через get, так как они вызываются через OmniAuth
end
