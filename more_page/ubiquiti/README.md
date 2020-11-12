## Ubiquiti UniFi 
## More_page for dwains-theme
##### Created by Ruben Dijk
---

### Installation (dwains-theme)
- Manually install the next custom component from https://github.com/RubenDijk/homeassistant
- Copy the my_unifi to your custom component folder.
- Copy the file `unifi.yaml`  to your `<config dir>/dwains-dashboard/addons/more_page/ubiquiti` directory.
- Configure your `more_page.yaml` file in `<config dir>/dwains-dashboard/configs` with config below.
- Add unifi controller (Home-Assistant integration)
- Restart Home Assistant.

### HACS components

- Install [Unifigateway](https://github.com/custom-components/sensor.unifigateway) from [HACS](https://hacs.xyz).
- Install [Multiple-entity-row](https://github.com/benct/lovelace-multiple-entity-row) from [HACS](https://hacs.xyz).
- Install [Vertical Stack In Card](https://github.com/ofekashery/vertical-stack-in-card) from [HACS](https://hacs.xyz).
- Install [Bar-card](https://github.com/custom-cards/bar-card) from [HACS](https://hacs.xyz).
- Install [Card-Mod](https://github.com/thomasloven/lovelace-card-mod) from [HACS](https://hacs.xyz).

### Usage
To use this add-on in your Dwains Theme, add the following to your `more_page.yaml` file:

````yaml
# Example more_page.yaml entry
more_page:
    addons:
      - name: Ubiquiti UniFi
        icon: 'mdi:router-network'
        path: 'dwains-dashboard/addons/more_page/ubiquiti/unifi.yaml'
````

Optional for room addon:

````yaml
addons:
  - name: Ubiquiti UniFi
    icon: mdi:router-wireless
    path: 'dwains-dashboard/addons/more_page/ubiquiti/unifi.yaml'
    button_path: 'dwains-dashboard/addons/rooms/hello-room/button.yaml'
    data:
      entity: sensor.unifi_gateway_alerts
````
Add the following package to your config [Ubiquiti](https://github.com/RubenDijk/dwains-theme-addons/blob/master/more_page/ubiquiti/ubiquiti.yaml/)

- Change the next line's
- Nr.8        ip adres switch
- Nr.22       ip adres switch
- Nr.27       ip adres switch
- Nr.32       ip adres ap
- Nr.46       ip adres ap
- Nr.51       ip adres ap
- Nr.138      ip adres controller
- Nr.139      Site-id (optional)
- Nr.140      username
- Nr.141      password or secret
- Nr.155      Site-id (optional)
- Nr.156      username
- Nr.157      password or secret
- Nr.158      ip adres controller

- Nr.63       ip adres of the controller (unifi.yaml)

### Screenshots:
**Light theme:**<br>
![light](https://github.com/RubenDijk/dwains-theme-addons/blob/master/more_page/ubiquiti/Unifi%20light_mode.png "Light")

---

**Dark theme:**<br>
![dark](https://github.com/RubenDijk/dwains-theme-addons/blob/master/more_page/ubiquiti/Unifi%20dark_mode.png "Dark")

### Links:
* https://github.com/dwainscheeren/lovelace-dwains-theme
* https://www.home-assistant.io/integrations/unifi/
* https://hacs.xyz/
* https://github.com/RubenDijk/homeassistant

#### 1.0.0
- First release
#### 1.0.1
- Add new sensors for the Wan card and Wlan card
- Add custom slider card
- Add icons for sensors
- Add buttons to your webpage of the controller, Alerts gateway and Firmware update
- Change positions sensor Wan and WWW
#### 1.0.2
- Add new sensors (SNMPv2 needs to be turned on)
- Add packages (all in one file)
- Change UI
---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/RubenDijk" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>
