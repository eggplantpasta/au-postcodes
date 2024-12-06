# AU Postcodes

Code to work with Australian postcode data sourced from the the official government Geocoded National Address File (G-NAF) [source](https://data.gov.au/dataset/ds-dga-19432f89-dc3a-4ef3-b943-5326ef1dbecc/details).

* Bash script to import the data to SQLite `gnaf-import.sh`


## Loading G_NAF source data

### Prerequisites

* A bash shell command line to run the load scripts.
* An installed SQLite runtime

### Prepare

* Clone this repository
* Fetch the G_NAF zipped data file and extract it into the `gnaf-data/` directory.
* Edit the `gnaf-import.sh` script and change the variables in the 2 lines below as appropriate.

```sh
GNAF_PATH="gnaf-data/g-naf_nov24_allstates_gda2020_psv_1017/G-NAF"
GNAF_DATA_PATH="gnaf-data/g-naf_nov24_allstates_gda2020_psv_1017/G-NAF/G-NAF NOVEMBER 2024"
```

### Run

* Run the edited script `./gnaf-import.sh`. It will take about 30 minutes to complete.

## References

* GeocodeEarth, [Exploring G-NAF with SQLite](References https://geocode.earth/blog/2021/exploring-gnaf-with-sqlite/)
* Geoscape Geocoded National Address File [G-NAF data](https://data.gov.au/data/dataset/geocoded-national-address-file-g-naf) from data.gov.au
* G-NAF [technical documentation](https://geoscape.com.au/documentation/) (including data dictionary)