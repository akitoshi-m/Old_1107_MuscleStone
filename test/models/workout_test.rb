require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase

  test "should be valid" do
    assert @workout.valid?
  end

  test "user_id should be present" do
    @workout.user_id = nil
    assert_not @workout.valid?
  end
  # 投稿が空ではないか
  test "description should be present" do
    @workout.description = ""
    assert_not @workout.valid?
  end
  # 文字数が140字以内であるか
  test "description should be at most 140 characters" do
    @workout.description = "a" * 141
    assert_not @workout.valid?
  end
  # ユーザーが削除された時投稿も一緒に消えているか
  test "associated workouts should be destroyed" do
    @user.save
    @user.workouts.create!(description: "こんにちは")
    assert_difference 'Workout.count', -1 do
      @user.destroy
    end
  end
end
