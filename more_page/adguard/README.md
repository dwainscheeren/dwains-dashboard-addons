# AdGuard Add-on (more_page)
##### Created by Jeroen Klompen

### Pre-requirements
- You must have the AdGuard integration installed

### Installation
- Install [mini-graph-card](https://github.com/kalkih/mini-graph-card) from [HACS](https://hacs.xyz).
- In the HomeAssistant GUI, go to `Configuration` -> `Lovelace Dashboards` -> `Resources` -> `+` and add the following information.
  - URL: /hacsfiles/mini-graph-card/mini-graph-card-bundle.js
  - Resource type: JavaScript Module
- Copy the file `page.yaml`  to your `<config dir>/dwains-dashboard/addons/more_page/adguard` directory.
- Configure your `more_page.yaml` file in `<config dir>/dwains-dashboard/configs` with config below.
- Reload theme configuration at Theme settings.


### Usage
To use this add-on in your Dwains Dashboard, add the following to your `more_page.yaml` file:

```yaml
# Example more_page.yaml entry
more_page:
    addons:
      - name: AdGuard
        icon: fas:ad
        path: 'dwains-dashboard/addons/more_page/adguard/page.yaml'
```

### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/more_page/adguard/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/more_page/adguard/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.0.2
- Add line_color to graphs (Thanks @mase)
#### 1.0.1
- Fix entity header toggle switch
#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/klumpke" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>