# == Schema Information
#
# Table name: media
#
#  id             :integer          not null, primary key
#  name           :string
#  media_type     :integer
#  episode_number :integer
#  media_group_id :integer
#  description    :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Medium < ApplicationRecord
  belongs_to :media_group, optional: true, class_name: "MediumGroup"

  enum media_type: [:movie, :tv_show]
end
