# <span style="font-size: larger;">**RapidAPI NBA Integration**</span> </br>

## Overview </br>

This Rails application demonstrates how to integrate the RapidAPI service to fetch NBA players' data. The application includes a controller (RapidapiController) with an action (fetch_players) that sends a request to the "https://free-nba.p.rapidapi.com/players" endpoint. </br>

## Getting Started </br>

- **Clone the Repository:**
   ```bash
   git clone <repository-url>

- **Install Dependencies:**
   ```bash
   cd <project-directory>
   bundle install

- **Configure RapidAPI Key:**
   - Obtain a RapidAPI key from RapidAPI.
   - Replace the placeholder key in the `RapidapiController` with your actual RapidAPI key.

- **Run the Rails Server:**
   ```bash
   rails server

## Usage </br>
The application includes a single endpoint: </br>
  /rapidapi/fetch_players: Fetches NBA players' data from the RapidAPI endpoint "https://free-nba.p.rapidapi.com/players" using the provided API key.</br>
  
## Error Handling </br>
The RapidapiController includes basic error handling for HTTP requests. If the request to the RapidAPI endpoint fails, the controller renders an error response with relevant information.</br>

## Notes</br>
Make sure to handle your RapidAPI key securely and avoid sharing it in public repositories.</br>

## Contributing</br>
Feel free to contribute to the project by opening issues or submitting pull requests. Contributions are welcome!</br>

## License</br>
This project is licensed under the MIT License.</br>


