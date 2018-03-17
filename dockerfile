
FROM microsoft/mssql-server-linux:latest


RUN mkdir /var/opt/sqlserver


ENV SA_PASSWORD=Testing11@@
ENV ACCEPT_EULA=Y


ENV MSSQL_PID=Developer


ENV MSSQL_BACKUP_DIR="/var/opt/sqlserver"
ENV MSSQL_DATA_DIR="/var/opt/sqlserver"
ENV MSSQL_LOG_DIR="/var/opt/sqlserver"


ENV MSSQL_TCP_PORT=15666