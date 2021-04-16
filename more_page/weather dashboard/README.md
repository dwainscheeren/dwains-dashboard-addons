<h1 align="center">Weather Dashboard - Dwains Dashboard Add-on (more_page)</h1> 


<p align="center">
  <a href="https://dwainscheeren.github.io/dwains-lovelace-dashboard/">
    <img src="https://img.shields.io/badge/Dwains%20Dashboard-Default-299ec2.svg" />
  </a>
  <a href="https://github.com/custom-components/hacs">
    <img src="https://img.shields.io/badge/HACS-Default-orange.svg" />
  </a>
  <a href="https://github.com/LRvdLinden/weather_dd_addon">
    <img src="https://img.shields.io/github/v/release/LRvdLinden/weather_dd_addon" />
  </a>
      <a href="https://github.com/LRvdLinden/weather_dd_addon">
    <img src="https://img.shields.io/github/downloads/LRvdLinden/weather_dd_addon/latest/total?color=purple&label=%20release%20Downloads" />
  </a>
    <a href="https://github.com/LRvdLinden/">
    <img src="https://img.shields.io/github/followers/LRvdLinden?style=social" />
  </a>
    </a>
    <a href="https://discord.gg/7yt64uX">
    <img src="https://img.shields.io/discord/688401603811999885" />
  </a>
</p>
<p align="center">Weather Dashboard in Home Assistant Dwains Dashboard.</p>


<p align="center">Created by <a href="https://github.com/LRvdLinden">Léon van der Linden</a>
</p> 


<p align="center">
  <img src="https://image.freepik.com/free-vector/weather-vector-banner_36298-522.jpg" />
</p>



## Prerequisite
---
- Make sure you have installed the lovelace [mini-graph-card](https://github.com/kalkih/mini-graph-card), [fontawesome icons](https://github.com/thomasloven/hass-fontawesome), [Button Card](https://github.com/custom-cards/button-card) and the integration [Neerslag app](https://github.com/aex351/home-assistant-neerslag-app). This can be done manually or directly via hacs

<img width="618" alt="image" src="https://user-images.githubusercontent.com/77990847/114733529-b6ca1a00-9d43-11eb-876a-6f4beda466ec.png">



## Make Home Assistant integration 
---
:warning: Please reboot Home Assistant after config the sensors! :warning:

### Buienradar sensor + Radar map
- Make the integration with [Buienradar](https://www.home-assistant.io/integrations/sensor.buienradar/)
- Choose `latitude` and `longtiude` from the correct [weather station](https://www.google.com/maps/d/embed?mid=1NivHkTGQUOs0dwQTnTMZi8Uatj0&ll=52.92957401169076%2C5.184999999999995&z=7) 
```yaml
     # Example configuration.yaml entry
sensor:
  - platform: buienradar
    name: "Apeldoorn"
    # Force 'Meetstation Apeldoorn' to be used:
    latitude: 50.00
    longitude: 5.00
    monitored_conditions:
      - stationname
      - barometerfc
      - barometerfcname
      - conditioncode
      - condition
      - conditiondetailed
      - conditionexact
      - symbol
      - feeltemperature
      - humidity
      - temperature
      - groundtemperature
      - windspeed
      - windforce
      - winddirection
      - windazimuth
      - pressure
      - visibility
      - windgust
      - precipitation
      - irradiance
      - precipitation_forecast_average
      - precipitation_forecast_total
      - rainlast24hour
      - rainlasthour
      # conditions for forecasted data:
      - symbol_1d
      - symbol_2d
      - symbol_3d
      - symbol_4d
      - symbol_5d
      - temperature_1d
      - temperature_2d
      - temperature_3d
      - temperature_4d
      - temperature_5d
      - mintemp_1d
      - rainchance_1d
      - rainchance_2d
      - sunchance_1d
      - sunchance_2d
      - rain_1d
      - rain_2d
      - minrain_1d
      - maxrain_1d
      - windforce_1d
      - windforce_2d
      - windspeed_1d
      - windspeed_2d
      - winddirection_1d
      - winddirection_2d
      - windazimuth_1d
      - windazimuth_2d
```

```yaml
# Example configuration.yaml entry
camera:
  - platform: buienradar
```

### Ambee Pollen sensoren
- Make the integration with [Ambee Pollen](https://api-dashboard.getambee.com/#/signup)
- Download the file `pollen.yaml` and place it in youre `sensor` directory or copy it in to `configuration.yaml`

<img width="314" alt="image" src="https://user-images.githubusercontent.com/77990847/115065163-16642900-9eee-11eb-9074-1fb4d462b7ea.png">


### KMNI sensor
- Make the integration with [KNMI](https://www.home-assistant.io/integrations/scrape/)
```yaml
sensor: 
  - platform: scrape
    resource: https://www.knmi.nl/nederland-nu/weer/waarschuwingen/gelderland #change provincie
    select: "div.alert__heading"
    name: "knmi weercode"
    scan_interval: 300

  - platform: scrape
    resource: https://www.knmi.nl/nederland-nu/weer/waarschuwingen/gelderland #change provincie
    select: "a.alert__description"
    name: "knmi weer waarschuwing"
    scan_interval: 300    
```

### Moon sensor
- Make the integration with [Moon](https://www.home-assistant.io/integrations/moon/)
```yaml
sensor: 
  - platform: moon   
```

### Season sensor
- Make the integration with [Season](https://www.home-assistant.io/integrations/season/)
```yaml
sensor: 
  - platform: season  
```

### Sun integration
- Make the integration with [Sun](https://www.home-assistant.io/integrations/sun/)
```yaml
# Example configuration.yaml entry
sun:
```

## Installation Add-on
---
- Copy the `weather` folder in to the `dwains-dashboard/addons/more_page` directory.
- Open your `more_page.yaml` file in `dwains-dashboard/configs` and add the following;
```yaml
  - name: Weather
    main_menu: 'true' #Show this addon in the main navigation bar!
    icon: fas:cloud-sun-rain
    path: 'dwains-dashboard/addons/more_page/weather/page.yaml'
```
- Reload the theme configuration via Theme Settings

## Replace the following
---
- If some `sensors` not showing after this manual, please add the correct `sensor` to monitor
- The dashboard will refresh every 10 minutes. When you want to skip this, delete the code between line 66 till 69
```yaml
 - cards:
   Refresh: null
   type: 'custom:auto-reload-card'
   delay_in_minute: 10
```

## Result
---
![image](https://user-images.githubusercontent.com/77990847/114860224-03693000-9dec-11eb-9878-ece886b44689.png)



---
Enjoy my card? Help me out for a couple of :beers: or a :coffee:!

[![coffee](https://www.buymeacoffee.com/assets/img/custom_images/black_img.png)](https://www.buymeacoffee.com/LRvdLinden)
