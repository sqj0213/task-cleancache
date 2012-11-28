rsyslog-center:
	rsyslog中心机的配置文件,此处以fifo-pipe的方式写入到taskDaemon-python里
	mkfifo /tmp/taskDaemon_fifo_pipe
	放到：/etc/rsyslog.d/webtask.gexing.com.conf
	service rsyslog restart
	客户端：
	配置rsyslog:
	if  $syslogfacility-text == 'local7' and $APP-NAME == 'webtask-sendcmd'  then @@172.16.2.14:10514
	if  $syslogfacility-text == 'local7' and $APP-NAME != 'webtask-sendcmd'  then 执行原来的。

taskDaemon-python:观看里面的readme.txt
	任务处理程序(部署到前端)
	
任务处理结果rsyslog的入库处理程序,需要部署到rsyslog-center上(部署到中心机)
webtask.gexing.com-php:
	任务web管理
	 数据库脚本:./dbsql/webtask.gexing.com.sql
		    ./webadmin.sql.utf8.webtask.gexing.com.sql
	 配置文件: ./webtask.gexing.com/inc/conf.ini 



在web界面的添加服务器的IP与部署在客户端的taskDaemon-python里的./taskDaemon/mylib/processCMD.py文件中的
self.ip = os.popen( "/sbin/ifconfig \"eth1\"|/bin/grep \"inet addr\"|/bin/cut -d:  -f2|/bin/cut -d\  -f 1" ).read()
取的值必须是一致的。

线上服务器取ip为hosts文件中配置的。

 
GRANT SELECT, INSERT, UPDATE, DELETE ON `webtask`.* TO 'webtask'@'122.225.115.201' IDENTIFIED BY "webtask123qwe";
flush privileges;
