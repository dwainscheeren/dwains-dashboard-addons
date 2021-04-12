## Synology NAS
##### Created by Eelco Bode)


### Installation
- Add the DSM integration into HAS and configure it for you Synology
- Copy the files `page.yaml` and `button.yaml` to your `<config dir>/dwains-dashboard/addons/rooms/<your room>/nas` directory.
- Configure your `rooms.yaml` file in `<config dir>/dwains-dashboard/configs` with config below.
- Restart Home Assistant.

### Usage
To use this add-on in your Dwains Dashboard, add the following to your `rooms.yaml` file:
```yaml
# Example rooms.yaml entry
  - name: Living
    addons:
      - name: Synology
        icon: mdi:nas
        path: 'dwains-dashboard/addons/rooms/Living/nas/page.yaml'
        button_path: 'dwains-dashboard/addons/rooms/Living/nas/button.yaml'
        data:
          disks:
            - status: sensor.synology_drive_1_status
            - status: sensor.synology_drive_2_status
```

In case you have more then 2 disks in your NAS, just add more in the data part.
The page.yaml will pick them up and place the status on the card
