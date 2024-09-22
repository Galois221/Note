= 以下以SuiteSparse为例

== git + CMAKE
1. 到repo目录中创建一个SuiteSparse文件夹
2. git clone 
3. 电脑中的configue：cmake -S .(当前文件夹) -B build(创建一个build文件夹) (—DCMAKE_BULIDE_TYPE=RelWithDebInfo) —DCMAKE_INSTALL_PREFIX=../dep 更多参数看官方文档()
4. 电脑中的build : 
  - cmake -build build
  - cmake -install build（把有用的东西下载到dep） 


cmakelist修改三步走：

1设置dev路径:

set(CMAKE_PREFIX_PATH "~/dev") set(CMAKE_MODULE_PATH "~/dev") 
CMAKE_PREFIX_PATH 为 cmake install 到的目录

2. 找到 CHOLMOD:

find_package(CHOLMOD REQUIRED) 

相当于 find 一个 .cmake

3. 链接 CHOLMOD:

target_link_libraries(gravomg PUBLIC SuiteSparse::CHOLMOD) 

---
对于没有 .cmake 的库

1 设置 CMAKE_PREFIX_PATH 指向 dev 目录
set(CMAKE_PREFIX_PATH "/path/to/dev")

2 设置 include 和 lib 路径，确保编译器可以找到头文件和库
target_include_directories(\${CMAKE_PREFIX_PATH}/include)
target_link_libraries(\${CMAKE_PREFIX_PATH}/lib)

如果库路径在 shared 目录中，也可以添加
target_link_directories(\${CMAKE_PREFIX_PATH}/shared)

3.链接库
target_link_libraries(gravomg PUBLIC \${CHOLMOD_LIB})

= 总结：何时需要 .cmake 文件？
需要 .cmake 文件：当库使用 CMake 进行构建并安装时，通常会提供 .cmake 文件。这些文件简化了库的使用，允许用户通过 find_package() 自动找到库并配置。
不需要 .cmake 文件：一些库没有 .cmake 文件，你需要手动指定库和头文件的路径。这种情况下，通常使用 include_directories() 和 target_link_libraries() 来设置库的头文件和链接路径。