<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
		String language = "korea";
		String headerCookie = request.getHeader("Cookie");
		
		if(headerCookie != null){
			Cookie cookies[] = request.getCookies();
			
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("language")){
					language=cookie.getValue();
				}
			}
		}
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>쿠키를 이용한 화면 설정 예제</title>
</head>
<body>
	<%
		if(language.equals("korea")){
	%>
	<h3>안녕하세요. 이것은 쿠키 예제입니다.</h3>
	<%
		}else{
	%>
	<h3>Hello. This is Cookie example.</h3>
	<%} %>
	
	<form action="cookieExample2.jsp" method="post">
		<input type="radio" name="language" value="korea" <%if(language.equals("korea")){%>checked<%}%>/>한국어 페이지 보기
		<input type="radio" name="language" value="english" <%if(language.equals("english")){%>checked<%}%>/>영어 페이지 보기
		<input type="submit" value="설정" />
	</form>
</body>
</html>