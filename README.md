# Twitter Search Application

This is a search application developed to efficiently retrieve and analyze Twitter data, leveraging MongoDB and PostgreSQL for data storage and retrieval. The project incorporates indexing, partitioning, caching, and a unique ranking strategy to enhance search functionality and provide users with more relevant and meaningful results.

## Features
- Search tweets based on users, text, hashtags, and time range
- View top users and top hashtags based on specific criteria
- Ranking of search results based on a unique engagement-focused algorithm
- Efficient indexing and partitioning techniques for improved query performance
- Caching mechanism to store frequently accessed data and enhance application responsiveness

## Technologies Used
- Python
- MongoDB
- PostgreSQL
- SQL

## Ranking Strategy

The application implements a unique ranking strategy that prioritizes engagement over popularity. This strategy calculates a relevance index based on a weighting scheme of reply count, quote count, favorite count, and retweet count. The index, combined with the number of followers, likes, and retweets, determines the ranking of search results. By prioritizing engagement metrics, the application ensures that the most relevant and engaging tweets are displayed prominently, delivering a more meaningful search experience.

## Caching Strategy

The search application incorporates a caching strategy to improve performance and reduce database queries. Frequently accessed data, including engaging tweets, popular users, and hashtags, are stored in the cache. The cache employs a Least Recently Used (LRU) algorithm with a cache size of 1000 items to maintain the most relevant data. To ensure freshness, a Time to Live (TTL) of 3600 seconds is set, after which the cache is refreshed from the source. Regular checkpoints every 2 minutes update the cache with the latest data based on the query. This caching strategy significantly enhances search responsiveness, providing users with fast and up-to-date search results.
