module Types
  class MutationType < Objects::BaseObject
    # TODO: remove me
    field :posted_message, mutation: Mutations::PostedMessage
  end
end
