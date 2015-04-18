<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/4/17
  Time: 23:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Off Canvas Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
    <link href="../res/css/offcanvas.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <style type="text/css"></style>
</head>

<body>
<nav class="navbar navbar-fixed-top navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </div>
        <!-- /.nav-collapse -->
    </div>
    <!-- /.container -->
</nav>
<!-- /.navbar -->

<div class="container">

    <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-9">
            <p class="pull-right visible-xs">
                <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
            </p>
            <div class="jumbotron">
                <h1>Api Test!</h1>

                <p>This is an example to show the potential of an offcanvas layout pattern in Bootstrap. Try some
                    responsive-range viewport sizes to see it in action.</p>
            </div>
            <!--/row-->
            <div id="login">
                <div class="bs-callout bs-callout-warning">
                    <h4>用户登陆</h4>
                </div>
                <blockquote>
                    <p>login</p>
                </blockquote>
                <table class="table table-hover table-bordered">
                    <tr>
                        <th>#</th>
                        <th>类型</th>
                        <th>含义</th>
                    </tr>
                    <tr class="active">
                        <td>参数 1</td>
                        <td>String</td>
                        <td>account 用户账号</td>
                    </tr>
                    <tr>
                        <td>返回值</td>
                        <td>Boolean</td>
                        <td>return true 代表已登陆</td>
                    </tr>
                </table>

                <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" aria-expanded="false"
                   aria-controls="collapseExample">
                    json
                </a>

                <div class="collapse" id="collapseExample">
                    <div class="well">
                        json
                    </div>
                </div>
            </div>
        </div>
        <!--/.col-xs-12.col-sm-9-->

        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
            <div class="list-group">
                <a href="#login" class="list-group-item">login</a>
                <a href="#" class="list-group-item">Link</a>
            </div>
        </div>
        <!--/.sidebar-offcanvas-->
    </div>
    <!--/row-->

    <hr>

    <footer>
        <p>© Company 2014</p>
    </footer>

</div>
<!--/.container-->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../res/plugin/ie10-viewport-bug-workaround.js"></script>

<script src="../res/plugin/offcanvas.js"></script>


</body>
</html>