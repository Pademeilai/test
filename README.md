# test
远程连接测试
10/7
第一步： 打开git bash；

第二步：在git bash 中cd到我们本地项目所在的文件夹地址；

接下来是在我们的git bash中输入命令

1、git init     
初始化一个git本地仓库

2、git add .     
把项目文件添加到本地仓库   .的意思是把本地的所有文件加入到仓库

3、git commit -m 'this is first commit'   
提交的文件注释说明，最好说明一下，否则有时候会出错!

4、git remote add origin https://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@github.com/Pademeilai/test.git   
本地仓库关联GitHub上的仓库，url的书写格式是：https://令牌@github.com/账号/仓库名.git

5、git push -u origin master 
将代码提交到GitHub

6、输入账号密码搞定。



其他命令：


（1）查看远程库信息git remote -v

（2）删除远程库信息git remote rm origin


解决代理超时、报443错误、10054错误


（3）取消http代理git config --global --unset http.proxy


（4）取消https代理git config --global --unset https.proxy


git pull无法拉取代码是
（5）个人令牌的妙用

git退出编辑模式：:wq 回车

10/8
更新问题

参照文档：https://blog.csdn.net/u011332271/article/details/105320697


git 拉取远程分支到本地参照文档：https://blog.csdn.net/carfge/article/details/79691360
