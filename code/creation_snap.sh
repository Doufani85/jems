#!/bin/bash

# Activer la création d'instantanés sur un répertoire
sudo -u hdfs hdfs dfsadmin -allowSnapshot /warehouse/tablespace/external/hive/

# Créer des instantanés
sudo -u hdfs hdfs dfs -createSnapshot /warehouse/tablespace/external/hive/ snapshot_bdd_projet_`/bin/date +%Y-%m-%d--%H-%M`

# Désactiver la création d'instantanés sur un répertoire
sudo -u hdfs hdfs dfsadmin -disallowSnapshot /warehouse/tablespace/external/hive/
