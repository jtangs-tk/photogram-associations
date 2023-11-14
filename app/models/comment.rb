# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#  photo_id   :integer
#

class Comment < ApplicationRecord
  validates(:commenter, { :presence => true })

  # Association accessor methods to define:
  
  ## Direct associations

  belongs_to(:commenter, class: "User", foreign_key: "author_id")

  belongs_to(:photos, class: "Photo", foreign_key: "photo_id")

  # Comment#commenter: returns a row from the users table associated to this comment by the author_id column

  # Comment#photo: returns a row from the photos table associated to this comment by the photo_id column

end
