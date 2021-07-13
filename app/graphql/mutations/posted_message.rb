module Mutations
  class PostedMessage < BaseMutation
    argument :attr, Types::Inputs::PostedInputType, required: true

    field :message, Types::Objects::MessageType, null: true

    def resolve(attr:)
      message = Message.create!(**attr.to_h)
      GraphqlSubscriptionsSchema.subscriptions.trigger(
        :message_subscribe,
        { attr: { room_id: message.room_id } },
        message,
      )
      {
        message: message,
      }
    end
  end
end
