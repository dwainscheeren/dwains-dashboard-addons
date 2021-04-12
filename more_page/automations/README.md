
# Automations Dwains Dashboard Add-on (more_page)
Automations Dashboard for Home Assistant Dwains Dashboard
##### Created by [Léon van der Linden](https://github.com/LRvdLinden)
##### v1.0.0

![Automation](https://www.iotworldtoday.com/files/2019/11/GettyImages-1097894826-724x432.jpg)

### Prerequisite
- Make sure you have the automations placed in diverse [Groups](https://www.home-assistant.io/integrations/group/), or see how to do that [Here!](https://www.home-assistant.io/integrations/group/) or the example below
```
  group:
    door_notify_group:
    name: Door Notify Group
    entities:
      - automation.backdoor_open
      - automation.frontdoor_open
```
- Make a calendar in Google with all the birthdays and sync the calendar with Home Assistant
- Make sure you have installed [fontawesome icons](https://github.com/thomasloven/hass-fontawesome). This can be done manually or directly via hacs.


### Installation Atomic Calendar Revive
HACS (recommended)
Install using HACS component:

- You need HACS installed and configured
- Go to plugins tab
- Search for Atomic Calendar Revive
- If you use the Lovelace Editor then first go to your user provile and enable Advanced Mode
- Now add the follwoing to Configuration -> Lovelace Dashboards -> Resources
 ```yaml
    /hacsfiles/atomic-calendar-revive/atomic-calendar-revive.js
 ```
 
 
### Installation Add-on
- Copy the `automation` folder in to the `dwains-dashboard/addons/more_page` directory.
- Open your `more_page.yaml` file in `dwains-dashboard/configs` and add the following;
 ```yaml
     - name: Automations
       main_menu: 'true' #Show this addon in the main navigation bar!
       icon: fas:robot
       path: 'dwains-dashboard/addons/more_page/automation/page.yaml'
```
- Reload the theme configuration via Theme Settings


### Replace the following
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

### add extra rows of automations groups

- If you want more entity rows, just add this pease of code
 ```yaml
       - type: 'custom:fold-entity-row'
         head: group.3 #delete number 3 and fill in the correct group name
         entities:
           - automation.5 #delete number 5 and fill in the correct automation name
           - automation.6 #delete number 6 and fill in the correct automation name
```

### Result

![IMG_0542](https://user-images.githubusercontent.com/77990847/114416033-8bfb8c80-9bb0-11eb-8c69-86e1fcfe5cc6.PNG)

