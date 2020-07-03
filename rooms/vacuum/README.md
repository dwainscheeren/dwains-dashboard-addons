# Vacuum Add-on (rooms)
##### Created by [Jeroen Klompen](https://github.com/klumpke/)


### Installation
- Copy the files `page.yaml` and `button.yaml` to your `<config dir>/dwains-theme/addons/rooms/<your room>/vacuum` directory.
- Configure your `rooms.yaml` file in `<config dir>/dwains-theme/configs` with config below.
- Reload theme configuration at Theme settings.

*NOTE: You can find an example of the used vacuum sensors [here](https://github.com/dwainscheeren/dwains-theme-addons/blob/master/rooms/vacuum/.github/examples/sensors.yaml).*


### Usage
To use this add-on in your Dwains Theme, add the following to your `rooms.yaml` file:
```yaml
# Example rooms.yaml entry
  - name: Living Room
    addons:
      - name: Vacuum
        icon: mdi:robot-vacuum
        path: 'dwains-theme/addons/rooms/livingroom/vacuum/page.yaml'
        button_path: 'dwains-theme/addons/rooms/livingroom/vacuum/button.yaml'
        data:
          vacuum: vacuum.rockrobo
          map: camera.rockrobo_map
          rooms:
            - room: Living Room
              icon: mdi:television-classic
            - room: Kitchen
              icon: mdi:stove
            - room: Dining Room
              icon: mdi:silverware-fork-knife
            - room: Halway
              icon: mdi:door
            - room: Bathroom Downstairs
              icon: mdi:shower-head
            - room: Chill Out Area
              icon: mdi:sofa
          sensors:
            - name: Main brush
              sensor: sensor.xiaomi_vacuum_main_brush_left
              icon: mdi:broom
            - name: Side brush
              sensor: sensor.xiaomi_vacuum_side_brush_left
              icon: mdi:broom
            - name: Filter
              sensor: sensor.xiaomi_vacuum_filter_left
              icon: mdi:broom
            - name: Sensor
              sensor: sensor.xiaomi_vacuum_sensor_dirty_left
              icon: mdi:air-filter
          control:
            - name: Start
              function: script.vacuum_start
              icon: mdi:play
            - name: Pause
              icon: mdi:pause
              function: script.vacuum_pause
            - name: Return
              icon: mdi:ev-station
              function: script.vacuum_return_to_base
            - name: Locate
              icon: mdi:map-marker-circle
              function: script.vacuum_locate
```

### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-theme-addons/blob/master/rooms/vacuum/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-theme-addons/blob/master/rooms/vacuum/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.0.2
- Add native HA translations to the button
#### 1.0.1
- You can now define your map, rooms and sensors in the `rooms.yaml` file
#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/klumpke" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>
