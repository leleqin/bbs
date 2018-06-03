<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<head>
    <meta charset="UTF-8"/>
    <title>发帖</title>
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
        function fatieSubmit() {
            var title = $('#author').val();
            var tcontent = $('#comment').val();
            $.ajax({
                type:'post',
                url:'/tieziServlet?method=fatie',
                data:{title:title,tcontent:tcontent},
                success:function () {
                    alert("发帖成功！")
                    location.href = "/index.jsp";
                },
                error:function () {
                  alert("失败！")
                }
            })
        }

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
            发帖
        </h1>
    </header>
    <div id="contents">
        <section id="main">
            <div id="leftcontainer">
                <h2>发帖人</h2>

                <article class="post">

                    <form class="form">
                        <p class="textfield">
                            <label for="author">
                                <small>标题（你要发个什么帖子呢？）</small>
                            </label>
                        <div class="clear"></div>
                            <input name="author" id="author" value="" size="22" tabindex="1" type="text">
                        </p>
                        <p>
                            <small><strong>内容</strong> 你想写些什么呢？
                            </small>
                        </p>
                        <p class="text-area">
                            <textarea name="comment" id="comment" cols="50" rows="10" tabindex="4"></textarea>
                        </p>
                        <p>
                            <input type="button" id="submit" value="提交" class="submit" onclick="fatieSubmit()">
                            <input name="comment_post_ID" value="1" type="hidden">
                        </p>
                        <div class="clear"></div>
                    </form>

                    <!--Important-->
                    <div class="clear"></div>
                </article>
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
            2010 &copy; Your Copyright Information Goes Here
        </div>
        <div class="credit">
            <a href="http://www.cssmoban.com/" title="网站模板" target="_blank">网站模板</a> by CSSHeaven.org
        </div>
    </div>
</footer>
</body>
</html>
