# Coronavirus Add-on (more_page)
##### Created by Jeroen Klompen


### Installation
- Configure the [Coronavirus](https://www.home-assistant.io/integrations/coronavirus/) integration via the Home Assistant frontend.
- Copy the file `page.yaml`  to your `<config dir>/dwains-theme/addons/more_page/coronavirus` directory.
- Configure your `more_page.yaml` file in `<config dir>/dwains-theme/configs` with config below.
- Reload theme configuration at Theme settings.


### Usage
To use this add-on in your Dwains Theme, add the following to your `more_page.yaml` file:

```yaml
# Example more_page.yaml entry
more_page:
    addons:
      - name: Coronavirus
        icon: fas:disease
        path: 'dwains-theme/addons/more_page/coronavirus/page.yaml'
```

### Screenshots
**Light theme:**<br>
![light](https://github.com/Klumpke/dwains-theme-addons/blob/master/more_page/coronavirus/.github/screenshots/light.png "Light")

**Dark theme:**<br>
![dark](https://github.com/Klumpke/dwains-theme-addons/blob/master/more_page/coronavirus/.github/screenshots/dark.png "Dark")


### Changelog
#### 1.0.1
- Add line_color to graphs (Thanks @mase)
#### 1.0.0
- First release

---

If you like my work please feel free to buy me a coffee

<a href="https://www.buymeacoffee.com/klumpke" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/white_img.png" alt="Buy Me A Coffee"></a>

<a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=T6QQWUABDP65G&source=url"><img src="https://www.paypalobjects.com/en_US/NL/i/btn/btn_donateCC_LG.gif" alt="Donate with PayPal"></a>