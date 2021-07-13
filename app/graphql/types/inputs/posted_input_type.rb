module Types::Inputs
  class PostedInputType < BaseInputObject
    description "Posted入力"

    argument :user_id, ID, required: true
    argument :room_id, ID, required: true
    argument :body, String, required: true
  end
end
