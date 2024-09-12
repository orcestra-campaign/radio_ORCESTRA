#/bin/bash
#pip install pysonde
sounding_converter -i ./data/level0/*.mwx -o "./data/level1/RS_{campaign}_{platform}_L1_%Y%m%dT%H%M_{direction}.nc" -c config/main.yaml
sounding_converter -i ./data/level0/*.cor -o "./data/level1/RS_{campaign}_{platform}_L1_%Y%m%dT%H%M_{direction}.nc" -c config/main.yaml
sounding_converter -i ./data/level1/*.nc -o "./data/level2/RS_{campaign}_{platform}_L2_%Y%m%dT%H%M_{direction}.nc" -c config/main.yaml
ncrcat -h ./data/level2/ORCESTRA__*L2-*.nc ./data/level2/RS_{campaign}_level2_v1.0.0.nc
#rm ./data/level2/*_????????T????_*.nc
#zip -r data.zip data


