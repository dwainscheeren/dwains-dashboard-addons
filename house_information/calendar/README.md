# Calendar Add-on (house_information)
##### Created by [Jeroen Klompen](https://github.com/klumpke/)


### Installation
- Install [Atomic Calendar Revive](https://github.com/marksie1988/atomic-calendar-revive)  from [HACS](https://hacs.xyz).
- Configure your `custom_resources.yaml` file in `<config dir>/dwains-theme/resources` with the config below.
- Copy the file `page.yaml` to your `<config dir>/dwains-theme/addons/house_information/calendar` directory.
- Configure your `house_information.yaml` file in `<config dir>/dwains-theme/configs` with config below.
- Reload theme configuration at Theme settings.


### Usage
To use this add-on in your Dwains Theme, add the following to your `custom_resources.yaml` and `rooms.yaml` file:
```yaml
# Example custom_resources.yaml entry
- url: /hacsfiles/atomic-calendar-revive/atomic-calendar-revive.js
  type: module
```

```yaml
# Example house_information.yaml entry
  addons:
    - name: Calendar
      icon: mdi:calendar
      path: 'dwains-theme/addons/house_information/calendar/page.yaml'
      data:
        calendars:
          - calendar.birthdays
          - calendar.trash_bin
```

### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-theme-addons/blob/master/house_information/calendar/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-theme-addons/blob/master/house_information/calendar/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.0.1
- Some changes regarding the addon data and the usage instructions (By @dwainscheeren).

#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/klumpke" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>