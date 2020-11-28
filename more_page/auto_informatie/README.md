# Auto Informatie Add-on (more_page)
##### Created by [Nick Papenborg](https://github.com/papy329700)

### Description
This Add-on is used for displaying Car information provided by the RDW custom component in the Netherlands.

### Version 1.1.0
Breaking Change. You can now configure this add-on in the more_page.yaml If you had allready version 1.0.0, you have to remove the file and reconfigure. The input_text names are also renamed!
This add-on uses Font Awsome Icons. To use these icons, you have to add the [Font Awesome Integration](https://github.com/thomasloven/hass-fontawesome).

### Installation
- Install [RDW](https://github.com/eelcohn/home-assistant-rdw).
- Copy the file `page.yaml`  to your `<config dir>/dwains-theme/addons/more_page/auto_informatie` directory.
- Configure your `more_page.yaml` file in `<config dir>/dwains-theme/configs` with config below.
- Download the [image file](https://github.com/papy329700/dwains-theme-addons/tree/master/more_page/auto_informatie/.github/no_car.png) and extract it into your `<config dir>/www/images`  directory.
- Store a picture from your car(s) in your `<config dir>/www/images`  directory.
- Create a input_text.car_1_name, if you want to add more cars, create input_text.car_2_name etc
- Restart Home Assistant.


### Usage
To use this add-on in your Dwains Theme, add the following to your `more_page.yaml` file:


```yaml
# Example more_page.yaml entry
more_page:
    addons:
      - name: Auto Informatie
        icon: fas:car-alt
        path: 'dwains-dashboard/addons/more_page/auto_informatie/page.yaml'
        data:
          car_1_entity: opel_corsa_c
          car_1_image: '/local/images/no_car.png'
          car_1_font_collor: 0,0,0
          car_2_entity: opel_kadett_c
          car_2_image: '/local/images/kadett.jpg'
          car_2_font_collor: 255,255,255
          car_3_entity: volkswagen_passat
          car_3_image: '/local/images/no_car.png'
          car_3_font_collor: 0,0,0
```

In the example you can add as many cars as you would like. In the example above are 3 cars, for a 4th car you can just add the 3 lines. If you have less cars, you can delete some.
entity: this has to be you exact car name as used in the sensors from the RDW integration!
image: path to your car image or to the no_car image
font_collor: Collor of the car name displayed in the picture. For example: 255,255,255 is white, 0,0,0 is black


### Screenshots
**Desktop:**<br>
![desktop](https://github.com/papy329700/dwains-theme-addons/blob/master/more_page/auto_informatie/.github/screenshots/desktop.png "desktop")

**Mobile:**<br>
![mobile](https://github.com/papy329700/dwains-theme-addons/blob/master/more_page/auto_informatie/.github/screenshots/mobile.png "mobile")
