#!/bin/bash
#module load nco
#pip install pysonde
sounding_converter -i ../../Pysonde_cor/Data/level0/*.cor -o "../Data_radio_ORCESTRA/level1/RS_{campaign}_{platform}_L1_%Y%m%dT%H%M_{direction}.nc" -c config/main_cor.yaml
sounding_converter -i ../Data_radio_ORCESTRA/level1/*.nc -o "../Data_radio_ORCESTRA/level2/RS_{campaign}_{platform}_L2_%Y%m%dT%H%M_{direction}.nc" -c config/main_cor.yaml
ncrcat -h ../Data_radio_ORCESTRA/level2/RS_*L2_*.nc ../Data_Radio_ORCESTRA/concatenated/RS_ORCESTRA_soundings_level2_v1.0.0.nc
#rm ./data/level2/*_????????T????_*.nc
#zip -r data.zip data

