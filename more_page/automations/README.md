<h1 align="center">Automations Dwains Dashboard Add-on (more_page)</h1>

<p align="center">
  <a href="https://dwainscheeren.github.io/dwains-lovelace-dashboard/">
    <img src="https://img.shields.io/badge/Dwains%20Dashboard-Default-299ec2.svg" />
  </a>
  <a href="https://github.com/LRvdLinden/automations_dd_addon">
    <img src="https://img.shields.io/github/v/release/LRvdLinden/automations_dd_addon" />
  </a>
    <a href="https://github.com/LRvdLinden/">
    <img src="https://img.shields.io/github/followers/LRvdLinden?style=social" />
  </a>
    </a>
    <a href="https://discord.gg/7yt64uX">
    <img src="https://img.shields.io/discord/688401603811999885" />
  </a>
</p>

<p align="center">A automations dashboard to display automations in a nice way.</p>

<p align="center">Created by <a href="https://github.com/LRvdLinden">Léon van der Linden</a>
</p> 

<p align="center">
  <img src="https://user-images.githubusercontent.com/77990847/118323287-a9e64500-b500-11eb-930b-153c87e148cb.png" />
</p>


## Prerequisite
---
- Make sure you have the automations placed in diverse [Groups](https://www.home-assistant.io/integrations/group/), or see how to do that [Here!](https://www.home-assistant.io/integrations/group/) or the example below
```
  group:
    door_notify_group:
    name: Door Notify Group
    entities:
      - automation.backdoor_open
      - automation.frontdoor_open
```
- Make sure you have installed HACS Fronted [fontawesome icons](https://github.com/thomasloven/hass-fontawesome), [Search Card](https://github.com/postlund/search-card) and [Scheduler Card](https://github.com/LRvdLinden/scheduler-card). This can be done manually or directly via hacs.
- Make sure you have installed HACS Integration [scheduler-component](https://github.com/LRvdLinden/scheduler-component). This can be done manually or directly via hacs.
 
 
## Installation Add-on
---
- Copy the `automation` folder in to the `dwains-dashboard/addons/more_page` directory.
- Open your `more_page.yaml` file in `dwains-dashboard/configs` and add the following;
 ```yaml
     - name: Automations
       main_menu: 'true' #Show this addon in the main navigation bar!
       icon: fas:robot
       path: 'dwains-dashboard/addons/more_page/automation/page.yaml'
```
- Reload the theme configuration via Theme Settings


## Replace the following
---
 ```yaml
     cards:
       - type: 'custom:fold-entity-row'
         head: group.1 #delete number 1 and fill in the correct group name
         entities:
           - automation.1 #delete number 1 and fill in the correct automation name
           - automation.2 #delete number 2 and fill in the correct automation name
       - type: 'custom:fold-entity-row'
         head: group.2 #delete number 2 and fill in the correct group name
         entities:
           - automation.3 #delete number 3 and fill in the correct automation name
           - automation.4 #delete number 4 and fill in the correct automation name
```
- replace all `head:` for the correct `group` name
- replace all `entities:` for the correct one

## add extra rows of automations groups
---

- If you want more entity rows, just add this pease of code
 ```yaml
       - type: 'custom:fold-entity-row'
         head: group.3 #delete number 3 and fill in the correct group name
         entities:
           - automation.5 #delete number 5 and fill in the correct automation name
           - automation.6 #delete number 6 and fill in the correct automation name
```

## Scheduler Card
---
<img width="621" alt="image" src="https://user-images.githubusercontent.com/77990847/114769693-d4f74080-9d6a-11eb-8e48-8a1d64d016a1.png">

![image](https://user-images.githubusercontent.com/77990847/114762691-4bdc0b80-9d62-11eb-9639-d3e2a44a2e96.gif)

![image](https://user-images.githubusercontent.com/77990847/114762740-55657380-9d62-11eb-923a-1584b70f93a8.png) ![image](https://user-images.githubusercontent.com/77990847/114762774-5e564500-9d62-11eb-946c-742d5a2f1f56.png)

![image](https://user-images.githubusercontent.com/77990847/114763055-affecf80-9d62-11eb-8078-757c999de2ff.png)

![image](https://user-images.githubusercontent.com/77990847/114763079-b55c1a00-9d62-11eb-8d95-2549bf79ecf4.png)

![image](https://user-images.githubusercontent.com/77990847/114762786-63b38f80-9d62-11eb-917d-07e39900fa7d.png)

## Search Card
---

![Apr-24-2021 15-49-31](https://user-images.githubusercontent.com/77990847/115961003-c2bc9580-a514-11eb-9a5a-70720ea8912f.gif)


## Result
---

![simple-ipad-pro-mockup-23619](https://user-images.githubusercontent.com/77990847/118323287-a9e64500-b500-11eb-930b-153c87e148cb.png)

![simple-ipad-pro-mockup-23619-2](https://user-images.githubusercontent.com/77990847/118323271-a5ba2780-b500-11eb-88e6-41785ae6c51d.png)




---
Enjoy my card? Help me out for a couple of :beers: or a :coffee:!

[![coffee](https://www.buymeacoffee.com/assets/img/custom_images/black_img.png)](https://www.buymeacoffee.com/LRvdLinden)
