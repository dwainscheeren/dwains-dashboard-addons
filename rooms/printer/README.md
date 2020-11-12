# Printer Add-on (rooms)
##### Created by [Jeroen Klompen](https://github.com/klumpke/)


### Installation
- Install [bar-card](https://github.com/custom-cards/bar-card) from [HACS](https://hacs.xyz).
- In the HomeAssistant GUI, go to `Configuration` -> `Lovelace Dashboards` -> `Resources` -> `+` and add the following information.
  - URL: /hacsfiles/bar-card/bar-card.js
  - Resource type: JavaScript Module
- Copy the files `page.yaml` and `button.yaml` to your `<config dir>/dwains-dashboard/addons/rooms/<your room>/printer` directory.
- Configure your `rooms.yaml` file in `<config dir>/dwains-dashboard/configs` with config below.
- Restart Home Assistant.


### Usage
To use this add-on in your Dwains Theme, add the following to your `rooms.yaml` file:
```yaml
# Example rooms.yaml entry
  - name: Office
    addons:
      - name: Printer
        icon: mdi:printer
        path: 'dwains-dashboard/addons/rooms/office/printer/page.yaml'
        button_path: 'dwains-dashboard/addons/rooms/office/printer/button.yaml'
        data:
          printer:
            - entity: sensor.hp_m281fdw_status
              name: State
            - entity: sensor.hp_m281fdw_printer
              name: Total printed pages
            - entity: sensor.hp_m281fdw_scanner
              name: Total scanned pages
          cardridges:
            - entity: sensor.hp_m281fdw_toner_black
              name: Zwart
              color: Black
            - entity: sensor.hp_m281fdw_toner_cyan
              name: Cyaan
              color: MediumTurquoise
            - entity: sensor.hp_m281fdw_toner_magenta
              name: Magenta
              color: MediumOrchid
            - entity: sensor.hp_m281fdw_toner_yellow
              name: Geel
              color: Gold
```

### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/rooms/printer/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/rooms/printer/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.0.4
- **BREAKING CHANGE**: ***The addon is now more dynamic than ever!*** You can add all your printer entites and cardridges via the `rooms.yaml` file. *Make sure you overwrite both the button.yaml and the page.yaml file when you update to the newest version of the addon*
#### 1.0.3
- Add border-radius to bar-cards + CSS style cleanup
#### 1.0.2
- Fix for icon position
#### 1.0.1
- Changed resource type to `module` (to make it compatible with newest bar-card)
- Renamed `title` to `name` in positions config (to make it compatible with newest bar-card)
- Renamed `bar-card-title` to `bar-card-name` in CSS element (to make it compatible with newest bar-card)
#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/klumpke" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>