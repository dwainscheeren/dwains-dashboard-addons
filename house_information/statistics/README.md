# Statistics Add-on (house_information)
##### Created by [Jeroen Klompen](https://github.com/klumpke/)


### Installation
- Install [bar-card](https://github.com/custom-cards/bar-card) from [HACS](https://hacs.xyz).
- In the HomeAssistant GUI, go to `Configuration` -> `Lovelace Dashboards` -> `Resources` -> `+` and add the following information.
  - URL: /hacsfiles/bar-card/bar-card.js
  - Resource type: JavaScript Module
- Copy the file `page.yaml` to your `<config dir>/dwains-dashboard/addons/house_information/statistics` directory.
- Configure your `house_information.yaml` file in `<config dir>/dwains-dashboard/configs` with config below.
- Reload theme configuration at Theme settings.

<b>*NOTE: Version 1.1.0 and higher are only compatible with Dwains Dashboard 2.x and higher!*</b>


### Usage
To use this add-on in your Dwains Dashboard, add the following to your `house_information.yaml` file:
```yaml
# Example house_information.yaml entry
  addons:
    - name: Statistics
      icon: mdi:desktop-tower
      path: 'dwains-dashboard/addons/house_information/statistics/page.yaml'
      data:
        stats:
          - entity: sensor.processor_use
            name: CPU
            icon: mdi:chip
          - entity: sensor.memory_use_percent
            name: RAM
            icon: mdi:memory
          - entity: sensor.cpu_temp
            name: Temp
            icon: mdi:thermometer
          - entity: sensor.disk_use_percent
            name: Disk
            icon: mdi:harddisk
```


### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/house_information/statistics/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/house_information/statistics/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.1.0
- Made addon compatible with Dwains Dashboard 2.0 and rewritten the documentation
#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/klumpke" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>