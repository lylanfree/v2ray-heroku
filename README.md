# 一键部署 v2ray 到 heroku  
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)
- - -
- - -
1.部署时配置 v2ray core 的版本、Vmess协议的UUID（"alterId"默认为10）和连接缓存。

2.服务端部署后，点 open app ，能正常显示网页，地址补上path后访问显示 Bad Request，表示部署成功。

3.更新 v2ray 版本，修改 app settings-->Config Vars-->VER，程序自动重启，可通过view Logs确认。

4.客户端配置参考 client_config.json, 建议使用 cn_sniproxy+websocket+tls 传输协议。

# 参考 
https://github.com/v2ray/v2ray-core

https://github.com/onplus/v2hero/

https://github.com/wangyi2005/v2ray-heroku

https://github.com/1715173329/v2ray-heroku

https://github.com/zusrt/v2ray-heroku