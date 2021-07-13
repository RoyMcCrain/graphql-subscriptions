# README

```
bundle install
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed_fu

bundle exec rails s
```

```
yarn global add wscat

wscat -c localhost:3001/cable -o http://localhost:3001
```

ws送信用json
```json
{"command": "subscribe", "identifier": "{\"channel\":\"GraphqlChannel\"}"}
```

```json
{"command":"message","identifier":"{\"channel\":\"GraphqlChannel\"}","data":"{\"action\":\"execute\", \"query\": \"subscription Msg($attr: MessageSubscribeInput) { messageSubscribe(attr: $attr) { messages { body } } }\", \"variables\": {\"attr\": {\"roomId\": 1} } }"}
```

mutation
```graphql
mutation msg($attr: PostedInput!) {
  postedMessage(input: {attr: $attr}) {
    message {
      body
    }
  }
}

{
  "attr": {
    "body": "bbb",
    "userId": "1",
    "roomId": "1"
  }
}
```

で確認できた

