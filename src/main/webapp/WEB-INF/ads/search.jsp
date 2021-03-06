<jsp:useBean id="ad" scope="request" type="com.sun.org.apache.xml.internal.security.signature.Manifest"/>
<%--
  Created by IntelliJ IDEA.
  User: amaroterrazas
  Date: 10/1/20
  Time: 9:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Search Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="../partials/navbar.jsp" />
<div class="container">
    <h1>Ad Listing Book</h1>
    <form action="/ads/search" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text" value="${sessionScope.ad.title}">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text">${sessionScope.ad.description}</textarea>
        </div>
        <input name="ad_id" type="hidden" value=${ad.id}>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>
