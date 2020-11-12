# Afvalwijzer Add-on (more_page)
##### Created by [Jeroen Klompen](https://github.com/klumpke/)


### Installation
- Install [auto-entities](https://github.com/thomasloven/lovelace-auto-entities) and [Afvalbeheer](https://github.com/pippyn/Home-Assistant-Sensor-Afvalbeheer) from [HACS](https://hacs.xyz).
- In the HomeAssistant GUI, go to `Configuration` -> `Lovelace Dashboards` -> `Resources` -> `+` and add the following information.
  - URL: /hacsfiles/lovelace-auto-entities/auto-entities.js
  - Resource type: JavaScript Module
- Copy the file `page.yaml`  to your `<config dir>/dwains-dashboard/addons/more_page/afvalwijzer` directory.
- Configure your `more_page.yaml` file in `<config dir>/dwains-dashboard/configs` with config below.
- Download the [images ZIP file](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/more_page/afvalwijzer/.github/afvalwijzer-images.zip) and extract it into your `<config dir>/www/images`  directory.
- Restart Home Assistant.


### Usage
To use this add-on in your Dwains Dashboard, add the following to your `more_page.yaml` file:

```yaml
# Example more_page.yaml entry
more_page:
    addons:
      - name: Afvalwijzer
        icon: fas:recycle
        path: 'dwains-dashboard/addons/more_page/afvalwijzer/page.yaml'
        data:
          wastecollector: blink
          sort_attribute: Sort-date
```

### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/more_page/afvalwijzer/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/more_page/afvalwijzer/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.1.1
- Adjusted the behavior for state_image so that it also provides an image even when it does not recognize the status
- Sort wastecollector by date
- Made compatible for multiple wastecollectors
- Added KCA icon to images ZIP file
#### 1.1.0
- **BREAKING CHANGE**: It's now possible to define your sensors in the `more_page.yaml` file so you don't have to edit the `page.yaml` file
- Tablet view
- Added pdb in the state_image to support Afvalinfo
#### 1.0.1
- Added unknown image state
#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/klumpke" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>