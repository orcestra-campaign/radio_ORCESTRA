# radio_ORCESTRA
This repository contains references to the radiosoundings and their post-processing steps for he ORCESTRA campaign. It uses the package "Pysonde" that was developed by Hauke Schulz, and adapted by Marius Rixen and Marius Winkler to include the processing of COR files.

This repository aims at processing all the data from this campaign in a consistent manner, and combine the radiosondes launches across different platforms (BOW-TIE, PERCUSION and MAESTRO) into a single dataset.

By running reproduce.sh the level 1 and level 2 data can be reproduced. Output units, variable names, and global attributes can be setup with the yaml files in the config folder.

## Dataset

The dataset contains three processing levels:

|Processing level | Description | Usage examples |
| --- | --- | --- |
| 0 | mwx sounding files as delivered by Vaisalas sounding software, and cor soundings from Meteomodem| Checking specific setup of sounding station, Archival of data |
| 1 | Level 0 data converted to netCDF4 | Analysis of single soundings for the most accurate measurements possible |
| 2 | Level 1 data interpolated to a vertical grid | Analysis of entire campaign or comparison with other observations or simulations |
