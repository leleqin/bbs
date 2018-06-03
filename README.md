**bbs**

**1.创建一个maven项目**
* 加载包
  * javax.servlet-api
  * json-lib
  * mysql-connector-java
  * jsp-api
  * commons-beanutils
* 创建资源包和Java包
  * 资源包：resource
  * Java包：java

**2.开始项目**
* 在Java包下分层
  * dao（数据层）
  * entity（实体类层）
  * service（业务逻辑层）
  * servlet（控制层）
  * untils（工具类层）
* 在webapp下建试图
  * js------存放js文件
  * css----存放css文件
  * web---存放页面
  * fonts--存放字体样式
  
**3.具体实现**
* untils
  * 封装数据库连接：DbUtlis.java
  * 封装查询修改语句：DaoUtlis.java
* entity
  * 用户实体类：Users.java
  * 帖子实体类：Tiezi.java
* servlet
  * 登录和注册的servlet：LoginServlet.java
  * 帖子展示的servlet：TieziServlet.java
* service
  * 用户登录和用户注册的接口：LoginService.java
  * 帖子查询展示的接口：TieziService.java
  * 实现接口：impl
    * 实现用户登录和注册接口：LoginServiceImpl.java
    * 实现帖子查询展示接口：TieziServiceImpl.java
* dao
  * 用户登录和注册查询和插入接口：LoginDao.java
  * 帖子查询接口：TieziDao.java
  * impl
    * 实现用户登录和注册接口：LoginDaoImpl.java
    * 实现帖子查询接口：TieziDaoImpl.java
  

