# Basis Set AI Fellowship - BAML Deep Dive

## Overview

The project leverages BAML to extract structured data from news articles using Large Language Models (specifically Llama 3.1 via Groq). The analysis includes:

- **Sentiment Analysis**: Detecting POSITIVE, NEGATIVE, or NEUTRAL sentiment.
- **Categorization**: Classifying articles into categories like World, Sports, Business, etc.
- **Entity Extraction**: Identifying key people, organizations, locations, products, and events.
- **Claim Extraction**: Pulling factual claims from the text.
- **Bias Detection**: Identifying loaded or biased language.
- **Headline Rewriting**: Creating cleaner, more neutral versions of headlines.

## Project Structure

- `baml_src/`: Contains the BAML source files (`news.baml`) defining the schema and prompts.
- `baml_client/`: Auto-generated BAML client for Python.
- `bsv_baml_deepdive.ipynb`: A Jupyter notebook demonstrating the analysis pipeline and deep dive into results.
- `*.png`: Visualization results (sentiment analysis, entity bias, code complexity, etc.).

## Setup

1. **Install BAML**: Follow the instructions at [boundaryml.com](https://boundaryml.com).
2. **Environment Variables**: Set your `GROQ_API_KEY`.
3. **Run the Notebook**: Open `bsv_baml_deepdive.ipynb` to see the analysis in action.

## Visualizations

The project includes several analysis visualizations:
- `sentiment_analysis.png`
- `entity_bias_analysis.png`
- `dashboard.png`
- `confusion_matrices.png`
