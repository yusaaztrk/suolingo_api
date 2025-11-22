require "test_helper"

class AvatarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avatar = avatars(:one)
  end

  test "should get index" do
    get avatars_url, as: :json
    assert_response :success
  end

  test "should create avatar" do
    assert_difference("Avatar.count") do
      post avatars_url, params: { avatar: { description: @avatar.description, idle_video_url: @avatar.idle_video_url, name: @avatar.name, title: @avatar.title } }, as: :json
    end

    assert_response :created
  end

  test "should show avatar" do
    get avatar_url(@avatar), as: :json
    assert_response :success
  end

  test "should update avatar" do
    patch avatar_url(@avatar), params: { avatar: { description: @avatar.description, idle_video_url: @avatar.idle_video_url, name: @avatar.name, title: @avatar.title } }, as: :json
    assert_response :success
  end

  test "should destroy avatar" do
    assert_difference("Avatar.count", -1) do
      delete avatar_url(@avatar), as: :json
    end

    assert_response :no_content
  end
end
