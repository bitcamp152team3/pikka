<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<security:authentication property="principal"/><br>
<p>ddddddddddddddddddddddddddddddddddddd</p>
<security:authentication property="principal.userVO"/><br>
<p>ddddddddddddddddddddddddddddddddddddd</p>
<security:authentication property="principal.userVO.userName"/><br>
<p>ddddddddddddddddddddddddddddddddddddd</p>
<security:authentication property="principal.userVO.userId"/><br>
<p>ddddddddddddddddddddddddddddddddddddd</p>
<security:authentication property="principal.userVO.authList"/><br>



</body>
</html>