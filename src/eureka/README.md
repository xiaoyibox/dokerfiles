#项目说明

## 此项目仅仅是搭建Eureka的编译环境，并从github上下载Eureka项目进行编译。

### 第一次运行docker后，会自动进行第一次编译，如果需要获取新的代码重新编译
~~~
# in /home/work/apps/eureka
cd /home/work/apps/eureka
./gradlew clean build
~~~
编译完成后，在下面的目录下找到编译后的war包
~~~
/home/work/apps/eureka/eureka-server/build/libs/
~~~
可用通过如下命令进行远程发送：
~~~
scp filename root@ip:/path/path0
~~~