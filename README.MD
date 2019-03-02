# 项目监控相关资料

## 文件列表
```
├── README.MD
├── tick                                # tick + grafana v5 & v6
│   ├── chronograf-1.7.5.x86_64.rpm
│   ├── grafana-5.4.2-1.x86_64.rpm
│   ├── grafana-6.0.0-1.x86_64.rpm
│   ├── influxdb-1.7.2.x86_64.rpm
│   ├── install_influx.sh               # 自动安装脚本
│   ├── kapacitor-1.5.2.x86_64.rpm
│   └── telegraf-1.9.1-1.x86_64.rpm
└── tomcat-jvm                          # tomcat  & jvm相关监控、安装文件
    ├── jolokia                         # JXM to HTTP
    │   ├── jolokia-jvm-1.6.0-agent.jar 
    │   ├── jolokia-spring-1.6.0.jar
    │   ├── jolokia-war-1.6.0.war               # 放在tomcat的webapps下即可采集
    │   └── jolokia-war-unsecured-1.6.0.war     # 放在tomcat的webapps下即可采集，无安全验证
    ├── probe
    │   └── probe.war                           # 放在tomcat的webapps下即可监控，功能比原生的manage强大很多
    └── tomcat_gz                       # Tomcat安装包
        ├── official-version                    # 官方原版  7~9
        │   ├── apache-tomcat-7.0.93.tar.gz
        │   ├── apache-tomcat-8.5.38.tar.gz
        │   └── apache-tomcat-9.0.16.tar.gz
        └── update-version                      # 修改版本，待完善

7 directories, 16 files
```

## 参考资料
* [probe使用](https://cloud.tencent.com/developer/article/1376409)
* [probe使用](https://cloud.tencent.com/developer/article/1339846)

