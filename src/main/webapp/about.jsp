<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<head>
    <meta charset="UTF-8"/>
    <title>Silver Blog | Free WordPress Theme</title>
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

        function GetQueryString(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]);
            return null;
        }

        $.ajax({
            type: 'get',
            url: '/tieziServlet',
            data: {id: GetQueryString("id")},
            contentType: 'application/json;charset=utf-8',
            success: function (data) {
                var jsonData = eval(data);
                $("#title").append(jsonData[0]['title'])
                $("#leftcontainer").append("<h2 class=\"mainheading\"> " + jsonData[0]['uid'] + "</h2>"
                    + "<article class=\"post\">" + jsonData[0]['tcontent'] + "</article>")
            },
            error: function () {
                alert("失败")
            }
        });
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
        <h1 id="title">
        </h1>
    </header>
    <div id="contents">
        <section id="main">
            <div id="leftcontainer">
                <div class="clear"></div>
            </div>
        </section>
        <section id="sidebar">
            <div id="sidebarwrap">
                <h2>Categories</h2>
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
                <h2>Latest Posts</h2>

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
            2018 &copy; Chenjiale的论坛
        </div>
    </div>
</footer>
</body>
</html>
