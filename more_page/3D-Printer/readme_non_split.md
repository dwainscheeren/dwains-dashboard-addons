# Configuration.yaml (non split)

Example config:

### configuration.yaml
````
rest_command: !include ender3_rest_commands.yaml
````

### script:
````
script:
  ender3_safe_power_down:
    alias: Ender3 Safe Power Down
    sequence:
      - condition: state
        entity_id: binary_sensor.ender3_printing
        state: 'off'
      - service: rest_command.ender3_octoprint_shutdown
        data: {}
      - delay:
          seconds: 20
      - service: switch.turn_off
        data:
          entity_id: switch.3d_printer_psu

  ender3_cancel_print:
    alias: Ender3 Cancel
    sequence:
      - condition: state
        entity_id: switch.ender3_controls
        state: 'on'
      - service: rest_command.ender3_job_command
        data:
          payload: '{"command": "cancel"}'

  ender3_pause_print:
    alias: Ender3 Pause
    sequence:
      - condition: state
        entity_id: switch.ender3_controls
        state: 'on'
      - service: rest_command.ender3_job_command
        data:
          payload: '{"command": "pause", "action": "pause"}'
  
  ender3_resume_print:
    alias: Ender3 Resume
    sequence:
      - condition: state
        entity_id: switch.ender3_controls
        state: 'on'
      - service: rest_command.ender3_job_command
        data:
          payload: '{"command": "pause", "action": "resume"}'

  ender3_home:
    alias: Ender3 Homing
    sequence:
      - condition: state
        entity_id: switch.ender3_controls
        state: 'on'
      - condition: state
        entity_id: sensor.ender3_current_state
        state: 'Operational'
      - service: rest_command.ender3_home
  
  ender3_level_bed:
    alias: Ender3 Bed Levelling
    sequence:
      - condition: state
        entity_id: switch.ender3_controls
        state: 'on'
      - condition: state
        entity_id: sensor.ender3_current_state
        state: 'Operational'
      - service: rest_command.ender3_printer_command
        data:
          cmd: "G29"
  
  ender3_cooldown:
    alias: Ender3 cooldown
    sequence:
      - condition: state
        entity_id: switch.ender3_controls
        state: 'on'
      - condition: state
        entity_id: sensor.ender3_current_state
        state: 'Operational'
      - service: rest_command.ender3_bed_temp
        data:
          temp: 0
      - service: rest_command.ender3_nozzle_temp
        data:
          temp: 0

  ender3_preheat_petg:
    alias: Ender3 PETG Preheat 
    sequence:
      - condition: state
        entity_id: switch.ender3_controls
        state: 'on'
      - condition: state
        entity_id: sensor.ender3_current_state
        state: 'Operational'
      - service: rest_command.ender3_bed_temp
        data:
          temp: 75
      - service: rest_command.ender3_nozzle_temp
        data:
          temp: 215

  ender3_preheat_pla:
    alias: Ender3 PLA Preheat
    sequence:
      - condition: state
        entity_id: switch.ender3_controls
        state: 'on'
      - condition: state
        entity_id: sensor.ender3_current_state
        state: 'Operational'
      - service: rest_command.ender3_bed_temp
        data:
          temp: 55
      - service: rest_command.ender3_nozzle_temp
        data:
          temp: 185

  ender3_change_filament:
    alias: Ender3 Filament Change
    sequence:
      - condition: state
        entity_id: switch.ender3_controls
        state: 'on'
      - service: rest_command.ender3_printer_command
        data:
          cmd: "M600"
````
### ender3_rest_commands.yaml:
````
rest_command:
  ender3_job_command:
    url: !secret ender3_octoprint_api_job_command
    payload: '{{ payload }}'
    headers:
        Content-Type: 'application/json'
        X-Api-Key: !secret ender3_octoprint_api_key
    method: POST

  ender3_home:
    url: !secret ender3_octoprint_printhead_command
    payload: '{"command": "home", "axes": ["x", "y", "z"]}'
    headers:
        Content-Type: 'application/json'
        X-Api-Key: !secret ender3_octoprint_api_key
    method: POST

  ender3_nozzle_temp:
    url: !secret ender3_octoprint_tool_command
    payload: '{"command": "target", "targets": {"tool0": {{ temp }} }}'
    headers:
        Content-Type: 'application/json'
        X-Api-Key: !secret ender3_octoprint_api_key
    method: POST

  ender3_bed_temp:
    url: !secret ender3_octoprint_bed_command
    payload: '{"command": "target", "target": {{ temp }} }'
    headers:
        Content-Type: 'application/json'
        X-Api-Key: !secret ender3_octoprint_api_key
    method: POST

  ender3_printer_command:
    url: !secret ender3_octoprint_printer_command
    payload: '{"command": "{{ cmd }}"}'
    headers:
        Content-Type: 'application/json'
        X-Api-Key: !secret ender3_octoprint_api_key
    method: POST

  ender3_octoprint_shutdown:
    url: !secret ender3_octoprint_api_shutdown
    headers:
        X-Api-Key: !secret ender3_octoprint_api_key
    method: POST
````
### switch:
````
switch:
  platform: template
  switches:
    ender3:
      friendly_name: Ender3
      value_template: "{{ is_state('switch.3d_printer_psu', 'on') }}"
      turn_on:
        service: switch.turn_on
        data:
          entity_id: switch.3d_printer_psu
      turn_off:
        service: script.ender3_safe_power_down

  platform: mqtt
  name: Ender3 Controls
  optimistic: true
  command_topic: "ender3_controls"
````
### automation:
````
automation:
  - alias: ender3 disable controls
    trigger:
      - platform: state
        entity_id: switch.ender3_controls
        to: 'on'
    action:
      - delay: '00:02:00'
      - service: switch.turn_off
        entity_id: switch.ender3_controls
````
### octoprint:
````
octoprint:
  host: !secret ender3_octoprint_host
  api_key: !secret ender3_octoprint_api_key
  name: Ender3
  number_of_tools: 1
  bed: true
  sensors:
    monitored_conditions:
      - 'Current State'
      - 'Temperatures'
      - 'Job Percentage'
      - 'Time Elapsed'
      - 'Time Remaining'
````
### binary_sensor:
````
binary_sensor:
  - platform: octoprint
    monitored_conditions:
      - Printing
      - Printing Error
````
### camera:
````
camera:
  platform: mjpeg
  name: Ender3
  still_image_url: !secret ender3_camera_still
  mjpeg_url: !secret ender3_camera_mjpeg
````
### customize:
````
  customize: 
    switch.ender3:
      icon: mdi:printer-3d
````
