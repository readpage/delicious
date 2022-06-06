# 操作指南

​	[前台地址:https://food.undraw.cn](https://food.undraw.cn)

​	[后台地址:https://f-admin.undraw.cn](https://f-admin.undraw.cn)

账户:

&emsp;&emsp;普通用户: 用户名: user, 密码: user

&emsp;&emsp;管理员: 用户名: root, 密码: root



1. mysql创建数据库delicious,并导入数据脚本,在sql目录下delicious.sql文件.

2. 导入静态资源图片，[**static.zip 下载**](https://gitee.com/undraw/delicious/releases/v3.2.2), 放在启动后端项目根目录地址

3. 运行认证服务器token-authorization

4. 运行资源服务器provider

5. 分别打开命令行终端运行vue文件下后台项目admin和前台项目foods

   ```npm
   // 下载vue相应框架组件(注意在admin目录下运行命令)
   npm install --legacy-peer-deps
   // 启动vue项目
   npm run dev
   ```

6. 登录

- 账户:root, 密码: root


## 开发交流

QQ群:[undraw(682265529)](https://jq.qq.com/?_wv=1027&k=NsgARkfw)

