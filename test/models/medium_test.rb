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

require 'test_helper'

class MediumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
