# Printer Add-on (rooms)
##### Created by [Jeroen Klompen](https://github.com/klumpke/)


### Installation
- Install [bar-card](https://github.com/custom-cards/bar-card) from [HACS](https://hacs.xyz).
- Configure your `custom_resources.yaml` file in `<config dir>/dwains-theme/resources` with the config below.
- Copy the files `page.yaml` and `button.yaml` to your `<config dir>/dwains-theme/addons/rooms/<your room>/printer` directory.
- Configure your `rooms.yaml` file in `<config dir>/dwains-theme/configs` with config below.
- Restart Home Assistant.


### Usage
To use this add-on in your Dwains Theme, add the following to your `custom_resources.yaml` and `rooms.yaml` file:
```yaml
# Example custom_resources.yaml entry
- url: /hacsfiles/bar-card/bar-card.js
  type: module
```

```yaml
# Example rooms.yaml entry
  - name: Office
    addons:
      - name: Printer
        icon: fas:print
        path: 'dwains-theme/addons/rooms/office/printer/page.yaml'
        button_path: 'dwains-theme/addons/rooms/office/printer/button.yaml'
        data:
          entity: sensor.hp_printer_status
```

### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-theme-addons/blob/master/rooms/printer/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-theme-addons/blob/master/rooms/printer/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.0.1
- Changed resource type to `module` (to make it compatible with newest bar-card)
- Renamed `title` to `name` in positions config (to make it compatible with newest bar-card)
- Renamed `bar-card-title` to `bar-card-name` in CSS element (to make it compatible with newest bar-card)
#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/klumpke" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>