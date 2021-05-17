<h1 align="center">EK 2021 Dwains Dashboard Add-on (more_page)</h1>

<p align="center">
  <a href="https://dwainscheeren.github.io/dwains-lovelace-dashboard/">
    <img src="https://img.shields.io/badge/Dwains%20Dashboard-Default-299ec2.svg" />
  </a>
  <a href="https://github.com/LRvdLinden/LRvdLinden/ek2021_dd_addon">
    <img src="https://img.shields.io/github/v/release/LRvdLinden/ek2021_dd_addon" />
  </a>
      <a href="https://github.com/LRvdLinden/ek2021_dd_addon/commits">
    <img src="https://img.shields.io/github/last-commit/LRvdLinden/ek2021_dd_addon.svg?style=plasticr" />
  </a>
    <a href="https://github.com/LRvdLinden/">
    <img src="https://img.shields.io/github/followers/LRvdLinden?style=social" />
    </a>
    <a href="https://discord.gg/7yt64uX">
    <img src="https://img.shields.io/discord/688401603811999885" />
</a>
</p>

<p align="center">EK 2021 matches calendar.</p>

<p align="center">Created by <a href="https://github.com/LRvdLinden">Léon van der Linden</a>
</p> 


![simple-ipad-pro-mockup-23619 (13)](https://user-images.githubusercontent.com/77990847/118460329-e1b9dc00-b6fc-11eb-81c6-88a898063025.png)


## Prerequisite
---
- Make sure you have the [Google Calendar Event](https://www.home-assistant.io/integrations/calendar.google/) integration
```yaml
     # Example configuration.yaml entry
     google:
       client_id: YOUR_CLIENT_ID
       client_secret: YOUR_CLIENT_SECRET
```
- Import [this calendar](https://calendar.google.com/calendar/u/0/embed?src=jrl4fjbvvvnf906c75thsme4c1k638fq@import.calendar.google.com&ctz=Europe/Amsterdam) to your [Google Calendar](https://calendar.google.com/calendar/u/0/embed?src=jrl4fjbvvvnf906c75thsme4c1k638fq@import.calendar.google.com&ctz=Europe/Amsterdam) and sync the calendar with Home Assistant
- Make sure you have installed [fontawesome icons](https://github.com/thomasloven/hass-fontawesome) and [atomic-calendar-revive](https://marksie1988.github.io/atomic-calendar-revive/options/main-options.html). This can be done manually or directly via hacs.

## Installation Add-on
---
- Copy the `EK21` folder in to the `dwains-dashboard/addons/more_page` directory.
- Open your `more_page.yaml` file in `dwains-dashboard/configs` and add the following;
 ```yaml
     - name: EK 2021
       main_menu: 'true' #Show this addon in the main navigation bar!
       icon: mdi:soccer
       path: 'dwains-dashboard/addons/more_page/ek21/page.yaml'
```
- Reload the theme configuration via Theme Settings

## Replace the following
---
 ```yaml
            - type: custom:atomic-calendar-revive
              style: |
                ha-card {
                  border-radius: 5px;
                  background-color: var(--dwains-theme-primary);
                }
                .cal-titleContainer {
                  display: none;
                }
              showProgressBar: false
              maxDaysToShow: 30
              showMonth: true
              showWeekDay: false
              eventBarColor: 'var(--dwains-theme-grey)'
              dayWrapperLineColor: 'var(--dwains-theme-grey)'
              timeColor: 'var(--dwains-theme-grey)'
              entities:
                - calendar.ek_2020
```
- on line 69: add the correct `entity` or `entities` to show
- change `maxDaysToShow` in the days that you want

## Configuration ⚙️
---
`atomic-calendar-revive` is highly customizable. See Github [atomic-calendar-revive](https://marksie1988.github.io/atomic-calendar-revive/options/main-options.html) for all the options

## Result
---
![simple-ipad-pro-mockup-23619 (13)](https://user-images.githubusercontent.com/77990847/118460337-e4b4cc80-b6fc-11eb-9edd-930fb8d28ac5.png)

![simple-ipad-pro-mockup-23619 (14)](https://user-images.githubusercontent.com/77990847/118460346-e67e9000-b6fc-11eb-9ada-fd74b3251bce.png)
![mockup-of-two-iphones-12-pro-max-with-a-plain-background-5014-el1 (4)](https://user-images.githubusercontent.com/77990847/118459806-60fae000-b6fc-11eb-8c4c-b40073969d0c.png)




---
Enjoy my card? Help me out for a couple of :beers: or a :coffee:!

[![coffee](https://www.buymeacoffee.com/assets/img/custom_images/black_img.png)](https://www.buymeacoffee.com/LRvdLinden)
