# == Schema Information
#
# Table name: items
#
#  id          :bigint           not null, primary key
#  body        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Item < ApplicationRecord
end
