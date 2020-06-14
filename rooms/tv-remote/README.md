# TV-remote including Dutch tv-Guide Add-on (rooms)
##### Created by Stephan

### Installation
- Install [Mini Media Player](https://github.com/kalkih/mini-media-player) from [HACS](https://hacs.xyz).
- Copy the files `page.yaml` and `button.yaml` to your `<config dir>/dwains-theme/addons/rooms/<your room>/tv-remote` directory.
- Configure your `rooms.yaml` file in `<config dir>/dwains-theme/configs` with config below.
- Restart Home Assistant.

### Usage
To use this add-on in your Dwains Theme, add the following to your `custom_resources.yaml` and `rooms.yaml` file:
```yaml
# Example custom_resources.yaml entry
- url: /hacsfiles/mini-media-player/mini-media-player-bundle.js
  type: module
```

```yaml
# Example rooms.yaml entry
  - name: Ziggo Medianext box
    addons:
      - name: Ziggo Medianext box
        path: 'dwains-theme/addons/rooms/<your room>/tv-remote/page.yaml'
        button_path: 'dwains-theme/addons/<your room>/tv-remote/button.yaml'
        data:
          entity: <your_tv_or_mediabox_entity>
  ```
### Setup mini mediaplayer
In page.yaml you can change the names/icons/entities to everything you want, like a tv or mediabox. For the volume options i have used my sonos device to control the volume.

### Setup Dutch Tv-Guide:
When you scroll down to the bottom of the guide page you can click at "instellingen". At the next screen you can select the channels which you want to see in the tv-guide.
  
### Changelog
#### 1.0.1
- Changed to tv-remote
#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/Stephan296" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>
