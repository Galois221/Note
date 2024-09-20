= Linux 常用命令

+ pwd : 查看当前地址

+ history | grep cmake : 查看cmake的历史命令

+ 传文件到电脑:
 - ssh galoisgcl@210.45.79.91
 - scp -r /home/username/Documents/username/username/username username@ 
 - 直接用 winscp 传文件

+ 提交文件到github

  - git add .

  - git commit -m "提交信息"

  - git push

+ 删除已经跟踪的pdf文件：
    - git rm --cached filename.pdf

= 用 vscode 连接服务器

+ 在linux上查看hostname : galoisgcl@[通过 ip addr 查看]
+ 打开vscode，按ctrl + shift + p，输入ssh，选择Remote-SSH: Connect to Host，输入服务器地址，然后输入密码，就可以连接到服务器了。

= Linux 快捷键

+ ctrl + X : 退出

+ ctrl + C : 终止

= vscode 快捷键

+ ctrl + ~ : 打开终端

+ ctrl + shift + p : 打开命令面板（cmake configure时经常用到）

