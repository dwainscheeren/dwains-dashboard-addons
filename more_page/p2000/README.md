# P2000 Add-on (more_page)


### Installation
- Install [P2000 Sensor](https://github.com/cyberjunky/home-assistant-p2000) from [HACS](https://hacs.xyz).
- Copy the file `page.yaml`  to your `<config dir>/dwains-theme/addons/more_page/p2000` directory.
- Configure your `more_page.yaml` file in `<config dir>/dwains-theme/configs` with config below.
- Reload theme configuration at Theme settings.


### Usage
To use this add-on in your Dwains Theme, add the following to your `more_page.yaml` file:

```yaml
# Example more_page.yaml entry
more_page:
    addons:
      - name: P2000
        icon: fas:ambulance
        path: 'dwains-theme/addons/more_page/p2000/page.yaml'
```

### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-theme-addons/blob/master/more_page/p2000/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-theme-addons/blob/master/more_page/p2000/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.0.0
- First release