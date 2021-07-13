module Subscriptions
  class MessageSubscribe < BaseSubscription
    # NOTE: required: trueだとエラーになる。なぜ？
    argument :attr, Types::Inputs::MessageSubscribeInputType, required: false

    field :room, Types::Objects::RoomType, null: false
    field :messages, [Types::Objects::MessageType], null: false

    def subscribe(attr:)
      room = Room.find(attr.room_id)
      {
        room:     room,
        messages: room.messages,
      }
    end

    def update(attr:)
      room = Room.find(attr.room_id)
      {
        room:     room,
        messages: room.messages,
      }
    end
  end
end
