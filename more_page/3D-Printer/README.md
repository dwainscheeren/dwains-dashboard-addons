## 3D-Printer Home-Assistant View 
## More_page for dwains-dashboard
##### Created by Ruben Dijk
---
### Needs:
* octoprint installed on a Raspberry pi 2b or newer.
* Raspberry pi Camera.
* A running Home Assistant
* 3D Printer (I use a creality Ender 3)
* Smartplug (I use a Sonoff S20)

### Installation (dwains-theme)
Add the following to your more_page.yaml file:

````
      - name: Creality Ender 3
        icon: 'mdi:printer-3d'
        path: 'dwains-dashboard/addons/more_page/3D-Printer/page.yaml'
````

### HACS components

- Install [Vertical Stack In Card](https://github.com/ofekashery/vertical-stack-in-card) from [HACS](https://hacs.xyz).
- Install [Bar-card](https://github.com/custom-cards/bar-card) from [HACS](https://hacs.xyz).
- Install [Card-Mod](https://github.com/thomasloven/lovelace-card-mod) from [HACS](https://hacs.xyz).

### Installation: 
  
1.  Copy the files and place them in the correct location.
2.  If necessary, customize the following files with ip-address, API, smartplug name. printer properties
3.  After doing this check if your configuration (HA) is still valid. 
4.  Copy the content from the folders to the correct folders
5.  Reboot HA and you are ready to go.

### 3d_printer.yaml
* [Check 3d_pinter.yaml (packages)](https://github.com/RubenDijk/ender3-home-assistant/blob/master/3d_printer.yaml/)

### Screenshots:

**Control Off:**<br>
![Control Off](https://github.com/RubenDijk/dwains-theme-addons/blob/master/more_page/3D-Printer/view%20control%20off.png "Control Off")

---

**Control On:**<br>
![light](https://github.com/RubenDijk/dwains-theme-addons/blob/master/more_page/3D-Printer/view%20control%20on.png "Control On")

### Links:
* https://github.com/dwainscheeren/lovelace-dwains-theme
* https://www.home-assistant.io/.
* https://octoprint.org/.

---

### Changelog
#### 1.0.0
- First release
#### 1.0.1
- update ui and move everything in a packages file

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/RubenDijk" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>
