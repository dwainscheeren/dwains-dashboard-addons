# Sonos Add-on (rooms)


### Installation
- Install [Mini Media Player](https://github.com/kalkih/mini-media-player) and [slider-entity-row](https://github.com/thomasloven/lovelace-slider-entity-row) from [HACS](https://hacs.xyz).
- Configure your `custom_resources.yaml` file in `<config dir>/dwains-theme/resources` with the config below.
- Copy the files `page.yaml` and `button.yaml` to your `<config dir>/dwains-theme/addons/rooms/<your room>/sonos` directory.
- Configure your `rooms.yaml` file in `<config dir>/dwains-theme/configs` with config below.
- Restart Home Assistant.

*NOTE: You need to add radio stations / playlists in your "My SONOS" app if you want to use the buttons. The ID of the button is identical to the name in the "My SONOS" app. You can find more information about this at the [Mini Media Player repository](https://github.com/kalkih/mini-media-player#card-with-media-shortcuts).*


### Usage
To use this add-on in your Dwains Theme, add the following to your `custom_resources.yaml` and `rooms.yaml` file:
```yaml
# Example custom_resources.yaml entry
- url: /hacsfiles/mini-media-player/mini-media-player-bundle.js
  type: module
- url: /hacsfiles/lovelace-slider-entity-row/slider-entity-row.js
  type: module
```

```yaml
# Example rooms.yaml entry
  - name: Living Room
    addons:
      - name: Sonos
        icon: fal:speaker
        path: 'dwains-theme/addons/rooms/livingroom/sonos/page.yaml'
        button_path: 'dwains-theme/addons/rooms/livingroom/sonos/button.yaml'
        data:
          entity: media_player.sonos_livingroom
```

### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-theme-addons/blob/master/rooms/sonos/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-theme-addons/blob/master/rooms/sonos/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.0.0
- First release