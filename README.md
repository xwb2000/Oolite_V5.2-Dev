MagicBox AC750 双频路由 QCA9531+9887   
配置：16M 闪存 / 128M内存 
 
## Tips
* Default Gateway: 10.168.1.1
* Default Password: password
* Default SSID：OpenWrt

靠近 Micro 电源口的是 WAN 口，另一个是 LAN 口 
如果折腾出问题了，可以通过 uboot 重刷固件来恢复 
uboot 进入方法如下 ：网线直接连接到电脑，电脑 IP 设置为 192.168.1.2
掩码255.255.255.0，gateway网关和dns必须留空，按住路由器上的 Reset 键不放的同时插上电源线
绿灯亮起的第 1 次不算，额外再闪烁 4 次后，马上松开 Reset 键
这时绿灯会快闪几下，之后进入呼吸灯状态，即表明路由器已进入 U-Boot Failsafe Web 安全模式
电脑使用 FireFox 或 Chrome 浏览器打开 http://192.168.1.1/index.html 上传固件后即可恢复
固件重新刷好后，4g驱动都装好的，但是4g的界面需要自己新建一下，方法如下：
打开网络 - 接口
点击 添加新接口
名称 wwan（必须小写）
协议 dhcp 客户端
勾选接口 eth2（如没有eth2则是usb0）
提交后到新的页面，打开第四个选项卡，防火墙设置
选择红色的那个区域和 wan 在一起的那个，保存应用  
设置好以后断电，确保插着卡，重新通电启动 