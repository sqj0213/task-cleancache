rsyslog-center:
	rsyslog���Ļ��������ļ�,�˴���fifo-pipe�ķ�ʽд�뵽taskDaemon-python��
	mkfifo /tmp/taskDaemon_fifo_pipe
	�ŵ���/etc/rsyslog.d/webtask.gexing.com.conf
	service rsyslog restart
	�ͻ��ˣ�
	����rsyslog:
	if  $syslogfacility-text == 'local7' and $APP-NAME == 'webtask-sendcmd'  then @@172.16.2.14:10514
	if  $syslogfacility-text == 'local7' and $APP-NAME != 'webtask-sendcmd'  then ִ��ԭ���ġ�

taskDaemon-python:�ۿ������readme.txt
	���������(����ǰ��)
	
��������rsyslog����⴦�����,��Ҫ����rsyslog-center��(�������Ļ�)
webtask.gexing.com-php:
	����web����
	 ���ݿ�ű�:./dbsql/webtask.gexing.com.sql
		    ./webadmin.sql.utf8.webtask.gexing.com.sql
	 �����ļ�: ./webtask.gexing.com/inc/conf.ini 



��web�������ӷ�������IP�벿���ڿͻ��˵�taskDaemon-python���./taskDaemon/mylib/processCMD.py�ļ��е�
self.ip = os.popen( "/sbin/ifconfig \"eth1\"|/bin/grep \"inet addr\"|/bin/cut -d:  -f2|/bin/cut -d\  -f 1" ).read()
ȡ��ֵ������һ�µġ�

���Ϸ�����ȡipΪhosts�ļ������õġ�

 
GRANT SELECT, INSERT, UPDATE, DELETE ON `webtask`.* TO 'webtask'@'122.225.115.201' IDENTIFIED BY "webtask123qwe";
flush privileges;
