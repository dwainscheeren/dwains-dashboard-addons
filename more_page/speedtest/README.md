Speedtest Add-on (more_page)
##### Created by Eelco Bode


### Installation
- Install Speedtest plugin in homeassistant (https://www.home-assistant.io/integrations/speedtestdotnet)
- Copy the file `page.yaml`  to your `<config dir>/dwains-dashboard/addons/more_page/speedtest` directory.
- Configure your `more_page.yaml` file in `<config dir>/dwains-dashboard/configs` with config below.
- Reload theme configuration at Theme settings.


### Usage
To use this add-on in your Dwains Dashboard, add the following to your `more_page.yaml` file:

```yaml
more_page:
    addons:
     - name: SpeedTest
       main_menu: 'true'
       icon: mdi:lan
       path: 'dwains-dashboard/addons/more_page/speedtest/page.yaml'
```
