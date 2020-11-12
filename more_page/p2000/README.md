# P2000 Add-on (more_page)
##### Created by Jeroen Klompen


### Installation
- Install [P2000 Sensor](https://github.com/cyberjunky/home-assistant-p2000) from [HACS](https://hacs.xyz).
- Copy the file `page.yaml`  to your `<config dir>/dwains-dashboard/addons/more_page/p2000` directory.
- Configure your `more_page.yaml` file in `<config dir>/dwains-dashboard/configs` with config below.
- Reload theme configuration at Theme settings.


### Usage
To use this add-on in your Dwains Dashboard, add the following to your `more_page.yaml` file:

```yaml
# Example more_page.yaml entry
more_page:
    addons:
      - name: P2000
        icon: fas:ambulance
        path: 'dwains-dashboard/addons/more_page/p2000/page.yaml'
```

### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/more_page/p2000/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/more_page/p2000/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/klumpke" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>