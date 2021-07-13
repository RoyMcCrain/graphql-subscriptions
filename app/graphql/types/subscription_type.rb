module Types
  class SubscriptionType < Objects::BaseObject
    field :message_subscribe, subscription: Subscriptions::MessageSubscribe
  end
end
