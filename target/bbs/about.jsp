<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<head>
<meta charset="UTF-8" />
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
    function GetQueryString(name)
    {
        var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if(r!=null)return unescape(r[2]); return null;
    }
	$.ajax({
		type:'get',
		url:'/tieziServlet',
		data:{id:GetQueryString("id")},
        contentType: 'application/json;charset=utf-8',
		success:function (msg) {
			console.log(msg);
        },
		error:function () {
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
<h1>
silver<span>blog</span>
</h1>
</header>
<div id="contents">
<section id="main">
<div id="leftcontainer">
<h2 class="mainheading"> Page Template</h2>
<article class="post">
<p>
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas a diam eget velit fringilla consequat. Duis nec justo urna, at tempus augue. Curabitur tristique, mi vitae ultrices lacinia, ante odio auctor odio, quis bibendum nulla augue quis diam. Aenean commodo justo ac leo cursus porttitor.
</p>
<p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac erat ac nunc elementum hendrerit at ut nibh. Phasellus et magna eu quam egestas consequat at ac eros. Pellentesque sit amet nisl quis tellus vestibulum ultricies at non turpis. Integer cursus est sed justo pretium molestie. </p>
<p>Integer sit amet velit erat, vitae mollis libero. Vivamus ac interdum tellus. Integer arcu velit, dapibus ultrices aliquam nec, viverra ut turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean at libero turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris non lacus lorem. Aenean est sem, dapibus sed ultrices vitae, vulputate non sapien. Nullam vulputate erat et quam imperdiet accumsan vitae elementum ante. Vestibulum scelerisque libero ligula. In in nibh lacus, sit amet dignissim purus. Nulla scelerisque, nibh quis tincidunt convallis, velit nibh tristique massa, sit amet ornare est orci vitae nisi. </p>
<p>Nunc molestie ante quis ante gravida vitae volutpat ligula egestas. Nam a metus risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. </p>


<p>
Vestibulum elit risus, congue interdum aliquet et, tempor sit amet est. Phasellus rhoncus dictum pharetra. In dictum scelerisque lobortis. In hac habitasse platea dictumst. Nam quis suscipit lectus. Praesent tortor risus, tempor sed euismod non, aliquet eget sem. Suspendisse mi nunc, mattis fringilla mollis quis, laoreet a sapien. Ut suscipit, mauris non mattis pharetra, lacus mi tempor lacus, sed tincidunt nisi mauris eu ipsum. </p>
<p>Pellentesque vel erat ac elit ultrices dignissim a ut velit. Donec laoreet sem a turpis viverra ut aliquet odio interdum. Nunc consequat rhoncus vehicula. Cras iaculis enim in neque hendrerit eget laoreet mi adipiscing. </p>
</article>
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
