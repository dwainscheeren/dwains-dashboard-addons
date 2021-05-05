<h1 align="center">Find My - Dwains Dashboard Add-on (more_page)</h1> 


<p align="center">
  <a href="https://dwainscheeren.github.io/dwains-lovelace-dashboard/">
    <img src="https://img.shields.io/badge/Dwains%20Dashboard-Default-299ec2.svg" />
  </a>
  <a href="https://github.com/custom-components/hacs">
    <img src="https://img.shields.io/badge/HACS-Default-orange.svg" />
  </a>
  <a href="https://github.com/LRvdLinden/find_my_dd_addon">
    <img src="https://img.shields.io/github/v/release/LRvdLinden/find_my_dd_addon" />
  </a>
    <a href="https://github.com/LRvdLinden/">
    <img src="https://img.shields.io/github/followers/LRvdLinden?style=social" />
  </a>
    </a>
    <a href="https://discord.gg/7yt64uX">
    <img src="https://img.shields.io/discord/688401603811999885" />
  </a>
</p>
<p align="center">Find My in Home Assistant Dwains Dashboard.</p>
<p align="center">Version 2</p>

<p align="center">Created by <a href="https://github.com/LRvdLinden">Léon van der Linden</a>
</p> 


<p align="center">
  <img src="https://www.iclarified.com/images/news/75056/366308/366308-1920.jpg" />
</p>



## Prerequisite ⚙️
---
- Make sure you have installed the lovelace [fold-entity-row](https://github.com/thomasloven/lovelace-fold-entity-row), [fontawesome icons](https://github.com/thomasloven/hass-fontawesome) and [Cupertino Icons](https://github.com/menahishayan/HomeAssistant-Cupertino-Icons). This can be done manually or directly via hacs
- For Apple Devices you can use the integration [iCloud](https://www.home-assistant.io/integrations/icloud/) for Home Assistant to add `device_tracker` to the `page.yaml`


## Installation Add-on ⚙️
---
- Copy `find_my` folder from directory `version_2/find_my`in to the `dwains-dashboard/addons/more_page/` directory.
- Open your `more_page.yaml` file in `dwains-dashboard/configs` and add the following;
```yaml
  - name: Find My
    main_menu: 'true' #Show this addon in the main navigation bar!
    icon: mdi:radar
    path: 'dwains-dashboard/addons/more_page/find_my/page.yaml'
```
- Reload the theme configuration via Theme Settings

## Add more cards ⚙️
---
- If you want to add more cards, copy a whole row`
### Example
```yaml
                    #devices row 1   
                  - type: vertical-stack
                    cards:
                      - type: entities
                        title: Devices NAME PERSON # <- fill in the right name
                        style: |
                          ha-card {
                            border-radius: 10px;
                            padding-bottom: 10px;
                            background-color: var(--dwains-theme-primary)
                          }
                          :host {
                            --paper-item-icon-color: var(--dwains-theme-accent) !important;
                          }
                          .card-header {
                            padding: 5px 16px;
                            font-size: 15px;
                            font-weight: 700 !important;
                          }
                          #states {
                            padding-top: 0px !important;
                            padding-bottom: 0px !important;
                          }
                          .secondary {
                            color: darkgray !important;
                            margin-left: 2px !important;
                          }
                        entities:
                          - entity: device_tracker.1 # <- fill in the right device_tracker
                            secondary_info: last-updated
                          - entity: device_tracker.2 # <- fill in the right device_tracker
                            secondary_info: last-updated
                          - entity: device_tracker.3 # <- fill in the right device_tracker
                            secondary_info: last-updated
                          - entity: device_tracker.4 # <- fill in the right device_tracker
                            secondary_info: last-updated
                          - type: 'divider'
                            style:
                              pandding-top: 10px;
                              height: 1px
                              width: 100%
                              margin-left: auto
                              margin-right: auto
                              background: "var(--primary-text-color)"
```

## Show on map 🗺️
---
- If you want to add more persons to the map, add more `entities`
- You can turn `dark_mode` off bij changing `true` into `false`
- `hours_to_show` you can plus the hours or delete the line, if you don't wwant to see tracking on the map
- 
### Example
```yaml
    - type: map
      item_classes: 'col-xs-12 col-sm-9'
      entities:
        - entity: person.1 # <- fill in the right person
        - entity: person.2 # <- fill in the right person
      dark_mode: true
      hours_to_show: 2
```

## Custom icons 🎨
---
- Make sure you have installed the lovelace [Cupertino Icons](https://github.com/menahishayan/HomeAssistant-Cupertino-Icons). This can be done manually or directly via hacs
```yaml
ios:apps-iphone
ios:apps-ipad
```
- or download the folder apple-entity-picture.zip to customize your entity

## Extra Geo option 🗺️
---
- For city, street and streetnumber instead of zone, you can use the integration [GoogleGeocode-HASS](https://github.com/michaelmcarthur/GoogleGeocode-HASS). 
- This integration only show street, streetnumber and city, when you outside of a Home Assistant zone

## Result
---
![May-05-2021 16-34-07](https://user-images.githubusercontent.com/77990847/117158717-f7a3d480-adbf-11eb-999b-a703ec506a00.gif)

![image](https://user-images.githubusercontent.com/77990847/117045174-8278c680-ad0f-11eb-93d2-7d10c589b42f.png)

![image](https://user-images.githubusercontent.com/77990847/117176765-87517f00-add0-11eb-8680-06ac28d4eea0.png)

![image](https://user-images.githubusercontent.com/77990847/117045664-0d59c100-ad10-11eb-8c1d-ec26c6b51dd1.png)


---
Enjoy my dashboard? Help me out for a couple of :beers: or a :coffee:!

[![coffee](https://www.buymeacoffee.com/assets/img/custom_images/black_img.png)](https://www.buymeacoffee.com/LRvdLinden)
