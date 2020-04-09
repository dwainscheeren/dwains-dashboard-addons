# Plant Add-on (rooms)


### Installation
- Add the following repository to your HACS settings: https://github.com/thomasloven/lovelace-flower-card
- Install [Lovelace Flower Card](https://github.com/thomasloven/lovelace-flower-card) and [card-tools](https://github.com/thomasloven/lovelace-card-tools) from [HACS](https://hacs.xyz).
- Follow the [Lovelace Flower Card instructions](https://github.com/thomasloven/lovelace-flower-card#instructions) to create the `data.js` file and get flower images.
- Configure your `custom_resources.yaml` file in `<config dir>/dwains-theme/resources` with the config below.
- Copy the files `page.yaml` and `button.yaml` to your `<config dir>/dwains-theme/addons/rooms/<your room>/plant` directory.
- Configure your `rooms.yaml` file in `<config dir>/dwains-theme/configs` with config below.
- Restart Home Assistant.


### Usage
To use this add-on in your Dwains Theme, add the following to your `custom_resources.yaml` and `rooms.yaml` file:
```yaml
# Example custom_resources.yaml entry
- url: /hacsfiles/lovelace-flower-card/flower-card.js
  type: module
- url: /hacsfiles/lovelace-card-tools/card-tools.js
  type: module
```

```yaml
# Example rooms.yaml entry
  - name: Living Room
    addons:
      - name: Olive Tree
        icon: fas:leaf
        path: 'dwains-theme/addons/rooms/livingroom/plant/page.yaml'
        button_path: 'dwains-theme/addons/rooms/livingroom/plant/button.yaml'
        data:
          entity: plant.olive_tree
```

### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-theme-addons/blob/master/rooms/plant/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-theme-addons/blob/master/rooms/plant/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.0.0
- First release