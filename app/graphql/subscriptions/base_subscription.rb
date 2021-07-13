module Subscriptions
  class BaseSubscription < GraphQL::Schema::Subscription
    # Hook up base classes
    object_class Types::Objects::BaseObject
    field_class Types::BaseField
    argument_class Types::BaseArgument
  end
end