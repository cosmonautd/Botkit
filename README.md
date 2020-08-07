# Botkit
### Simple natural language understanding to build chatbots

This project emerged from the need of extracting information from written messages and improve intent recognition of a chatbot's client. Botkit's NLU module brings together functionality from a couple of free software packages into a compact framework that can be trained to process text inputs and recognize language, sentiments, entities and intentions. Botkit is used by [Turret](https://github.com/cosmonautd/Turret) to provide support for its chatbot module.

#### Input: Who is David?

#### Output:
```
{
  "entities": [
    {
      "confidence": 0.0,
      "name": "David",
      "start": 2,
      "stop": 3,
      "type": "person"
    }
  ],
  "intent": "who",
  "intents": {
    "greetings": 0.0,
    "who": 2.0
  },
  "language": "en",
  "sentiments": {
    "compound": 0.0,
    "negative": 0.0,
    "neutral": 1.0,
    "positive": 0.0
  },
  "text": "Who is David?",
  "text_tagged": "Who is #person#?"
}
```

#### Input: Hello, Botkit :)

#### Output:
```
{
  "entities": [
    {
      "confidence": 0.0,
      "name": "Botkit",
      "start": 2,
      "stop": 3,
      "type": "person"
    }
  ],
  "intent": "greetings",
  "intents": {
    "greetings": 0.75,
    "who": 0.5
  },
  "language": "en",
  "sentiments": {
    "compound": 0.4588,
    "negative": 0.0,
    "neutral": 0.4,
    "positive": 0.6
  },
  "text": "Hello, Botkit :)",
  "text_tagged": "Hello, #person# :)"
}
```

⚠️ Warning: these are simple examples of the data returned by the NLU module. The quality of the outputs depends on the dataset used to train the model.
Both outputs shown above are the result of a training set with only 3 samples! If the same model is used for more complex sentences, it will probably fail. For better results, you should provide an adequate training set.
