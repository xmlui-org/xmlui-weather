# XMLUI Weather Dashboard

A simple weather dashboard built with XMLUI that displays current weather conditions for any city.

## Features

- Search weather by city name
- Current temperature (Fahrenheit)
- Weather conditions and description
- High/Low temperatures
- Humidity, wind speed, and pressure
- Clean, responsive interface
- Real-time data from wttr.in (no API key required!)

## Running the app

**Option 1: Using the start script (recommended)**
- Download and unzip this folder
- Run `start.sh` (Mac/Linux) or `start.bat` (Windows)
- The app will open in your browser at http://localhost:8000

**Option 2: Manual start**
```bash
# Using Python
python3 -m http.server 8000

# Or using Node
npx http-server -o
```

Then open http://localhost:8000 in your browser.

## No API Key Required! 🎉

This app uses [wttr.in](https://wttr.in), a free weather service that requires no authentication or API key. Just run the app and start searching for cities!

**Alternative:** If you prefer OpenWeather API:
1. Sign up at [openweathermap.org](https://openweathermap.org/api)
2. Get your free API key
3. Update the DataSource URL in Main.xmlui:
   ```xml
   url="https://api.openweathermap.org/data/2.5/weather?q={city}&appid=YOUR_KEY&units=imperial"
   ```
4. Update the data bindings to match OpenWeather's response format

## How It Works

The app demonstrates several XMLUI features:

- **DataSource** - Fetches weather data from the OpenWeather API
- **Reactive Variables** - `var.city` tracks the search input
- **Conditional Rendering** - Shows loading state, success state, or errors
- **Form Handling** - Submit on button click or Enter key
- **No Complex JavaScript** - No spread operators, map, or filter needed!

## Code Highlights

The entire app is about 130 lines of mostly declarative XMLUI markup. Key features:

- Single DataSource component handles API calls
- Simple variable binding with `{city}` and `{weatherData.data}`
- Clean conditional rendering with `when` attributes
- No state management complexity - just reactive variables

## Example Cities to Try

- New York
- London
- Tokyo
- Paris
- Sydney
- Santa Rosa (default)

## Architecture

```
xmlui-weather/
├── Main.xmlui        # Main application
├── index.html        # HTML wrapper with XMLUI script
├── start.sh          # Start script for Mac/Linux
├── start.bat         # Start script for Windows
└── README.md         # This file
```

## Browser Requirements

- Modern browser with JavaScript enabled
- Internet connection (to fetch weather data)
- No build step required!

## License

This is a demo application for learning XMLUI. Feel free to use and modify as needed.
