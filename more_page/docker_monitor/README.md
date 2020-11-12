## Docker-Monitor
## More_page for dwains-theme
##### Created by Ruben Dijk
---

### Installation (dwains-theme)
- Manually install the next custom component from https://github.com/RubenDijk/docker_monitor
- Copy the file `page.yaml`  to your `<config dir>/dwains-dashboard/addons/more_page/docker-monitor` directory.
- Configure your `more_page.yaml` file in `<config dir>/dwains-dashboard/configs` with config below.
- Restart Home Assistant.

### HACS components

- Install [Vertical Stack In Card](https://github.com/ofekashery/vertical-stack-in-card) from [HACS](https://hacs.xyz).
- Install [Bar-card](https://github.com/custom-cards/bar-card) from [HACS](https://hacs.xyz).
- Install [Card-Mod](https://github.com/thomasloven/lovelace-card-mod) from [HACS](https://hacs.xyz).

---

### Usage
To use this add-on in your Dwains Theme, add the following to your `more_page.yaml` file:

````yaml
# Example more_page.yaml entry
more_page:
    addons:
      - name: Docker
        icon: 'mdi:docker'
        path: 'dwains-dashboard/addons/more_page/portainer/page.yaml'
````

Optional for room addon:

````yaml
addons:
  - name: Docker
    icon: mdi:docker
    path: 'dwains-dashboard/addons/more_page/portainer/page.yaml'
    button_path: 'dwains-dashboard/addons/rooms/hello-room/button.yaml'
    data:
      entity: sensor.docker_version
````
Change the next line's in the page.yaml

- Nr.66       ip adrres and port
- Nr.304      container-name
- Nr.336      container_name (this for all the sensors)
- if you want to add more containers copy and paste the example (example in the page.yaml)

---

### Screenshots:
**Light theme:**<br>
![light](https://github.com/RubenDijk/dwains-theme-addons/blob/master/more_page/docker_monitor/docker-monitor%20light_mode.png "Light")

---

**Dark theme:**<br>
![dark](https://github.com/RubenDijk/dwains-theme-addons/blob/master/more_page/docker_monitor/docker-monitor%20dark_mode.png "Dark")

### Links:
* https://github.com/dwainscheeren/lovelace-dwains-theme
* https://www.home-assistant.io/integrations/unifi/
* https://hacs.xyz/
* https://github.com/RubenDijk/
#### 1.0.0
- First release
---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/RubenDijk" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>
