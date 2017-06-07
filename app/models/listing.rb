# == Schema Information
#
# Table name: listings
#
#  id          :integer          not null, primary key
#  book_name   :string
#  version     :integer
#  course_code :string
#  required    :boolean
#  price       :float
#  description :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Listing < ApplicationRecord
  validates :book_name,
            :version,
            :price,
            :user_id,
            presence: true

  has_many :listings, :dependent => :destroy
  has_many :photos, :dependent => :destroy
end
