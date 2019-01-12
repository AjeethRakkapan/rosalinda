# == Schema Information
#
# Table name: medium_groups
#
#  id          :integer          not null, primary key
#  name        :string
#  season      :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class MediumGroup < ApplicationRecord
end
