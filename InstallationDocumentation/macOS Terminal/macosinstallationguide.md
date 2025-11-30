# OpenHalo Installation Guide for macOS

A complete guide to install and configure OpenHalo on macOS - a PostgreSQL fork with MySQL wire protocol compatibility.

---

## Table of Contents
- [What is OpenHalo?](#what-is-openhalo)
- [Prerequisites](#prerequisites)
- [Pre-Installation Checklist](#pre-installation-checklist)
- [Downloading and Compiling OpenHalo](#downloading-and-compiling-openhalo)
- [Environment Variables Setup](#environment-variables-setup)
- [Database Initialization](#database-initialization)
- [PostgreSQL Configuration](#postgresql-configuration)
- [Starting OpenHalo](#starting-openhalo)
- [MySQL Extension Activation](#mysql-extension-activation)
- [Testing and Verification](#testing-and-verification)
- [Daily Usage](#daily-usage)
- [Creating Additional Users](#creating-additional-users)
- [Backup and Restore](#backup-and-restore)
- [Updating OpenHalo](#updating-openhalo)
- [Troubleshooting (Edge Cases)](#troubleshooting-edge-cases)
- [Key Differences from Linux Installation](#key-differences-from-linux-installation)

---

## What is OpenHalo?
OpenHalo is a PostgreSQL fork that provides **MySQL wire protocol compatibility**. This means:

* ✅ Connect using MySQL clients and drivers
* ✅ Run MySQL SQL queries on PostgreSQL data
* ✅ Migrate MySQL applications with minimal code changes
* ✅ Access the same data via both PostgreSQL (5432) and MySQL (3306) protocols
* ✅ Based on PostgreSQL 14.10 with MySQL 5.7.32-log compatibility

**Perfect for:** Migrating MySQL applications to PostgreSQL without rewriting code!

---

## Prerequisites

### Install Homebrew
If you don't have Homebrew installed:
```bash
/bin/bash -c "$(curl -fsSL [https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh](https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh))"
```

### Install Xcode Command Line Tools
```bash
xcode-select --install
```
Click "Install" when the dialog appears.

### Install Required Dependencies
```bash
brew install cmake autoconf ossp-uuid icu4c readline git postgresql@17
```
> **Important:** Do NOT install `mysql-client` yet. We'll handle MySQL client installation in the next section.

---

## Pre-Installation Checklist
Before we begin, let's prevent common issues by checking your system.

### Step 1: Check for Port Conflicts
Check if ports 5432 or 3306 are already in use:
```bash
lsof -nP -iTCP:5432 | grep LISTEN
lsof -nP -iTCP:3306 | grep LISTEN
```

If you see any output:
**Stop conflicting services now:**
```bash
# Stop Homebrew PostgreSQL
brew services stop postgresql
brew services stop postgresql@17

# Stop Homebrew MySQL
brew services stop mysql
brew services stop mysql@8.0

# Stop Docker containers
docker ps  # Check what's running
docker stop <container_name>  # Stop any PostgreSQL or MySQL containers
```

**Verify ports are free:**
```bash
lsof -nP -iTCP:5432 | grep LISTEN  # Should return nothing
lsof -nP -iTCP:3306 | grep LISTEN  # Should return nothing
```

### Step 2: Install Compatible MySQL Client
OpenHalo requires MySQL client 8.0 (not 9.x) for authentication compatibility.
Check if you have MySQL installed:
```bash
mysql --version 2>/dev/null || echo "MySQL not installed"
```

If you see version 9.x or want to install MySQL client:
```bash
# Remove newer versions if present
brew unlink mysql 2>/dev/null

# Install MySQL 8.0
brew install mysql@8.0

# Link it
brew link --force mysql@8.0
```

**Verify:**
```bash
mysql --version
```
You should see `mysql Ver 8.0.x`.

---

## Downloading and Compiling OpenHalo

### Clone the Repository
```bash
git clone [https://github.com/HaloTech-Co-Ltd/openHalo.git](https://github.com/HaloTech-Co-Ltd/openHalo.git)
cd openHalo
```

### Configure for macOS
**Why these settings?**
* We use `--with-uuid=e2fs` instead of `--with-uuid=ossp` because macOS has built-in UUID types that conflict with ossp-uuid headers
* `icu4c` is "keg-only" in Homebrew, so we must explicitly set paths

**For Apple Silicon (M1/M2/M3):**
```bash
./configure --prefix=$HOME/openhalo/1.0 --enable-debug --with-uuid=e2fs --with-icu \
  CFLAGS="-O2 -I/opt/homebrew/opt/icu4c/include" \
  LDFLAGS="-L/opt/homebrew/opt/icu4c/lib" \
  PKG_CONFIG_PATH="/opt/homebrew/opt/icu4c/lib/pkgconfig"
```

**For Intel Macs:**
```bash
./configure --prefix=$HOME/openhalo/1.0 --enable-debug --with-uuid=e2fs --with-icu \
  CFLAGS="-O2 -I/usr/local/opt/icu4c/include" \
  LDFLAGS="-L/usr/local/opt/icu4c/lib" \
  PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"
```
> **Expected output:** You should see "configure: creating ./config.status" at the end. If you see errors, check that all dependencies are installed.

### Compile and Install
```bash
make && make install
```
Compile additional modules:
```bash
cd contrib
make && make install
cd ..
```

---

## Environment Variables Setup
Edit your `~/.zshrc` file (macOS uses Zsh by default):
```bash
nano ~/.zshrc
```

Scroll to the bottom and add these lines:
```bash
# OpenHalo environment
export HALO_HOME=$HOME/openhalo/1.0
export PGDATA=$HOME/ohdata
export PATH=$HALO_HOME/bin:$PATH
export DYLD_LIBRARY_PATH=$HALO_HOME/lib:$DYLD_LIBRARY_PATH
export PGHOST=/tmp

# For Apple Silicon - adjust for Intel Macs if needed
export PKG_CONFIG_PATH="/opt/homebrew/opt/icu4c/lib/pkgconfig:$PKG_CONFIG_PATH"

# Convenience alias
alias pg_ctl='$HALO_HOME/bin/pg_ctl -D $HOME/ohdata'
```

**Your file should now look like this:**
```bash

export PATH="/usr/local/opt/openjdk@25/bin:$PATH"
export PATH="/usr/local/opt/openjdk@25/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home -v 25)
export PATH="$JAVA_HOME/bin:$PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/icu4c/lib/pkgconfig:$PKG_CONFIG_PATH"

# OpenHalo environment
export HALO_HOME=$HOME/openhalo/1.0
export PGDATA=$HOME/ohdata
export PATH=$HALO_HOME/bin:$PATH
export DYLD_LIBRARY_PATH=$HALO_HOME/lib:$DYLD_LIBRARY_PATH
export PGHOST=/tmp

alias pg_ctl='$HALO_HOME/bin/pg_ctl -D $HOME/ohdata'
```



# Convenience alias
alias pg_ctl='$HALO_HOME/bin/pg_ctl -D $HOME/ohdata'
```

**For Intel Macs:** Change the PKG_CONFIG_PATH line to:
```bash
export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig:$PKG_CONFIG_PATH"
```

Save with `Ctrl+O`, press `Enter`, then exit with `Ctrl+X`.
Apply the changes:
```bash
source ~/.zshrc
```

**Verify:**
```bash
echo $HALO_HOME
which pg_ctl
```
Both commands should show valid paths.

---

## Database Initialization

### Create Data Directory
```bash
mkdir -p $HOME/ohdata
chmod 700 $HOME/ohdata
```

### Initialize the Database
```bash
pg_ctl init -D $PGDATA
```
> **Expected output:** "Success. You can now start the database server using..."

---

## PostgreSQL Configuration

### Edit postgresql.conf
```bash
nano $PGDATA/postgresql.conf
```
Use `Ctrl+W` to search for settings:

1. Search for `listen_addresses` and change to:
   ```text
   listen_addresses = '*'
   ```
2. Search for `port` and ensure it says:
   ```text
   port = 5432
   ```
3. Scroll to the bottom (to the "CUSTOMIZED OPTIONS" section) and add:
   ```text
   # MySQL compatibility settings
   database_compat_mode = 'mysql'
   mysql.listener_on = true
   mysql.port = 3306
   unix_socket_directories = '/tmp'
   ```
Save (`Ctrl+O`, `Enter`) and exit (`Ctrl+X`).

### Edit pg_hba.conf
```bash
nano $PGDATA/pg_hba.conf
```
Scroll to the ipv4 section and and add this line:
```text
host    all             all             0.0.0.0/0               scram-sha-256
```
> **Note:** The file already has `host all all 127.0.0.1/32 trust` for local connections. Add that line under it.

Save (`Ctrl+O`, `Enter`) and exit (`Ctrl+X`).

---

## Starting OpenHalo

### Final Port Check
One last verification before starting:
```bash
lsof -nP -iTCP:5432 | grep LISTEN
lsof -nP -iTCP:3306 | grep LISTEN
```
Both should return nothing. If you see anything, stop those services now.

### Start the Server
```bash
pg_ctl start
```
> **Expected output:** "server started"

### Verify It's Running
```bash
pg_ctl status
```
Check both ports are listening:
```bash
lsof -nP -iTCP:5432 | grep LISTEN  # Should show postgres
lsof -nP -iTCP:3306 | grep LISTEN  # Should show postgres
```

---

## MySQL Extension Activation

### Check Available Databases
```bash
psql -p 5432 -l
```
You should see a database called `halo0root` (this is the default database).

### Connect and Create Extension
```bash
psql -p 5432 halo0root
```
Create the MySQL extension:
```sql
CREATE EXTENSION aux_mysql CASCADE;
```
> **Expected output:** "CREATE EXTENSION"

### Create a MySQL-Compatible User
```sql
SET password_encryption = 'mysql_native_password';
CREATE USER test PASSWORD 'test';
GRANT ALL PRIVILEGES ON DATABASE halo0root TO test;
```

Verify the user was created correctly:
```sql
SELECT usename, passwd FROM pg_shadow WHERE usename='test';
```
You should see `mysql_native_password:` at the start of the passwd field.

Exit:
```sql
\q
```

---

## Testing and Verification

### Test MySQL Connection
```bash
mysql -h 127.0.0.1 -P 3306 -utest -ptest
```
> **Expected:** You should connect without errors.

Once connected, test some queries:
```sql
SHOW DATABASES;
SELECT VERSION();
SELECT 1;
\q
```

### Test PostgreSQL Connection
```bash
psql -p 5432 halo0root -c "SELECT version();"
```
> **Expected:** Should display OpenHalo version information.

---

## Daily Usage

| Action | Command |
| :--- | :--- |
| Start OpenHalo | `pg_ctl start` |
| Stop OpenHalo | `pg_ctl stop` |
| Check Status | `pg_ctl status` |
| Connect via PostgreSQL | `psql -p 5432 halo0root` |
| Connect via MySQL | `mysql -h 127.0.0.1 -P 3306 -utest -ptest` |

---

## Creating Additional Users

### Create a New User and Database
```bash
psql -p 5432 halo0root
```

```sql
SET password_encryption = 'mysql_native_password';
CREATE USER newuser PASSWORD 'secure_password';
CREATE DATABASE myproject OWNER newuser;
GRANT ALL PRIVILEGES ON DATABASE myproject TO newuser;
\q
```

### Test the New User
**PostgreSQL:**
```bash
psql -p 5432 -U newuser myproject
```
**MySQL:**
```bash
mysql -h 127.0.0.1 -P 3306 -unewuser -psecure_password
```

---

## Backup and Restore

### PostgreSQL Backup
```bash
mkdir -p $HOME/backup
pg_dump -U $(whoami) -F c -b -v -f $HOME/backup/openhalo_backup.pgsql halo0root
```

### PostgreSQL Restore
```bash
pg_restore -U $(whoami) -d halo0root $HOME/backup/openhalo_backup.pgsql
```

### MySQL Backup
```bash
mysqldump -P 3306 -h 127.0.0.1 -utest -p your_database > $HOME/backup/mysql_backup.sql
```

### MySQL Restore
```bash
mysql -P 3306 -h 127.0.0.1 -utest -p your_database < $HOME/backup/mysql_backup.sql
```

---

## Updating OpenHalo

Stop the server first:
```bash
pg_ctl stop
```

Pull latest changes and recompile:
**For Apple Silicon:**
```bash
cd ~/openHalo
git pull
./configure --prefix=$HOME/openhalo/1.0 --enable-debug --with-uuid=e2fs --with-icu \
  CFLAGS="-O2 -I/opt/homebrew/opt/icu4c/include" \
  LDFLAGS="-L/opt/homebrew/opt/icu4c/lib" \
  PKG_CONFIG_PATH="/opt/homebrew/opt/icu4c/lib/pkgconfig"
make && make install
cd contrib
make && make install
```

**For Intel Macs:** Use `/usr/local/opt/icu4c` instead of `/opt/homebrew/opt/icu4c`.

Restart:
```bash
pg_ctl start
```

---

## Troubleshooting (Edge Cases)

### Server Won't Start After Reboot
**Issue:** After restarting your Mac, OpenHalo won't start.
**Solution:** Reload your environment variables:
```bash
source ~/.zshrc
pg_ctl start
```

### Can't Find pg_ctl Command
**Issue:** Terminal says "command not found: pg_ctl"
**Solution:** Your shell didn't load .zshrc:
```bash
source ~/.zshrc
echo $PATH  # Verify HALO_HOME/bin is in the path
```

### Permission Denied on Data Directory
**Issue:** Error about permissions on $PGDATA
**Solution:** Fix ownership:
```bash
chmod 700 $HOME/ohdata
ls -ld $HOME/ohdata  # Verify permissions are drwx------
```

### MySQL Shows Wrong Version
**Issue:** `SELECT VERSION()` shows incorrect version in MySQL client
**Solution:** This is expected - OpenHalo reports MySQL 5.7.32-log for compatibility, even though it's actually PostgreSQL underneath.

### "Database halo0root does not exist"
**Issue:** After initialization, can't find halo0root database
**Solution:** Check what databases exist:
```bash
psql -p 5432 -l
```
Connect to whichever database was created (usually the one matching your username), then create halo0root:
```sql
CREATE DATABASE halo0root;
```

---

## Key Differences from Linux Installation

| Feature | Linux | macOS |
| :--- | :--- | :--- |
| Package manager | `apt-get` | `brew` |
| User management | `useradd`/`groupadd` | Not needed (run as your user) |
| Service management | `systemd` | Not needed |
| Shell configuration | `~/.bashrc` | `~/.zshrc` |
| Library path variable | `LD_LIBRARY_PATH` | `DYLD_LIBRARY_PATH` |
| Development tools | `build-essential` | `xcode-select` |
| UUID library | `--with-uuid=ossp` | `--with-uuid=e2fs` |
| Socket directory | `/var/run/openhalo` | `/tmp` |

---

## Support
* **OpenHalo GitHub:** https://github.com/HaloTech-Co-Ltd/openHalo
* **PostgreSQL Documentation:** https://www.postgresql.org/docs/
* **Report issues:** halo-bugs@halodbtech.com

**Installation complete!** 🚀 You now have OpenHalo running with dual PostgreSQL and MySQL protocol support on macOS.
