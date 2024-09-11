# NYC Taxi Data Engineering Pipeline

This project focuses on building a data engineering pipeline that processes and analyzes New York City taxi data. The goal of this project is to collect data from NYC's public datasets, build a scalable data pipeline, and derive insights from the data regarding NYC taxi rides.

## Project Overview

The NYC Taxi Data Engineering Pipeline performs the following tasks:
1. **Data Collection**: Fetches taxi data from the NYC Taxi and Limousine Commission (TLC) datasets.
2. **Data Storage**: Loads the raw data into a database, leveraging tools such as PostgreSQL.
3. **Data Transformation**: Cleans, aggregates, and processes the raw data.
4. **Data Analysis**: Performs analytical queries to derive useful facts such as:
   - Average trip distances
   - Distribution of fares
   - Most frequent pickup/dropoff locations
5. **Visualization**: Generates visual insights using tools like Matplotlib, Plotly, or Tableau (if applicable).

## Technologies Used

- **Python**: Primary programming language for data loading, processing, and analysis.
- **PostgreSQL**: Database to store and manage the collected data.
- **PgAdmin**: A web-based administration tool for managing PostgreSQL databases.
- **Metabase**: An open-source tool used for creating interactive dashboards and visualizations.
- **Docker**: Containerization tool used to orchestrate the environment and services.
- **Pandas**: Used for lightweight data transformations and analysis.
- **Parquet**: Efficient file format for storing large amounts of data.
- **NYC Open Data API**: Source of the NYC taxi data.

## Project Structure

The repository contains the following components:

- **data-loading-parquet.ipynb**: A Jupyter notebook that demonstrates how to load NYC taxi data into Parquet format and perform basic analysis.
- **docker-compose.yaml**: Docker setup for orchestrating the environment, including services like PostgreSQL, PGadmin and Metabase.


## How to Run the Project

### Prerequisites

Make sure you have the following installed on your machine:
- Docker
- Docker Compose
- Python 3.x
- Jupyter Notebook (optional for interactive data exploration)

### Steps

1. Clone the repository:

   ```bash
   git clone https://github.com/Joshua-Osar/new-york-transportation-data-TAXI.git
   ```

2. Start the Docker environment:

   ```bash
   docker-compose up
   ```
  This will set up the following services:
   - **PostgreSQL**: A relational database for storing NYC taxi data.
   - **PgAdmin**: Access the PostgreSQL database using the web-based tool available at `http://localhost:5431`. You can log in with:
   - **Metabase**: Access Metabase at `http://localhost:3000` for data visualization. It connects to the PostgreSQL database where the taxi data is stored.

3. Open the `data-loading-parquet.ipynb` notebook in Jupyter to follow along with the data ingestion and transformation steps.

4. To analyze the data, run the Python scripts in the `src/` folder, which contain the pipeline for processing the taxi data and generating insights.

## Analysis Results
![Screenshot (33)](https://github.com/user-attachments/assets/ee55c0e8-6dbe-477b-ab00-66842947966d)

Once the pipeline is set up and the data is processed, the project reveals various insights about NYC taxi rides, such as:
- Total tip received
- Total fare amount
- Average fare amount
- Peak hours for taxi usage

## Future Improvements

- Integration with cloud data platforms (e.g., AWS S3, Google BigQuery) for scalability.
- Real-time data processing using Apache Kafka.

## Contributing

Feel free to fork the repository, create pull requests, or open issues to suggest improvements or report bugs.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Let me know if you'd like any further adjustments or additional sections!
