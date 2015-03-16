# Kernel driver not installed (rc=-1908)

### 解决方案

###### 首先，安装内核的头文件和构建工具

```bash
sudo apt-get install build-essential module-assistant
sudo m-a prepare
```

###### 接着，编译先前在错误报告中所提到的那个virtualbox内核驱动程序命令

`sudo /etc/init.d/vboxdrv setup`

##### 编译应该会运行正常，并在一段时间后输出与以下所示相类似的结果

```bash
Stopping VirtualBox kernel modules ...done.
Recompiling VirtualBox kernel modules ...done.
Starting VirtualBox kernel modules ...done.
```
