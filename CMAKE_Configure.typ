= 以下以SuiteSparse为例

== git + CMAKE
1. 到repo目录中创建一个SuiteSparse文件夹
2. git clone 
3. 电脑中的configue：cmake -S .(当前文件夹) -B build(创建一个build文件夹) —DCMAKE_BULIDE_TYPE=Relaese —DCMAKE_INSTALL_PREFIX=../sdk 更多参数看官方文档
4. 电脑中的build : 
  - cmake -build build
  - cmake -install build（把有用的东西下载到sdk） 


cmakelist修改三步走：

1设置sdk路径:

set(CMAKE_PREFIX_PATH "~/sdk") set(CMAKE_MODULE_PATH "~/sdk") 

2. 找到 CHOLMOD:

find_package(CHOLMOD REQUIRED) 

3. 链接 CHOLMOD:

target_link_libraries(gravomg PUBLIC SuiteSparse::CHOLMOD) 