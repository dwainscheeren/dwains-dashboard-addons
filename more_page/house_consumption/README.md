<h1 align="center">House consumption - Dwains Dashboard Add-on (more_page)</h1> 


<p align="center">
  <a href="https://dwainscheeren.github.io/dwains-lovelace-dashboard/">
    <img src="https://img.shields.io/badge/Dwains%20Dashboard-Default-299ec2.svg" />
  </a>
  <a href="https://github.com/custom-components/hacs">
    <img src="https://img.shields.io/badge/HACS-Default-orange.svg" />
  </a>
  <a href="https://github.com/LRvdLinden/house_consumption_dd_addon">
    <img src="https://img.shields.io/github/v/release/LRvdLinden/house_consumption_dd_addon" />
  </a>
    <a href="https://github.com/LRvdLinden/">
    <img src="https://img.shields.io/github/followers/LRvdLinden?style=social" />
  </a>
    </a>
    <a href="https://discord.gg/7yt64uX">
    <img src="https://img.shields.io/discord/688401603811999885" />
  </a>
</p>
<p align="center">House consumption in Home Assistant Dwains Dashboard.</p>
<p align="center">Created by <a href="https://discord.gg/7yt64uX">Dwains Community</a>
</p> 


<p align="center">
  <img src="https://user-images.githubusercontent.com/77990847/115602989-e945bb00-a2df-11eb-8c6b-94f84898e3c3.png" />
</p>



## Prerequisite ⚙️
---
- Make sure you have installed the lovelace [mini-graph-card](https://github.com/kalkih/mini-graph-card), [power-usage-card-regex](https://github.com/DBa2016/power-usage-card-regex), [fontawesome icons](https://github.com/thomasloven/hass-fontawesome), and [Button Card](https://github.com/custom-cards/button-card). This can be done manually or directly via hacs.

<img width="320" alt="image" src="https://user-images.githubusercontent.com/77990847/115668482-72dca380-a347-11eb-9f15-0293ba233d7f.png">


## Installation Add-on ⚙️
---
- Copy the `house_consumption` folder in to the `dwains-dashboard/addons/more_page` directory.
- Open your `more_page.yaml` file in `dwains-dashboard/configs` and add the following;
```yaml
 - name: House consumption
   icon: fas:chart-line
   main_menu: 'true' #Show this addon in the main navigation bar!
   path: 'dwains-dashboard/addons/more_page/house_consumption/page.yaml'
```
- Reload the theme configuration via Theme Settings

## Create sensors 🔧
---
See the example files in the `sensors` folder for creating sensors. You need to create utility sensors, calculation template sensors for device and al used utilities like gas, electricity  and water if available
- Copy and place the `sensor` `files` in to your `/config/sensor` directory
- Reboot Home Assistant
- If some `sensors` not showing after this manual, please add the correct `sensor` to monitor



## Result
---
<p align="center">
  <img src="https://user-images.githubusercontent.com/77990847/115602989-e945bb00-a2df-11eb-8c6b-94f84898e3c3.png" />
</p>


---
Enjoy our house consumption? Help us out for a couple of :beers: or a :coffee:!

[![coffee](https://www.buymeacoffee.com/assets/img/custom_images/black_img.png)](https://www.buymeacoffee.com/LRvdLinden)
