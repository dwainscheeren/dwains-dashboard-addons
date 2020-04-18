# Power Usage Add-on (more_page)
##### Created by [Nick Papenborg](https://github.com/papy329700)

### Description
This Add-on is used for displaying Power, Gas and Water usage. I use the Toon integration in Home Assistant but you could use your own integration.


### Installation
- Copy the file `power_usage.yaml`  to your `<config dir>/dwains-theme/addons/more_page/power_usage` directory.
- Configure your `more_page.yaml` file in `<config dir>/dwains-theme/configs` with config below.


### Usage
To use this add-on in your Dwains Theme, add the following to your `more_page.yaml` file:

```yaml
# Example more_page.yaml entry
more_page:
    addons:
      - name: Power Usage
        icon: fas:tachometer-alt
        path: 'dwains-theme/addons/more_page/power_usage/power_usage.yaml'
```

In your power_usage.yaml: 
- Change the sensors
- If you own a water sensor, uncomment the code at the bottem by removing the #


### Screenshots
**Desktop:**<br>
![desktop](https://github.com/papy329700/dwains_theme_addons/blob/master/more_page/power_usage/.github/screenshots/desktop.png "desktop")

**Mobile:**<br>
![mobile](https://github.com/papy329700/dwains_theme_addons/blob/master/more_page/power_usage/.github/screenshots/mobile.png "mobile")
