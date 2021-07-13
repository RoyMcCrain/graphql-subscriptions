module Types::Inputs
  class MessageSubscribeInputType < BaseInputObject
    description "MessageSubscribe入力"

    argument :room_id, ID, required: true, description: "部屋"
  end
end
