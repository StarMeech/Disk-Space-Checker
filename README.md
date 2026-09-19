# Disk Space Checker

A simple bash script I wrote for my first time that checks root filesystem
disk usage and warns if it exceeds a configurable threshold. Again I wrote
this while still trying to learn EndevourOS.

## What it does
- Checks disk usage of the root partition ('/')
- Compares it against a threshold (default 80%)
- Prints a warning if usage is too high
- Returns exit code 1 on warning, 0 if OK - so it can be used by monitoring
  tools or cron jobs

## Usage 
```bash
./disk_check.sh
```

## Example output
```
Disk usage OK: 12% usaed (threshold: 80%)
```
