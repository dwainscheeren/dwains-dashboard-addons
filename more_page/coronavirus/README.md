# Coronavirus Add-on (more_page)
##### Created by Jeroen Klompen


### Installation
- Install [mini-graph-card](https://github.com/kalkih/mini-graph-card) from [HACS](https://hacs.xyz).
- In the HomeAssistant GUI, go to `Configuration` -> `Lovelace Dashboards` -> `Resources` -> `+` and add the following information.
  - URL: /hacsfiles/mini-graph-card/mini-graph-card-bundle.js
  - Resource type: JavaScript Module
- In the HomeAssistant GUI, configure the [Coronavirus](https://www.home-assistant.io/integrations/coronavirus/) integration.
- Copy the file `page.yaml` to your `<config dir>/dwains-dashboard/addons/more_page/coronavirus` directory.
- Configure your `more_page.yaml` file in `<config dir>/dwains-dashboard/configs` with config below.
- Reload theme configuration at Theme settings.


### Usage
To use this add-on in your Dwains Dashboard, add the following to your `more_page.yaml` file:

```yaml
# Example more_page.yaml entry
more_page:
    addons:
      - name: Coronavirus
        icon: fas:disease
        path: 'dwains-dashboard/addons/more_page/coronavirus/page.yaml'
```


### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/more_page/coronavirus/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/more_page/coronavirus/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.0.1
- Add line_color to graphs (Thanks @mase)
#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/klumpke" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>