<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" 
	jdbcDriver="com.mysql.jdbc.Driver" 
	jdbcUrl="jdbc:mysql://localhost/shoesme1?user=root&password=" 
	catalogUri="/WEB-INF/queries/ShoesmeSchemaCube.xml">
    
SELECT {[Measures].[Jumlah_Pengiriman]} ON COLUMNS, 
{[Shipping].[PengirimanID].Members} ON ROWS 
FROM SalesCube
</jp:mondrianQuery>

<c:set var="title01" scope="session">Shoesme - Cube </c:set>