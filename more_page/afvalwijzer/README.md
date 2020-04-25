# Afvalwijzer Add-on (more_page)
##### Created by [Jeroen Klompen](https://github.com/klumpke/)


### Installation
- Install [Afvalbeheer](https://github.com/pippyn/Home-Assistant-Sensor-Afvalbeheer) from [HACS](https://hacs.xyz).
- Copy the file `page.yaml`  to your `<config dir>/dwains-theme/addons/more_page/afvalbeheer` directory.
- Configure your `more_page.yaml` file in `<config dir>/dwains-theme/configs` with config below.
- Download the [images ZIP file](https://github.com/Klumpke/dwains-theme-addons/blob/master/more_page/afvalwijzer/.github/afvalwijzer-images.zip) and extract it into your `<config dir>/www/images`  directory.
- Restart Home Assistant.


### Usage
To use this add-on in your Dwains Theme, add the following to your `more_page.yaml` file:

```yaml
# Example more_page.yaml entry
more_page:
    addons:
      - name: Afvalwijzer
        icon: fas:recycle
        path: 'dwains-theme/addons/more_page/afvalwijzer/page.yaml'
        data:
          afval_vandaag: sensor.blink_vandaag
          afval_morgen: sensor.blink_morgen
          afval_rest: sensor.blink_restafval
          afval_gft: sensor.blink_gft
          afval_pmd: sensor.blink_pmd
          afval_papier: sensor.blink_papier
```

### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-theme-addons/blob/master/more_page/afvalwijzer/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-theme-addons/blob/master/more_page/afvalwijzer/.github/screenshots/dark.png "Dark")


### Changelog
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