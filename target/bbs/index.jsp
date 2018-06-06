<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<head>
    <meta charset="UTF-8"/>
    <title>论坛首页</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!--[if IE 6]>
    <script src="js/belatedPNG.js"></script>
    <script>
        DD_belatedPNG.fix('*');
    </script>
    <![endif]-->
    <script src="js/jquery-1.4.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/loopedslider.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script type="text/javascript" charset="utf-8">
        function ChangeDateFormat(d) {
            //将时间戳转为int类型，构造Date类型
            var date = new Date(parseInt(d.time, 10));
            //月份得+1，且只有个位数时在前面+0
            var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
            //日期为个位数时在前面+0
            var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
            //getFullYear得到4位数的年份 ，返回一串字符串
            return date.getFullYear() + "-" + month + "-" + currentDate;
        }
        $(function () {
            $.ajax({
                type: 'post',
                url: '/tieziServlet?method=tieziShow',
                contentType: 'application/json;charset=utf-8',
                success: function (data) {
                    var jsonData = eval(data);
                        for (var i = 0;i < data.length;i++){
                            $("#tiezi").append("<header><h3><a href='about.jsp?id="+jsonData[i]['tid']+"'>"+jsonData[i]['title']+"</a></h3>"
                                +"<p class=\"postinfo\">"+jsonData[i]['uid']+"<time>&nbsp;&nbsp;&nbsp;&nbsp;"
                                +ChangeDateFormat(jsonData[i]['tdate'])+"</time></p></header>"
                                +"<p>"+jsonData[i]['tcontent'].substr(0,100)+"……"+"</p>"
                                +"<footer><span class=\"author\">浏览人数&nbsp;&nbsp;&nbsp;"+jsonData[i]['tnum1']+"</span>"
                                +"<span>回帖人数&nbsp;&nbsp;&nbsp;"+jsonData[i]['tnum2']+"</span></footer><div class=\"clear\"></div>"
                            )
                        }
                }
            })
        })

    </script>
</head>

<body>
<div id="bodywrap">
    <section id="pagetop">
        <p id="siteinfo">
            <a href="login.jsp">登录</a> | <a href="register.jsp">注册</a>
        </p>
    </section>
    <header id="pageheader">
        <h1>
            Welcome
        </h1>
    </header>
    <div id="contents">
        <section id="main">
            <section id="featured">
                <h2 class="ftheading">Featured</h2>
                <div class="ftwrap">
                    <div class="ftimg">

                        <img src="images/img1.jpg" width="204" height="128" alt="img1"></div>
                    <div class="fttxt">
                        <h3>Featured Content</h3>
                        <p>Lorema psum dolor sit amet,
                            consectetur adipiscing elit.
                            Integer egestas purus bibendum
                            neque aliquam ut posuere elit semper. Fusce sagittis pharetra eros, sit amet consequat sem
                            mollis vitae. </p>
                    </div>
                </div>
            </section>
            <div id="leftcontainer">
                <h2 class="mainheading">
                    Latest from the blog
                </h2>

                <article class="post" id="tiezi">
                    <br>
                    <div class="clear"></div>
                </article>

                <div class="wp-pagenavi">
                    <span class="current">1</span><a href="/page/2/" title="2">2</a><a href="/page/3/" title="3">3</a><a
                        href="/page/4/" title="4">4</a><a href="/page/5/" title="5">5</a><a href="/page/6/"
                                                                                            title="6">6</a><a
                        href="/page/7/" title="7">7</a><a href="/page/8/" title="8">8</a><a href="/page/2/">Next
                    &raquo;</a><span class="extend">...</span><a href="/page/27/" title="Last &raquo;">Last &raquo;</a>
                </div>
                <div class="clear"></div>
            </div>
        </section>
        <section id="sidebar">
            <div id="sidebarwrap">
                <h2>About SilverBlog</h2>
                <p>SilverBlog is a free CSS Template released under GNU GPL license. You are free to use / modify it in
                    any way you want without any restrictions. A link back to this website will always be appreciated.
                    <a href="#">Read More</a></p>

                <h2>热点</h2>
                <ul>
                    <li><a href="#">Web Design</a>(4)</li>
                    <li><a href="#">Graphics Design</a>(8)</li>
                    <li><a href="#">Computers</a>(12)</li>
                    <li><a href="#">Typography</a>(3)</li>
                    <li><a href="#">Photogrphy</a>(4)</li>
                    <li><a href="#">Mathematics</a>(5)</li>
                    <li><a href="#">General News</a>(24)</li>
                    <li><a href="#">Music and Entertainment</a>(1)</li>
                </ul>

                <h2>资讯</h2>
                <ul>

                    <li><a href="#">Web Design</a></li>
                    <li><a href="#">Graphics Design</a></li>
                    <li><a href="#">Computers</a></li>
                    <li><a href="#">Typography</a></li>
                    <li><a href="#">Photogrphy</a></li>
                    <li><a href="#">Mathematics</a></li>
                    <li><a href="#">General News</a></li>
                    <li><a href="#">Music and Entertainment</a></li>
                </ul>
            </div>
        </section>


        <div class="clear"></div>
    </div>

</div>
<footer id="pagefooter">
    <div id="footerwrap">
        <div class="copyright">
            2018 &copy; chenjiale的论坛
        </div>
    </div>
</footer>
</body>
</html>
