
#!/bin/bash
#=========================== SYSTEM HEALTH MONITOR ============================
#====== PURPOSE: Check Disk Usage, Log File Activity, Clean Up Old Files ======

MONITOR_DIR=~/projects/health-monitor
BACKUP_DIR=~/projects/health-monitor/old_files_backup
REPORT_FILE=~/projects/health-monitor/Critical_Report.txt
LOG_SOURCE="/var/log/syslog"
DAYS_OLD=30

echo "==============================" > $REPORT_FILE
echo " System Health Monitor " >> $REPORT_FILE
echo " Generated $(date) " >> $REPORT_FILE
echo "==============================" >> $REPORT_FILE
echo "" >> $REPORT_FILE

echo " TOP 10 LARGEST FILES " >> $REPORT_FILE
du -ah $MONITOR_DIR | sort -rh | head -10 >> $REPORT_FILE
echo "" >> $REPORT_FILE

echo " LAST 20 LINES OF SYSLOG " >> $REPORT_FILE
tail -20 $LOG_SOURCE >> $REPORT_FILE
echo "" >> $REPORT_FILE

echo " FILES MOVED TO BACKUP " >> $REPORT_FILE
find $MONITOR_DIR -maxdepth 1 -type f -mtime +$DAYS_OLD \
	! -name "health_monitor.sh" \
	! -name "Critical_Report.txt" \
	-exec mv {} $BACKUP_DIR \; \
	-print >> $REPORT_FILE
echo "" >> $REPORT_FILE

echo "Script Complete"
echo "Run script by running: cat $REPORT_FILE" 
