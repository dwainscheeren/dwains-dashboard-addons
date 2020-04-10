# Home Assistant Monitoring Addon for Dwains-Theme
#### Version 0.3

![ha-monitor](https://github.com/noodlemctwoodle/homeassistant/blob/master/.github/wiki/images/dwains-theme/addons/ha-monitor/desktop_1.png)

## Version 0.1 - Initial release

 - Reload, snapshot, restart, reboot buttons
 - System temperatures
 - System resources
 - Disk usage
 - Database statistics
 - Home Assistant Core addon support (start/stop add-ons)
 - Internet speed test
 - Cloudflare & Google Ping
 - Cast Any Page to Google Cast device
 - Works with Bar-Card 3.0.5
 - Check for updates and get notifications
    - HACS update notifications
    - Supervisor update notifications
    - Add-on update notifications

## Version 0.2 - Code Cleanup

 - Removed CSS heights and fixed them with Graph `height:`
 - Added more documentation for card
 - [AVI](https://github.com/abeksis/My-HomeAssistant-Config) converted all the HKI container images to Dwians-Theme variants. 

## Version 0.3
 - Added update sensors
    - package + audio, dns, cli and core
 - Added configuration guide for Configuration [Checker](https://github.com/noodlemctwoodle/homeassistant/blob/master/.github/wiki/guides/ha-core/HomeAssistant_Monitoting.md#install-check-home-assistant-configuration)
 - Added configuration guide for HTML5 [notifications](https://github.com/noodlemctwoodle/homeassistant/blob/master/.github/wiki/guides/ha-core/HomeAssistant_Monitoting.md#setting-up-the-html5-notify-platform)
 - [AVI](https://github.com/abeksis/My-HomeAssistant-Config) added template.dwains.psd for you to make your own container images


### Home Assistant Core Addon Support

Dwains-Theme Addon can be found [here](https://github.com/noodlemctwoodle/homeassistant/blob/master/dwains-theme/addons/more_page/ha_view/ha_monitoring.yaml)
     
Configuration instructions can be found [here](https://github.com/noodlemctwoodle/homeassistant/blob/master/.github/wiki/guides/ha-core/HomeAssistant_Monitoting.md)

```YAML
    addons:
      - name: Home Assistant
        icon: mdi:home-assistant
        path: 'dwains-theme/addons/more_page/ha_view/ha_monitoring.yaml'
```

 #### Credits
 - [SilvrrGIT](https://github.com/SilvrrGIT/HomeAssistant) Excellent post on the community [forum](https://community.home-assistant.io/t/get-notified-of-available-hassio-addon-updates/176626) outlining how to create rest senosr to start/restart Home Assistant Core Addons, Create the switches used in my HKI System view and the post also describes how write automations for addon update available notifications.
 - [Avi](https://github.com/abeksis/My-HomeAssistant-Config) Thanks for creating the awesome graphics used in v0.1 containers swipe-card and also providing code snips. 
 - [CentralCommand](https://community.home-assistant.io/t/update-notifications-core-hacs-supervisor-and-addons/182295)
 
 ### Donations

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/noodlemctwoodle" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>