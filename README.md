# MySQL Backup Automation (Bash Script)
Simple Bash script to back up MySQL databases and manage old backups with automation support

## Overview
This repository contains a Bash script that automates daily backups of a MySQL database.  
It:
- Creates a backup file with today's date.  
- Saves it in a specific backup directory.  
- Deletes backups older than 7 days.  

## Requirements
- Linux (Ubuntu / Debian / etc.)  
- MySQL server installed  
- MySQL user with appropriate privileges (including PROCESS)  

## Setup & Usage

```bash
# Clone the repository
git clone https://github.com/Mohamed-2023139/bash_task.git
cd bash_task

# Give execute permissions to the script
chmod +x bash.sh

# Run the backup script
./bash.sh
