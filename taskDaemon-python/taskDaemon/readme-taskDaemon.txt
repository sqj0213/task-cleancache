taskDaemon.py程序承担两角色
    1.任务接收与处理：扫描队列中心的任务数据，并执行任务，把执行结果以指定的协议写入本地rsyslog:部署到任务结点
	放置在/usr/home/pro/scripts/taskDaemon/
        python taskDaemon.py ./conf/taskDaemon.ini processCMD
    2.任务结果入库:rsyslog道输askDaemon读取管道并入库 tlxf
        python taskDaemon.py ./conf/taskDaemon.ini importToDB jsonData
	服务器端需要操作：
	安装python模块：
	yum install MySQL-python.x86_64
配置文件：
    conf/taskDaemon.ini


