# == Schema Information
#
# Table name: rooms
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
module Types::Objects
  class RoomType < BaseObject
    description "ルーム"

    field :id, ID, null: false, description: "ID"
    field :messages, [MessageType], null: true, description: "メッセージ"
  end
end
