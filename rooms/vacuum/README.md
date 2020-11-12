# Vacuum Add-on (rooms)
##### Created by [Jeroen Klompen](https://github.com/klumpke/)


### Installation
- Copy the files `page.yaml` and `button.yaml` to your `<config dir>/dwains-dashboard/addons/rooms/<your room>/vacuum` directory.
- Configure your `rooms.yaml` file in `<config dir>/dwains-dashboard/configs` with config below.
- Create an input_boolean with the name `dummy1`. *You can find an example of the input_boolean [here](https://github.com/dwainscheeren/dwains-dashboard-addons/blob/master/rooms/vacuum/.github/examples/input_boolean.yaml).*
- Reload theme configuration at Theme settings.

*NOTE: You can find an example of the used vacuum sensors [here](https://github.com/dwainscheeren/dwains-dashboard-addons/blob/master/rooms/vacuum/.github/examples/sensors.yaml).*<br />
<b>*NOTE: Version 1.1.0 and higher are only compatible with Dwains Dashboard 2.x and higher!*</b>


### Usage
To use this add-on in your Dwains Dashboard, add the following to your `rooms.yaml` file:
```yaml
# Example rooms.yaml entry
  - name: Living Room
    addons:
      - name: Vacuum
        icon: mdi:robot-vacuum
        path: 'dwains-dashboard/addons/rooms/livingroom/vacuum/page.yaml'
        button_path: 'dwains-dashboard/addons/rooms/livingroom/vacuum/button.yaml'
        data:
          vacuum: vacuum.rockrobo
          platform: valetudo
          map: camera.rockrobo_map
          rooms:
            - room: Living Room
              zone: living_room
              icon: fal:couch
            - room: Kitchen
              zone: kitchen
              icon: fal:refrigerator
            - room: Dining Room
              zone: dining_room
              icon: fal:coffee
            - room: Halway
              zone: halway
              icon: fal:key-skeleton
            - room: Garage
              zone: garage
              icon: fal:warehouse
          controls:
            - name: Start
              service: vacuum.start
              icon: mdi:play
            - name: Pause
              service: vacuum.pause
              icon: mdi:pause
            - name: Return
              service: vacuum.return_to_base
              icon: mdi:ev-station
            - name: Locate
              service: vacuum.locate
              icon: mdi:map-marker-circle
          sensors:
            - name: Main brush
              sensor: sensor.vacuum_main_brush_left
              icon: mdi:broom
            - name: Side brush
              sensor: sensor.vacuum_side_brush_left
              icon: mdi:broom
            - name: Filter
              sensor: sensor.vacuum_filter_left
              icon: mdi:broom
            - name: Sensor
              sensor: sensor.vacuum_sensor_dirty_left
              icon: mdi:air-filter
```

### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/rooms/vacuum/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/rooms/vacuum/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.1.0
- Made addon compatible with Dwains Dashboard 2.0 and rewritten the documentation
#### 1.0.4
- Improved zone support for the original and the valetudo software
#### 1.0.3
- Add control buttons (By @thundergreen)
#### 1.0.2
- Add native HA translations to the button
#### 1.0.1
- You can now define your map, rooms and sensors in the `rooms.yaml` file
#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/klumpke" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>
