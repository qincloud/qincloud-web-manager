<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
		window.location.href = "http://localhost:8888/pc.jsp";
	} else if (/(Android)/i.test(navigator.userAgent)) {
		window.location.href = "http://localhost:8888/android.jsp";
	} else {
		window.location.href = "http://localhost:8888/pc.jsp";
	}
</script>
</head>
<body>

</body>
</html>