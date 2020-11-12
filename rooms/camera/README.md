# Camera Add-on (rooms)
##### Created by [Jeroen Klompen](https://github.com/klumpke/)


### Installation
- Copy the files `page.yaml` and `button.yaml` to your `<config dir>/dwains-dashboard/addons/rooms/<your room>/camera` directory.
- Configure your `rooms.yaml` file in `<config dir>/dwains-dashboard/configs` with config below.
- Reload theme configuration at Theme settings.


### Usage
To use this add-on in your Dwains Dashboard, add the following to your `rooms.yaml` file:
```yaml
# Example rooms.yaml entry
  - name: Garage
    addons:
      - name: Camera
        path: 'dwains-dashboard/addons/rooms/garage/camera/page.yaml'
        button_path: 'dwains-dashboard/addons/rooms/garage/camera/button.yaml'
        data:
          entity: camera.carport
```

### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/rooms/camera/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/rooms/camera/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/klumpke" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>