# System Health Monitor

Bash script that automates the reporting for system health audits on a Linux environment.

---

## What It Does

- Checks disk usage for the project directory and reports the top 10 largest files
- Outputs the last 20 lines of the syslog file as a log snapshot
- Automatically moves files that are older than 30 days to a backup folder
- Generates a Report file, with timestamps, on every run of the script

---

## How To Run

**Clone the repo and navigate into the folder:**
```bash
git clone https://github.com/brianhernandez04/Linux-System-Health-Monitor-.git
cd Linux-System-Health-Monitor-
```

**Make the script executable:**
```bash
chmod +x health_monitor.sh
```

**Run it:**
```bash
./health_monitor.sh
```

**View the generated report:**
```bash
cat Critical_Report.txt
```

---

## Environment

- OS: Ubuntu (WSL2 on Windows 11)
- Shell: Bash

---

<h2>🤳 Connect with me on LinkedIn:</h2>

[<img align="left" alt="BrianHernandez | LinkedIn" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/linkedin.svg" />][linkedin]

[linkedin]: https://www.linkedin.com/in/brian-hernandez04/
