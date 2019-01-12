# == Schema Information
#
# Table name: user_media
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  medium_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserMedium < ApplicationRecord
  belongs_to :user
  belongs_to :medium

  def time_to_expire
    self.updated_at + 3.days - Time.now
  end

  def expired?
    (self.updated_at + 3.days - Time.now) < 0
  end
end
