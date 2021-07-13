# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
module Types::Objects
  class UserType < BaseObject
    description "ユーザー"

    field :name, String, null: false, description: "名前"
    field :messages, [MessageType], null: true, description: "メッセージ"
  end
end
