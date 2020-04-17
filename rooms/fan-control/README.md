# Fan-control Add-on (rooms)
##### Created by Cameron


### Installation
- Configure your fan entity (you could use the `fan.yaml` as an example).
- Copy the files `page.yaml` and `button.yaml` to your `<config dir>/dwains-theme/addons/rooms/<your room>/fan` directory.
- Configure your `rooms.yaml` file in `<config dir>/dwains-theme/configs` with config below.
- Restart Home Assistant.


### Usage
To use this add-on in your Dwains Theme, add the following to your `rooms.yaml` file:

```yaml
# Example rooms.yaml entry
  - name: Master Bedroom
    addons:
      - name: Fan Control
        icon: fas:fan
        path: 'dwains-theme/addons/rooms/masterbedroom/fan/page.yaml'
        button_path: 'dwains-theme/addons/rooms/masterbedroom/fan/button.yaml'
        data:
          entity: sensor.master_fan_speed
```


This is a example of the fan configuration that i used in my Home Assistant configuration:
```yaml
# Example fan.yaml file
homeassistant:
  customize:
    fan.master_bedroom_fan:
      friendly_name: Main Fan
      persistent: true

    fan.master_bedroom_light:
      friendly_name: Main Light
      persistent: true

### Sensor ###
sensor:
  - platform: template
    sensors:
      master_fan_speed:
        value_template: >
            {% if states.fan.master_bedroom_fan.state == 'off' -%}off
            {% else %}
              {{ state_attr("fan.master_bedroom_fan", "speed") }}
            {% endif %}

### Script ###
script:
  fan_master_bedroom_command:
      sequence:
        - service: fan.set_speed
          entity_id: fan.master_bedroom_fan
          data_template:
            speed: '{{option}}'

### Fan ###
fan:
  - platform: mqtt
    name: "Master Bedroom Fan"
    command_topic: "cmnd/sonoff_MBR_fan/FanSpeed"
    speed_command_topic: "cmnd/sonoff_MBR_fan/FanSpeed"
    state_topic: "stat/sonoff_MBR_fan/RESULT"
    speed_state_topic: "stat/sonoff_MBR_fan/RESULT"
    state_value_template: >
      {% if value_json.FanSpeed is defined %}
        {% if value_json.FanSpeed == 0 -%}0{%- elif value_json.FanSpeed > 0 -%}4{%- endif %}
      {% else %}
        {% if states.fan.master_bedroom_fan.state == 'off' -%}0{%- elif states.fan.master_bedroom_fan.state == 'on' -%}4{%- endif %}
      {% endif %}
    speed_value_template: "{{ value_json.FanSpeed }}"
    availability_topic: tele/sonoff_MBR_fan/LWT
    payload_off: "0"
    payload_on: "4"
    payload_low_speed: "1"
    payload_medium_speed: "2"
    payload_high_speed: "3"
    payload_available: Online
    payload_not_available: Offline
    speeds:
      - "off"
      - low
      - medium
      - high

  - platform: mqtt
    name: "Master Bedroom Light"
    command_topic: "cmnd/sonoff_MBR_fan/power1"
    state_topic: "stat/sonoff_MBR_fan/POWER1"
    qos: 1
    payload_on: "ON"
    payload_off: "OFF"
    retain: false
```

### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-theme-addons/blob/master/rooms/fan-control/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-theme-addons/blob/master/rooms/fan-control/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.0.0
- First release