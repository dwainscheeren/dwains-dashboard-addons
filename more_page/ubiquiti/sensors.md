# Configuration.yaml (Example)


### Unifigateway
````yaml
platform: unifigateway
host: Ip or localhost <----
username: UserName Here <----
password: Password unifi <----
monitored_conditions:
  - vpn
  - lan
  - wan
  - www
  - wlan
  - alerts
  - firmware
````

### Sensors

````yaml
platform: template
sensors:
  unifi_gateway_wan_cpu:
    friendly_name: "CPU"
    unit_of_measurement: "%"
    value_template: "{{ states.sensor.unifi_gateway_wan.attributes['gw_system-stats']['cpu'] }}"
  unifi_gateway_wan_mem:
    friendly_name: "Memory"
    unit_of_measurement: "%"
    value_template: "{{ states.sensor.unifi_gateway_wan.attributes['gw_system-stats']['mem'] }}"
  unifi_gateway_www_xput_down:
    friendly_name: "USG Speedtest Download"
    unit_of_measurement: Mbps
    icon_template: "mdi:progress-download"
    value_template: "{{ states.sensor.unifi_gateway_www.attributes.xput_down }}"
  unifi_gateway_www_xput_up:
    friendly_name: "USG Speedtest Upload"
    unit_of_measurement: Mbps
    icon_template: "mdi:progress-upload"
    value_template: "{{ states.sensor.unifi_gateway_www.attributes.xput_up }}"
  unifi_gateway_www_speedtest_ping:
    friendly_name: "USG Speedtest Ping"
    unit_of_measurement: ms
    icon_template: "mdi:progress-clock"
    value_template: "{{ states.sensor.unifi_gateway_www.attributes.speedtest_ping }}"
  unifi_gateway_wlan_num_user:
    friendly_name: 'Users'
    value_template: '{{ states.sensor.unifi_gateway_wlan.attributes.num_user }}'
  unifi_gateway_lan_num_user:
    friendly_name: 'Users Lan'
    value_template: '{{ states.sensor.unifi_gateway_lan.attributes.num_user }}'
  unifi_gateway_wan_download:
    friendly_name: 'WAN Download'
    unit_of_measurement: Kbps
    value_template: "{{ (states.sensor.unifi_gateway_wan.attributes['rx_bytes-r'] / 1024) | int }}"
````