## Attic Ventilation 
## Add-on (rooms) for dwains-theme
##### Created by Ruben Dijk
---

### Installation
- Configure your fan entity 
- Copy the files `page.yaml` and `button.yaml` to your `<config dir>/dwains-theme/addons/rooms/<your room>` directory.
- Configure your `rooms.yaml` file in `<config dir>/dwains-theme/configs` with config below.
- Restart Home Assistant.


### Usage
To use this add-on in your Dwains Theme, add the following to your `rooms.yaml` file:

````yaml
# Example rooms.yaml entry
  - name: bathroom
    addons:
      - name: Central Ventilation
        icon: 'mdi:fan'
        path: 'dwains-theme/addons/rooms/central-ventilation/page.yaml'
        button_path: 'dwains-theme/addons/rooms/central-ventilation/button.yaml'
        data:
          entity: fan.attic_ventilation
````

### ESPHome
I use a sonoff 4channel to controll my ventilation unit.
Here my esphome.yaml [ventilation.yaml](https://github.com/RubenDijk/dwains-theme-addons/blob/master/rooms/central-ventilation/ventilation.yaml)

---
### configuration.yaml
Copy the content of [attic_ventilation.yaml](https://github.com/RubenDijk/dwains-theme-addons/blob/master/rooms/central-ventilation/attic_ventilation.yaml) to your configuration.yaml

### Screenshots
**Manual mode on:**<br>
![central_ventilation_manual_mode_on](https://github.com/RubenDijk/dwains-theme-addons/blob/master/rooms/central-ventilation/central_ventilation_manual_mode_on.png)

**Manual mode off:**<br>
![central_ventilation_manual_mode_off](https://github.com/RubenDijk/dwains-theme-addons/blob/master/rooms/central-ventilation/central_ventilation_manual_mode_off.png)

#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/RubenDijk" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>
