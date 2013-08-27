module FollowHelper
  def follow_button user
    if current_user.can_follow?(user)
      button_to "Follow", follow_user_path(user)
    end
  end
end
