class Dashboard
  def initialize user
    @user = user
  end

  def shouts
    Shout.where(user_id: dashboard_user_and_followed_user_ids)
  end

  private
  attr_reader :user

  def dashboard_user_and_followed_user_ids
    user.self_and_followed_user_ids
  end
end
