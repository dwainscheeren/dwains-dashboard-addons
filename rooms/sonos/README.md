# Sonos Add-on (rooms)
##### Created by [Jeroen Klompen](https://github.com/klumpke/)


### Installation
- Install [Mini Media Player](https://github.com/kalkih/mini-media-player) and [slider-entity-row](https://github.com/thomasloven/lovelace-slider-entity-row) from [HACS](https://hacs.xyz).
- In the HomeAssistant GUI, go to `Configuration` -> `Lovelace Dashboards` -> `Resources` -> `+` and add the following information.
  - URL: /hacsfiles/mini-media-player/mini-media-player-bundle.js
  - Resource type: JavaScript Module
  - URL: /hacsfiles/lovelace-slider-entity-row/slider-entity-row.js
  - Resource type: JavaScript Module
- Copy the files `page.yaml` and `button.yaml` to your `<config dir>/dwains-dashboard/addons/rooms/<your room>/sonos` directory.
- Configure your `rooms.yaml` file in `<config dir>/dwains-dashboard/configs` with config below.
- Restart Home Assistant.

*NOTE: You need to add radio stations / playlists in your "My SONOS" app if you want to use the buttons. The ID of the button is identical to the name in the "My SONOS" app. You can find more information about this at the [Mini Media Player repository](https://github.com/kalkih/mini-media-player#card-with-media-shortcuts).*


### Usage
To use this add-on in your Dwains Dashboard, add the following to your `rooms.yaml` file:
```yaml
# Example rooms.yaml entry
  - name: Living Room
    addons:
      - name: Sonos
        icon: fal:speaker
        path: 'dwains-dashboard/addons/rooms/livingroom/sonos/page.yaml'
        button_path: 'dwains-dashboard/addons/rooms/livingroom/sonos/button.yaml'
        data:
          platform: sonos
          speakers:
            - entity: media_player.sonos_livingroom
              name: Living Room
            - entity: media_player.sonos_kitchen
              name: Kitchen
            - entity: media_player.sonos_diningroom
              name: Diningroom
            - entity: media_player.sonos_garden
              name: Garden
          buttons:
            - name: Radio 538
              type: source
              id: Radio 538
            - name: 100% NL
              type: source
              id: 100% NL
            - name: Qmusic
              type: source
              id: Qmusic
            - name: TV
              icon: mdi:television
              type: source
              id: TV
```

### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/rooms/sonos/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-dashboard-addons/blob/master/rooms/sonos/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.0.5
- **BREAKING CHANGE**: ***The addon is now more dynamic than ever!*** You can add all speakers and buttons via the `rooms.yaml` file. *Make sure you overwrite both the button.yaml and the page.yaml file when you update to the newest version of the addon*
- Add native HA translations to the button
#### 1.0.4
- Fix: show media and source in lowercase letters
#### 1.0.3
- Show artist and title or source on button
#### 1.0.2
- Add double tap on button to play/pause the music
#### 1.0.1
- Fix volume slider color issue in dark theme
#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/klumpke" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>