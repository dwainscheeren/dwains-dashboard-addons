<h1 align="center">Security Dashboard - Dwains Dashboard Add-on (more_page)</h1> 


<p align="center">
  <a href="https://dwainscheeren.github.io/dwains-lovelace-dashboard/">
    <img src="https://img.shields.io/badge/Dwains%20Dashboard-Default-299ec2.svg" />
  </a>
  <a href="https://github.com/custom-components/hacs">
    <img src="https://img.shields.io/badge/HACS-Default-orange.svg" />
  </a>
  <a href="https://github.com/LRvdLinden/security_dashboard_dd_addon">
    <img src="https://img.shields.io/github/v/release/LRvdLinden/security_dashboard_dd_addon" />
  </a>
      <a href="https://github.com/LRvdLinden/security_dashboard_dd_addon">
    <img src="https://img.shields.io/github/downloads/LRvdLinden/security_dashboard_dd_addon/latest/total?color=purple&label=%20release%20Downloads" />
  </a>
    <a href="https://github.com/LRvdLinden/">
    <img src="https://img.shields.io/github/followers/LRvdLinden?style=social" />
  </a>
    </a>
    <a href="https://discord.gg/7yt64uX">
    <img src="https://img.shields.io/discord/688401603811999885" />
  </a>
</p>
<p align="center">Security Dashboard in Home Assistant Dwains Dashboard.</p>


<p align="center">Created by <a href="https://github.com/LRvdLinden">Léon van der Linden</a>
</p> 


<p align="center">
  <img src="https://user-images.githubusercontent.com/77990847/115442146-f6947400-a211-11eb-8d14-321b039f1290.png" />
</p>



## Prerequisite
---
- Make sure you have installed [Alarm Control Panel](https://www.home-assistant.io/integrations/manual), [Alarm Control Panel Card](https://www.home-assistant.io/lovelace/alarm-panel) and [fontawesome icons](https://github.com/thomasloven/hass-fontawesome). This can be done manually or directly via hacs.

<img width="320" alt="image" src="https://user-images.githubusercontent.com/77990847/115438802-1cb81500-a20e-11eb-92f5-02fc2154f570.png">


## Installation Add-on
---
- Copy the `security_dashboard` folder in to the `dwains-dashboard/addons/more_page` directory.
- Open your `more_page.yaml` file in `dwains-dashboard/configs` and add the following;
```yaml
 - name: Security Dashboard
   icon: mdi:shield-check-outline
   main_menu: 'true' #Show this addon in the main navigation bar!
   path: 'dwains-dashboard/addons/more_page/security_dashboard/page.yaml'
```
- Reload the theme configuration via Theme Settings

## Replace the following
---
- If some `sensors` not showing after this manual, please add the correct `sensor` to monitor
- change camera `entities` in the `page.yaml` file


## Result
---
![gif sensoren](https://user-images.githubusercontent.com/77990847/115442481-58ed7480-a212-11eb-8487-38d1877bb659.gif)

<img width="1262" alt="image" src="https://user-images.githubusercontent.com/77990847/115441836-9ac9eb00-a211-11eb-9bd8-b6c62f21c02b.png">

<img width="1251" alt="image" src="https://user-images.githubusercontent.com/77990847/115442146-f6947400-a211-11eb-8d14-321b039f1290.png">


---
Enjoy my dashboard? Help me out for a couple of :beers: or a :coffee:!

[![coffee](https://www.buymeacoffee.com/assets/img/custom_images/black_img.png)](https://www.buymeacoffee.com/LRvdLinden)
