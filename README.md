# ETL-Challenge

Project Report
For this project we are searching/scraping different file which will provide us with certain information about movies and the platforms they are streamed in, the idea is to transform this information in order to create 3 datasets that will be used to analyze different aspects between the movies and the platforms.
Extract: we used five .CSV files downloaded from Kaggle and the OMDB API’s which are:

	http://www.omdbapi.com/
	AllMoviesDetailsCleaned.csv
	IMDb_movies.csv
	Movies_metadata.csv
	Netflix_titles.csv
	Rotten_tomatoes_top_movies_2019-01-15.csv

Transform: the data was transformed by cleaning it up from NaN values and columns that we did not consider relevant, joining or merging different files to complete the datasets, separate values from columns and aggregating them into new ones. 

We decided to create 4 catalogue tables which are: cat_genres, cat_original_language, cat_production_companies, and movies_details and a single detailed table called movies_db with the tool PostgreSQL.
