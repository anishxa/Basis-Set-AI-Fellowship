enum Sentiment {
  POSITIVE
  NEGATIVE
  NEUTRAL
}

enum NewsCategory {
  WORLD
  SPORTS
  BUSINESS
  SCIENCE_TECHNOLOGY
  POLITICS
  ENTERTAINMENT
  HEALTH
  OTHER
}

class Entity {
  name string @description("The entity name as it appears in the text")
  entity_type string @description("One of: PERSON, ORGANIZATION, LOCATION, PRODUCT, EVENT")
  relevance_score float @description("0.0 to 1.0 - how central this entity is to the article")
}

class ArticleAnalysis {
  headline_rewrite string @description("A cleaner, more neutral version of the headline")
  category NewsCategory
  sentiment Sentiment
  sentiment_confidence float @description("0.0 to 1.0")
  entities Entity[] @description("Up to 5 key named entities")
  key_claims string[] @description("2-4 factual claims made in the article")
  summary string @description("One sentence summary, max 30 words")
  bias_flags string[] @description("Any loaded/biased language detected; empty list if none")
}

class Article {
  headline string
  body string
}

function AnalyzeArticle(headline: string, body: string) -> ArticleAnalysis {
  client GroqClient
  prompt #"
    You are a professional news analyst. Analyze the following article with precision.
    HEADLINE: {{ headline }}
    BODY: {{ body }}
    {{ ctx.output_format }}
  "#
}

client<llm> GroqClient {
  provider openai
  options {
    base_url "https://api.groq.com/openai/v1"
    api_key env.GROQ_API_KEY
    model "llama-3.1-8b-instant"
    temperature 0
  }
}
