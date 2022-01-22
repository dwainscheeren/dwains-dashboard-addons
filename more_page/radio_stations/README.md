# Radio Stations Add-on (more_page)
##### Created by FehTeh

### Installation
- Copy the file `page.yaml`  to your `<config dir>/dwains-dashboard/addons/more_page/radio_stations` directory.
- Configure your `more_page.yaml` file in `<config dir>/dwains-dashboard/configs` with config below.
- Reload theme configuration at Theme settings.


### Usage
First get your radios URL and logos. You can get it from:

**TuneIn:**<br>
![TuneIn](https://github.com/fehteh/dwains-dashboard-addons/blob/master/more_page/radio_stations/.github/screenshots/tunein_radio_link.png "TuneIn")

To use this add-on in your Dwains Dashboard, add the following to your `more_page.yaml` file:

```yaml
# Example more_page.yaml entry
more_page:
   addons:
     - name: Radios
       icon: mdi:radio
       main_menu: 'true'
       path: 'dwains-dashboard/addons/more_page/radio_stations/page.yaml'
       data:
         entity: media_player.google_home_mini # Replace with your media player entity
         radios:
          - radio: "Radio Comercial"
            description: "A Melhor Música, Sempre!" # Optional
            url: "http://mcrscast1.mcr.iol.pt/comercial.mp3"
            logo: "https://cdn-radiotime-logos.tunein.com/s16084d.png" # Optional
          - radio: "M80 Radio"
            url: "http://mcrscast.mcr.iol.pt/m80.mp3"
            logo: "https://cdn-profiles.tunein.com/s81784/images/logod.jpg" # Optional
          - radio: "RFM"
            url: "https://20863.live.streamtheworld.com/RFM_SC"
            logo: "https://cdn-radiotime-logos.tunein.com/s18720d.png" # Optional
          - radio: "Orbital FM"
            url: "https://centova.radio.com.pt/proxy/401?mp=/stream"
            logo: "https://cdn-profiles.tunein.com/s15270/images/logod.png?t=158276" # Optional
          - radio: "Mega Hits"
            url: "http://19553.live.streamtheworld.com/MEGA_HITS_SC"
            logo: "https://cdn-profiles.tunein.com/s6745/images/logod.jpg?t=1" # Optional
          - radio: "Renascença"
            url: "http://23603.live.streamtheworld.com/RADIO_RENASCENCA.mp3"
```

### How to get 

### Screenshots
**Light theme:**<br>
![light](https://github.com/fehteh/dwains-dashboard-addons/blob/master/more_page/radio_stations/.github/screenshots/light.png "Light")

![light_mobile](https://github.com/fehteh/dwains-dashboard-addons/blob/master/more_page/radio_stations/.github/screenshots/light_mobile.png "Light Mobile")

**Dark theme:**<br>
![dark](https://github.com/fehteh/dwains-dashboard-addons/blob/master/more_page/radio_stations/.github/screenshots/dark.png "Dark")

![dark_mobile](https://github.com/fehteh/dwains-dashboard-addons/blob/master/more_page/radio_stations/.github/screenshots/dark_mobile.png "Dark Mobile")

### Changelog
#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/fehteh" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>