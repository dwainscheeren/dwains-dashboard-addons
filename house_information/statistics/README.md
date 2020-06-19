# Statistics Add-on (house_information)
##### Created by [Jeroen Klompen](https://github.com/klumpke/)


### Installation
- Install [bar-card](https://github.com/custom-cards/bar-card) from [HACS](https://hacs.xyz).
- Configure your `custom_resources.yaml` file in `<config dir>/dwains-theme/resources` with the config below.
- Copy the file `page.yaml` to your `<config dir>/dwains-theme/addons/house_information/statistics` directory.
- Configure your `house_information.yaml` file in `<config dir>/dwains-theme/configs` with config below.
- Reload theme configuration at Theme settings.


### Usage
To use this add-on in your Dwains Theme, add the following to your `custom_resources.yaml` and `house_information.yaml` file:
```yaml
# Example custom_resources.yaml entry
- url: /hacsfiles/bar-card/bar-card.js
  type: module
```

```yaml
# Example house_information.yaml entry
  addons:
    - name: Statistics
      icon: mdi:desktop-tower
      path: 'dwains-theme/addons/house_information/statistics/page.yaml'
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
![light](https://github.com/Klumpke/dwains-theme-addons/blob/master/house_information/statistics/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-theme-addons/blob/master/house_information/statistics/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/klumpke" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>