# Printer Add-on (rooms)


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
  type: js
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
#### 1.0.0
- First release