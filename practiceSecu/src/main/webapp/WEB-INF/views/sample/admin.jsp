<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>admin login page</h1>

	<h3><sec:authentication property="principal.vo.username"/>님 환영합니다! </h3>
	
	 <hr/>
 <h4><sec:csrfInput/> </h4>
   
<div>
<sec:authorize access="hasRole('ROLE_ADMIN')">
<button>ADMIN ONLY</button>
</sec:authorize>
</div>
	<a href="/customLogout">Logout</a>
</body>
</html>