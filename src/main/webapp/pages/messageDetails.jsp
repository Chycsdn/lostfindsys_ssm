<%--
  Created by IntelliJ IDEA.
  User: 12252
  Date: 2020/6/11
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>失物招领详情页面</title>
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="${pageContext.request.contextPath}https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style2.css">
    <style>
        article {
            padding: 5px;
        }
        article, aside, details, figcaption, figure, dialog, footer, header, hgroup, menu, nav, section {
            display: block;
        }
        #main{
            display:inline-block;
            width:600px;
            height:auto;
            background-color:whitesmoke;
            position: center;
        }
        #leave{
            display: inline-block;
            width:600px;
            position:center;
        }

    </style>


</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/findSomeMess.do">失物招领网</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">登录<span class="sr-only">(current)</span></a></li>
                <li><a href="#">注册</a></li>
            </ul>
            <form class="navbar-form navbar-right" action="${pageContext.request.contextPath}/searchMess.do" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search" name="keyword">
                    <input type="hidden" name="page" value="1">
                    <input type="hidden" name="size" value="5">
                </div>
                <button type="submit" class="btn btn-default">提交</button>
            </form>
        </div>
    </div>
</nav>
<div id="Body">
    <div class="body">
        <div class="left">
            <div id="banners">
                <div class="text-center">
                    <article>
                        <c:if test="${message.class_message == 0}"><h2>失物信息</h2></c:if>
                        <c:if test="${message.class_message == 1}"><h2>招领信息</h2></c:if>
                        发布时间:${message.createdate}<span lay-separator=""></span>
                        <fieldset>
                            <div id='main'>
                                <p><div class="col-md-12">
                                    <div class="text-left">
                                        <form class="form-horizontal">
                                            <div class="form-group">
                                                <table class="table" style="table-layout: fixed;word-break:break-all">
                                                    <div class="col-md-10 col-sm-10 col-xs-10 text-left" style="margin-bottom: 20px;">
                                                        <legend>信息详情</legend>
                                                    </div>
                                                    <div class="col-md-10 col-sm-10 col-xs-10 text-left" style="margin-bottom: 20px;">
                                                        <h5> 物品描述:${message.description}</h5>
                                                    </div>
                                                    <div class="col-md-10 col-sm-10 col-xs-10 text-left" style="margin-bottom: 20px;">
                                                        <h5> 拾取地点:${message.address}</h5>
                                                    </div>

                                                    <div class="col-md-10 col-sm-10 col-xs-10 text-left" style="margin-bottom: 20px;">
                                                        <h5> 拾取人姓名:${message.username}</h5>
                                                    </div>
                                                    <div class="col-md-10 col-sm-10 col-xs-10 text-left" style="margin-bottom: 20px;">
                                                        <h5> 拾取人联系方式:${user.mobile}</h5>
                                                    </div>
                                                    <c:if test="${message.class_message == 0}">
                                                        <div class="col-md-10 col-sm-10 col-xs-10 text-left" style="margin-bottom: 20px;">
                                                            <h5> 酬金:${message.reward}</h5>
                                                        </div>
                                                    </c:if>
                                                    <div class="col-md-10 col-sm-10 col-xs-10 text-left" style="margin-bottom: 20px;">
                                                        <h5> 物品图片:</h5>
                                                    </div>
                                                </table>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                </p>
                            </div>

                        </fieldset>
                    </article>



                    <div id="leave">
                        <table class="table" style="margin-top: 30px;">
                            <div class="text-left"><h4>留言列表</h4><h6>登录后即可留言</h6></div>
                            <colgroup>
                                <col width="5">
                                <col width="300">
                                <col width="10">
                            </colgroup>
                            <tbody>
                            <c:if test="${allLeaveMessList.size() == 0}">
                                <tr>
                                    <td>空  :</td>
                                    <td>空</td>
                                    <td>空</td>
                                </tr>
                            </c:if>
                            <c:forEach items="${allLeaveMessList}" var="leaveMess">

                                <tr>
                                    <td>${leaveMess.username}  :</td>
                                    <td>${leaveMess.leavemessage}</td>
                                    <td>${leaveMess.leavetime}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
<%--                        <form role="form">--%>
<%--                            <div class="form-group text-left">--%>
<%--                                <footer><cite title="Source Title">请发布留言</cite></footer>--%>
<%--                                <textarea class="form-control" rows="3"></textarea>--%>
<%--                                <button class="btn btn-default" type="submit" href="#">发布</button>--%>
<%--                            </div>--%>
<%--                        </form>--%>



                        <!-- Comment END -->
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- Footer -->
<footer class="navbar text-center bg-black">
    <div class="center-block " style="margin-top: 12px">
        <p>© CTGU 2020-6 version3.0</p>
    </div>
</footer>
</body>

</html>
