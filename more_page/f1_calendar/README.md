# F1 Calendar addon

### Prerequisite
- Make sure you have the [Google Calendar Event](https://www.home-assistant.io/integrations/calendar.google/) integration

### Installation
- Add the [F1 2021 Calendar by Racefans](https://www.racefans.net/contact/f1-fanatic-calendar/) to your Google Calendar
- If you don't have the [Google Calendar Event](https://www.home-assistant.io/integrations/calendar.google/) integration setup yet, make sure to do so. If you already have, please ignore this step.
- Restart home-assistant and open `google_calendars.yaml`, this file should be in the root folder (this is also where your configuration.yaml and secrets.yaml should be located)
- Find the calendar with device id `formula_1_calendar_by_racefans_net`, it should look like this;
```yaml
- cal_id: ekqk1nbdusr1baon1ic42oeeik@group.calendar.google.com
  entities:
  - device_id: formula_1_calendar_by_racefans_net
    ignore_availability: true
    name: Formula 1 calendar by RaceFans.net
    track: true
``` 
Replace it with the following;
```yaml
- cal_id: ekqk1nbdusr1baon1ic42oeeik@group.calendar.google.com
  entities:
  - device_id: formula_1_calendar_fp1
    ignore_availability: true
    name: Formula 1 - FP1
    track: true
    search: "FP1:"
  - device_id: formula_1_calendar_fp2
    ignore_availability: true
    name: Formula 1 - FP2
    track: true
    search: "FP2:"
  - device_id: formula_1_calendar_fp3
    ignore_availability: true
    name: Formula 1 - FP3
    track: true
    search: "FP3:"
  - device_id: formula_1_calendar_qualifying
    ignore_availability: true
    name: Formula 1 - Qualifying
    track: true
    search: "Qualifying:"
  - device_id: formula_1_calendar_race
    ignore_availability: true
    name: Formula 1 - Race
    track: true
    search: "Race:"
```
- Make sure the sensor configuration in `formula1.yaml` is loaded, either by copying it in the folder with your other sensors, or by copying and pasting the contents in your `sensors:` configuration (or any other way you have setup your custom sensors).
- Restart home assistant again, you will now find a formula 1 sensor in your entities overview.
- Copy the `formula1` folder in to the `dwains-dashboard/addons/more_page` directory.
- Open your `more_page.yaml` file in `dwains-dashboard/configs` and add the following;
 ```yaml
     - name: Formula 1
       icon: mdi:keyboard-f1
       path: 'dwains-dashboard/addons/more_page/formula1/page.yaml'
```
- Reload the theme configuration via Theme Settings