# Documentation: Configuration of an OpenHalo container

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Configuration of an OpenHalo container](#configuration-of-an-OpenHalo-container)
3. [Server Configuration](#server-configuration)
4. [Environment Variables Setup](#environment-variables-setup)
   - [Option 1: Using ~/.bashrc](#option-1-using-bashrc)
   - [Option 2: Using direnv](#option-2-using-direnv)
5. [Security and Permissions](#security-and-permissions)
6. [Database Initialization](#database-initialization)
7. [OpenHalo/PostgreSQL Configuration](#openhalopostgresql-configuration)
8. [MySQL Extension Activation](#mysql-extension-activation)
9. [Architecture Overview](#architecture-overview)
10. [Final Verification](#final-verification)
11. [Troubleshooting Tips](#troubleshooting-tips)
12. [Logging](#logging)
13. [Stopping and Restarting OpenHalo](#stopping-and-restarting-openhalo)
14. [Creating Additional Users](#creating-additional-users)
15. [Loading a PostgreSQL Database into OpenHalo](#loading-a-postgresql-database-into-openhalo)
16. [Loading a MySQL Database into OpenHalo](#loading-a-mysql-database-into-openhalo)
17. [Backup and Restore](#backup-and-restore)
18. [Updating OpenHalo](#updating-openhalo)

## Prerequisites

You need to install Docker on your environment.
You can follow the instruction on this link from the official website of Docker : https://docs.docker.com/get-started/get-docker/
The installation does not take time and is compatible with every environment.

## Configuration of an Ubuntu container

You need to install an ubuntu container, and then create it :

```bash
docker pull ubuntu:rolling
docker run -it --name ContainerName ubuntu bash
```

You now have a created a container. To restart that container :

```bash
docker start -ai ContainerName 
```

## Configuration of OpenHalo

Install Git
```bash
apt install git
```
If you get this response : 
```bash
E: Unable to locate package git
```
Type this 2 commands : 
```bash
apt-get update && apt-get upgrade -y
apt-get install git build-essential gcc g++ make cmake autoconf uuid-dev libicu-dev zlib1g-dev libreadline-dev -y
apt install pkg-config libicu-dev
apt install bison
apt install flex
apt install nano
apt install postgresql
```
You also need to have the MySQL client installed. Here’s how to install it:
```bash
apt install mysql-client-core-8.0
```

You may also need the PostgreSQL client to test connections independently of pg_ctl:
```bash
apt install postgresql-client
```

Clone the OpenHalo repository from GitHub:
```bash
git clone https://github.com/HaloTech-Co-Ltd/openHalo.git
```

The files are cloned to your computer. Now, go into the repository directory and prepare the compilation: 
```bash
cd openHalo
./configure --prefix=/home/halo/openhalo/1.0 --enable-debug --with-icu CFLAGS=-O2
```
> Explanation: This checks your system for necessary libraries and creates Makefiles. Errors will be logged in config.log.

Compile and install OpenHalo:
```bash
make && make install
```

To compile additional modules, navigate to the contrib directory:
```bash
cd contrib
make && make install
```


## Server Configuration

Create the halo group with ID 1000:
```bash
groupadd -g 1000 halo
```
> Tip: If ID 1000 is already used, pick another number (for example, 1500).

Add the halo user to this group:
```bash
useradd -u 1000 -g halo halo
```

Check that the user and group were created:
```bash
id halo
```

Expected output:
```bash
uid=1000(halo) gid=1000(halo) groups=1000(halo)
```
> Note: OpenHalo should run as halo to avoid permission issues. For extra security, you can lock halo from SSH login.

Switch to the halo user:
```bash
su - halo
```
If prompted for a password, create one first with:
```bash
passwd halo
```

## Environment Variables Setup

Create a directory for sockets:
```bash 
mkdir /var/run/openhalo
chown halo:halo /var/run/openhalo
```

Set the environment variables so that the shell knows where OpenHalo binaries and data are located, and where to find libraries.

$\Rightarrow$ Option 1: Using ~/.bashrc

Edit the file:
```bash
nano ~/.bashrc
```

Add the following lines:
```bash
export HALO_HOME=/home/halo/openhalo/1.0 # OpenHalo binaries and libraries
export PGDATA=/home/halo/ohdata # PostgreSQL data directory
export PATH=$HALO_HOME/bin:$PATH # Add OpenHalo binaries to PATH
export LD_LIBRARY_PATH=$HALO_HOME/lib:$LD_LIBRARY_PATH # Add OpenHalo libs
export PGHOST=/var/run/openhalo # PostgreSQL socket location
alias pg_ctl='/home/halo/openhalo/1.0/bin/pg_ctl -D /home/halo/ohdata'
```

Save and exit: Ctrl+O, Enter, Ctrl+X.

Apply the changes:
```bash
. ~/.bashrc
```

$\Rightarrow$ Option 2: Using direnv (recommended if you want automatic loading in the directory)

Install direnv if not already installed:
```bash
apt install direnv
```

Activate direnv in your shell:
```bash
echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
source ~/.bashrc
```

Create a .envrc file in the OpenHalo directory:
```bash
cd /home/halo/openhalo/1.0
nano .envrc
```

Add the same environment variable lines as above:
```bash
export HALO_HOME=/home/halo/openhalo/1.0 # OpenHalo binaries and libraries
export PGDATA=/home/halo/ohdata # PostgreSQL data directory
export PATH=$HALO_HOME/bin:$PATH # Add OpenHalo binaries to PATH
export LD_LIBRARY_PATH=$HALO_HOME/lib:$LD_LIBRARY_PATH # Add OpenHalo libs
export PGHOST=/var/run/openhalo # PostgreSQL socket location
alias pg_ctl='/home/halo/openhalo/1.0/bin/pg_ctl -D /home/halo/ohdata'
```

Allow direnv to load the file:
```bash
direnv allow
```

> Note for beginners: With direnv, every time you enter this directory, variables and aliases are applied automatically. They are removed when you leave the directory.

$\Rightarrow$ Check if the environment variables are set correctly:
```bash
echo $PATH
echo $PGDATA
which pg_ctl
```

> Note: If you encounter "permission denied" errors, try prepending sudo to commands that interact with system directories.

## Security and Permissions

Never run OpenHalo as root except for installation or system commands.

Ensure proper ownership and permissions on data directories:

```bash
chown -R halo:halo /home/halo/ohdata
chmod 700 /home/halo/ohdata
```

## Database Initialization

Initialize the database:
```bash
pg_ctl init -D $PGDATA
```
> Explanation: Creates necessary system tables and directories for PostgreSQL.

Check status, start, stop, or restart the server:
```bash
pg_ctl status
pg_ctl start
pg_ctl restart
pg_ctl stop
```
> Warning: Existing data in $PGDATA will be overwritten.

## OpenHalo/PostgreSQL Configuration

Edit the postgresql.conf file:
```bash
nano $PGDATA/postgresql.conf
```

Add or modify the following lines:
```bash
listen_addresses = '*' # Listen on all IP addresses
port = 5432 # Default PostgreSQL port
database_compat_mode = 'mysql' # Enable MySQL compatibility mode
mysql.listener_on = true # Enable MySQL listener
mysql.port = 3306 # MySQL-compatible port
```

Save and exit: Ctrl+O, Enter, Ctrl+X.

Edit pg_hba.conf: 
```bash
nano $PGDATA/pg_hba.conf
```

Add or modify the following lines:
```bash
# IPv4 local connections:
host    all             all             127.0.0.1/32            trust # Local IPv4 connections without password (useful for internal scripts)
host    all             all             0.0.0.0/0               scram-sha-256 # IPv4 connections from any IP with SCRAM-SHA-256 authentication
```

Save and exit: Ctrl+O, Enter, Ctrl+X.

Restart the server (or start it if not yet running):
```bash
pg_ctl restart
```

Check status:
```bash
pg_ctl status
```
> Tip: Ensure firewall allows ports 5432 and 3306.

## MySQL Extension Activation

Connect to PostgreSQL:
```bash
psql -p 5432
```

Create the MySQL extension:
```bash
CREATE EXTENSION aux_mysql CASCADE;
```

Create a MySQL-compatible user:
```bash
SET password_encryption = 'scram-sha-256';  # Recommended for MySQL 8.0+ for stronger security. For older clients, use 'mysql_native_password'.
CREATE USER test PASSWORD 'test';
SELECT * FROM pg_shadow WHERE usename='test';
```
> Security note: This is an example. Change the password in production for better security.

Exit PostgreSQL:
```bash
\q
```

Test MySQL connection:
```bash
mysql -P 3306 -h 127.0.0.1
```

Exit MySQL:
```bash
\q
```

Here are some tests to understand how the link between MySQL and PostgreSQL works:

![Example](exampleOpenHalo.png)

## Architecture Overview

Here’s a simplified diagram showing how OpenHalo interacts with PostgreSQL and MySQL:
```pgsql
                 +----------------+
                 |    OpenHalo    |
                 +----------------+
                    |          |
                    |          |
                    v          v
           +----------------+  +----------------+
           |  PostgreSQL    |  |     MySQL      |
           | Port: 5432     |  | Port: 3306     |
           | Stores data    |  | MySQL Extension|
           +----------------+  +----------------+
```
**Explanation:**
* OpenHalo acts as a middleware and can interact with both databases.
* PostgreSQL (5432) holds the main data.
* MySQL (3306) is used through OpenHalo’s MySQL extension for compatibility and MySQL queries.

## Final Verification

Check if PostgreSQL listens on 5432 and MySQL on 3306:
```bash
exit
netstat -tulpn
```

## Troubleshooting Tips

- `permission denied` errors → make sure you are using the `halo` user and check folder permissions.
- Port already in use → check with:
```bash
ss -tlnp | grep 5432
ss -tlnp | grep 3306
```
- MySQL extension not found → make sure `aux_mysql` is compiled and installed correctly.
- Logs can help diagnose issues (see below).

## Logging

OpenHalo/PostgreSQL logs can help debug issues. By default, logs are stored in `$PGDATA`.

To monitor logs in real time:
```bash
tail -f $PGDATA/logfile
```

You can also configure logging in `postgresql.conf`:
```bash
logging_collector = on
log_directory = 'pg_log'
log_filename = 'openhalo-%Y-%m-%d.log'
```

## Stopping and Restarting OpenHalo

Stop PostgreSQL/OpenHalo at the end of a session:
```bash
pg_ctl stop
```

Verify the server is no longer listening:
```bash
pg_ctl status
ss -tlnp | grep 5432
ss -tlnp | grep 3306
```

For the next session, switch to the halo user:
```bash
su - halo
```

Reload environment variables if using ~/.bashrc:
```bash
. ~/.bashrc
```
> If using direnv, just navigate to the OpenHalo directory.

Start the server and check status:
```bash
pg_ctl start
pg_ctl status
```

Access PostgreSQL:
```bash
psql -p 5432
```

Access MySQL:
```bash
mysql -P 3306 -h 127.0.0.1 
```

## Creating Additional Users

Create additional MySQL-compatible users in PostgreSQL:
```bash
psql -p 5432
SET password_encryption = 'caching_sha2_password';
CREATE USER username PASSWORD 'your_password';  # Modify as needed
CREATE DATABASE projectdb OWNER username;   # Modify as needed
\q
mysql -P 3306 -h 127.0.0.1 -uusername -p    # Modify as username
```
> Tip: Assign privileges using GRANT ALL PRIVILEGES ON DATABASE projectdb TO username;

## Loading a PostgreSQL Database into OpenHalo

```bash
psql -p 5432 -U halo -d postgres -f path/to/backup.sql
```

## Loading a MySQL Database into OpenHalo

```bash
mysql -P 3306 -h 127.0.0.1 -utest -p < path/to/backup.sql   # Password is the one used for the MySQL user (test in this example)
```
> Tip for beginners: If you get permission errors, try using sudo for MySQL commands.

## Backup and Restore

It is recommended to backup your databases before making major changes:

* PostgreSQL backup
```bash
pg_dump -U halo -F c -b -v -f /home/halo/backup/openhalo_backup.pgsql postgres
```

* MySQL backup
```bash
mysqldump -P 3306 -h 127.0.0.1 -utest -p your_database > /home/halo/backup/mysql_backup.sql
```
To restore, simply use:
* PostgreSQL restore
```bash
pg_restore -U halo -d postgres /home/halo/backup/openhalo_backup.pgsql
```

* MySQL restore
```bash
mysql -P 3306 -h 127.0.0.1 -utest -p your_database < /home/halo/backup/mysql_backup.sql
```

## Updating OpenHalo

Stop server before updating:
```bash
pg_ctl stop
```

To update OpenHalo to the latest version from GitHub:
```bash
cd /home/halo/openhalo
git pull
./configure --prefix=/home/halo/openhalo/1.0 --enable-debug --with-uuid=ossp --with-icu CFLAGS=-O2
make && make install
```
