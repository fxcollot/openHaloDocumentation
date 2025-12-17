## Prerequsite
Download the Dockerfile, docker-entrypoint.sh and compose.yaml on a root folder called 'PCE' (for example) in which you'll have download the ComplianceTestingTool folder.

## Changes to the python script to adapt to the Dockerfile 
```python
def main():
    # --- Configuration ---
    openhalo_config = {'host': '127.0.0.1', 'port': 3308, 'user': 'halo', 'password': 'halopass', 'database': 'mydb'}
    mysql_config = {'host': '127.0.0.1', 'port': 3306, 'user': 'halo', 'password': 'halopass', 'database': 'openhalo'}
```
## Create db in Mysql 
Follow the previous step we did in Openhalo but in Mysql

## Write in Openhalo container 
``` sh
python3 /home/halo/openhalo_test_suite_docker.py
```
