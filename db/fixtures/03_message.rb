(1..10).each do |i|
  Message.seed do |v|
    v.id = i
    v.body = SecureRandom.alphanumeric(10)
    v.user_id = (1..3).to_a.sample
    v.room_id = (1..3).to_a.sample
  end
end
