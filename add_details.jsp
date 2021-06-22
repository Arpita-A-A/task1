<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.io.*,java.util.*"%>
<%@page import="javax.servlet.http.*,javax.servlet.*"%>
<%@tagliburi="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@tagliburi="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<!DOCTYPE html>
<htm>
	<head>
	</head> 
	<body>
		<sql:setDataSource var="s" url="jdbc:mysql://localhost:3306/databasename" 
		driver="com.mysql.jdbc.Driver" user="username" password="password"/>
		
		<c:if test="$(pageContext.request.method=='POST'}">
		<C:catch var="exception">
		<sqlupdatedata Source="${S}" var="ut"s
			insert into databasename valuest(?,?,?,?)
			<sql:param value="S{param.fn}"/>
			<sql:param value="${param.sn}"/>
			<sql:param value="${param.eid}"/>
			<sql:param value="${param.pw}"/>
		</sql:update>
		<c:if test="${ut>=1}">
			<p>Data Inserted successfully</p>
		</c:if>
		</c:catch>
			<c:if test="${exceptionl=nulll">
			<p>Unable to insert data</p>
		</c:if>
		</c:if>
	</body
</html> 