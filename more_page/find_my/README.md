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


<p align="center">Created by <a href="https://github.com/LRvdLinden">Léon van der Linden</a>
</p> 


<p align="center">
  <img src="https://www.iclarified.com/images/news/75056/366308/366308-1920.jpg" />
</p>



## Prerequisite ⚙️
---
- Make sure you have installed the lovelace [fold-entity-row](https://github.com/thomasloven/lovelace-fold-entity-row), [fontawesome icons](https://github.com/thomasloven/hass-fontawesome) and [Cupertino Icons](https://github.com/menahishayan/HomeAssistant-Cupertino-Icons). This can be done manually or directly via hacs


## Installation Add-on ⚙️
---
- Copy the `find_my` folder in to the `dwains-dashboard/addons/more_page` directory.
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
- If you want to add more cards, copy the code from line `12` till `62` and pase it in on line `63` `dwains-dashboard/addons/more_page/find_my/page.yaml`
### Example
```yaml
        - type: entities
          title: Devices #PERSON
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
            .card-content div {
                margin: 0 !important;
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
            - entity: person.1 # <- fill in the right person
              secondary_info: last-updated
            - entity: device_tracker.1 # <- fill in the right device_tracker
              secondary_info: last-updated
            - type: custom:fold-entity-row
              head:
                type: section
                label: Meer devices
              entities:
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

## Result
---
![image](https://user-images.githubusercontent.com/77990847/116847119-2e27f680-abea-11eb-8eaf-02a91e623a1b.png)

![image](https://user-images.githubusercontent.com/77990847/116847363-ae4e5c00-abea-11eb-86ee-27dd2e964094.png)



---
Enjoy my dashboard? Help me out for a couple of :beers: or a :coffee:!

[![coffee](https://www.buymeacoffee.com/assets/img/custom_images/black_img.png)](https://www.buymeacoffee.com/LRvdLinden)
