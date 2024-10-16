class AssignDefaultAuthorToArticles < ActiveRecord::Migration[7.2]
  def up
    # Find or create the specific default user (Abdoul Kane)
    default_author = User.find_or_create_by!(
      email: "kaneaziz@gmail.com"   # Use the email to find or create the user
    ) do |user|
      user.name = "Abdoul Kane"     # Add other user details
      user.password = "googlemsg"
      user.password_confirmation = "googlemsg"
    end

    # Now assign this user as the default author for articles without authors
    Article.where(author_id: nil).update_all(author_id: default_author.id)
  end

  def down
    # Optionally, revert changes here (if needed)
  end
end
