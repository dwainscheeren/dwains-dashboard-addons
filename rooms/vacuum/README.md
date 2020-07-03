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
              icon: fal:couch
            - room: Kitchen
              icon: fal:refrigerator
            - room: Dining Room
              icon: fal:coffee
            - room: Halway
              icon: fal:key-skeleton
            - room: Garage
              icon: fal:warehouse
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
          control:
            - name: Start
              function: script.vacuum_start # This is the script you call, which has to be created in scripts.yaml
              icon: mdi:play
            - name: Pause
              icon: mdi:pause
              function: script.vacuum_pause # This is the script you call, which has to be created in scripts.yaml
            - name: Return
              icon: mdi:ev-station
              function: script.vacuum_return_to_base # This is the script you call, which has to be created in scripts.yaml
            - name: Locate
              icon: mdi:map-marker-circle
              function: script.vacuum_locate # This is the script you call, which has to be created in scripts.yaml
```
Create scripts, which will execute the control commands:
Add this in your scripts.yaml:

```
vacuum_start:
  sequence:
    service: vacuum.start
    data:
      entity_id: vacuum.rockrobo
vacuum_pause:
  sequence:
    service: vacuum.pause
    data:
      entity_id: vacuum.rockrobo
vacuum_return_to_base:
  sequence:
    service: vacuum.return_to_base
    data:
      entity_id: vacuum.rockrobo
vacuum_locate:
  sequence:
  - data:
      entity_id: vacuum.rockrobo
    service: vacuum.locate
  alias: Vacuum Location
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
