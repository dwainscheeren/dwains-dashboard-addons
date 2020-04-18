# Auto Informatie Add-on (more_page)
##### Created by [Nick Papenborg](https://github.com/papy329700)

### Description
This Add-on is used for displaying Car information provided by the RDW custom component in the Netherlands.


### Installation
- Install [RDW](https://github.com/eelcohn/home-assistant-rdw).
- Copy the file `auto_informatie.yaml`  to your `<config dir>/dwains-theme/addons/more_page/auto_informatie` directory.
- Configure your `more_page.yaml` file in `<config dir>/dwains-theme/configs` with config below.
- Download the [image file](https://github.com/papy329700/dwains-theme-addons/tree/master/more_page/auto_informatie/.github/no_car.png) and extract it into your `<config dir>/www/images`  directory.
- Store a picture from your car(s) in your `<config dir>/www/images`  directory.
- Create a input_text.first_car_name, if you want to add more cars, create input_text.second_car_name 
- Restart Home Assistant.


### Usage
To use this add-on in your Dwains Theme, add the following to your `more_page.yaml` file:

```yaml
# Example more_page.yaml entry
more_page:
    addons:
      - name: Auto Informatie
        icon: fas:car-alt
        path: 'dwains-theme/addons/more_page/auto_informatie/auto_informatie.yaml'
```

In your auto_informatie.yaml: 
- Change the sensors and binary_sensors
- Change the image url if you stared a picture from your car
- Set the correct collor rgb(255,255,255,08) for white, rgb(0,0,0,08) for black


### Screenshots
**Desktop:**<br>
![desktop](https://github.com/papy329700/dwains-theme-addons/blob/master/more_page/auto_informatie/.github/screenshots/desktop.png "desktop")

**Mobile:**<br>
![mobile](https://github.com/papy329700/dwains-theme-addons/blob/master/more_page/auto_informatie/.github/screenshots/mobile.png "mobile")
