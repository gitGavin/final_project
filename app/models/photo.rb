# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  listing_id :integer
#  image_url  :string
#  caption    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ApplicationRecord
end
