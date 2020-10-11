# UnRAID Monitoring Addon for Dwains-Theme
#### Version 0.4

![unraid-monitor](https://github.com/noodlemctwoodle/homeassistant/blob/gh-pages/images/dwains-theme/addons/unraid/desktop_1.png)

## Dwains Theme Addon:

ains-Theme `UnRAID` add-on can be found [here](https://noodlemctwoodle.github.io/homeassistant/addons/dwains/addons/more_page/unraid_monitoring.html)
     
Configuration instructions can be found [here](https://noodlemctwoodle.github.io/homeassistant/guides/unraid_metrics.html)

Dw

### Dwains Theme Configuration:

 ```yaml
    addons:
    - name: Unraid Monitoring
        icon: mdi:server-network
        path: 'dwains-theme/addons/more_page/unraid_monitoring.yaml'
```

### UnRAID Data Monitoring Feeds

| [UnRAID-API](https://noodlemctwoodle.github.io/homeassistant/guides/unraid_metrics.html#unraid-api-configuration) | [UnRAID-SNMP](https://noodlemctwoodle.github.io/homeassistant/guides/unraid_metrics.html#unraid-snmp-configuration) | [UnRAID Glances Container](https://github.com/hassio-addons/addon-glances/blob/v0.7.1/README.md) |
|-----------------------|-----------------|--------------------------------|
| View arrayStatus      | HDD Array Temps | View total per disk used space |
| View arrayProtection  | LAN Throughput  | View total per disk free space |
| Total arrayDiskSpace  | Disk Space      | View CPU usage                 |
| Start/Stop Containers | CPU Load        | View RAM usage                 |


 ### Credits
 - [Dwain](https://github.com/dwainscheeren/lovelace-dwains-theme) Thanks for your assistance and ideas on this :)
 - [Stephan](https://github.com/Stephan296) Thanks for creating the version sensor curl request and exploring the correct configuration for the UnRAID-API.
 - [ElectricBrainUK](https://github.com/ElectricBrainUK/UnraidAPI) Thanks for creating this API for us to use and making this dashboard possible
 - [123](https://community.home-assistant.io/u/123/summary) Thanks for solving the problem with parenthesis
 - [Avi](https://github.com/abeksis/My-HomeAssistant-Config) Thanks for creating the awesome graphics used in v0.1 containers swipe-card and also providing code snips. 


## Release Notes:

### Version 0.1
 - Initial view works for both Mobile and Desktop (Responsive)
 - Glances container support
 - Glances Home Assistant Integration
 - Container Support
    - Start/Stop Containers
 - UnRAID-API added
 - Added SNMP [config](https://github.com/noodlemctwoodle/homeassistant/blob/4fc9a4634a3bf423a8cec746b7c5d4f542dd697a/packages/ha_core/areas/cabinet/devices/unraid_monitoring.yaml#L61)

### Version 0.2
 - Updated `title` to `name` for bar-card thanks @papy_329700
 - fixed `custom:dwains-flexbox-card` line spacing issue
 - Removed picture entity card used for version and containers due to positioning issue on mobile devices
   - Added Button-Card for `containers` and `version`
 - Removed Swipe card for Home Assistant addons due issue with light theme
 - Change layout of `CPU` and `RAM` usage
 - Fixed spacing issues
 - Adjusted font sizes

### Version 0.3
 - Added new UnRAID API Beta content
   - Power Off Server
   - Reboot Server
   - Move Data (Mover)
   - Parity Check
 - fixed `custom:dwains-flexbox-card` line spacing issue
 - Moved disks location
 - Added Unassigned Drives disk storage
 - Reshuffled layout
 - Updated all the plugs and fixed issues
 - Works with both light and dark theme
 - Works on Mobile
 
### Version 0.4
  - Added disk temperatures (SNMP)
  - Removed Download/Upload LAN Traffic (coming soon in new Network View)
  - Removed Swipe card


### Donations

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/noodlemctwoodle" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>