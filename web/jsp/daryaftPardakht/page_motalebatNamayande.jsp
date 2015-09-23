<%--
  Created by IntelliJ IDEA.
  User: s-tayebifar
  Date: 9/20/15
  Time: 12:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/jsp/taglibs.jsp" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt-rt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://displaytag.sf.net/el" prefix="display" %>
<%@ page import="com.bitarts.parsian.action.GozareshAction" %>
<%@ page import="com.bitarts.parsian.model.asnadeSodor.Motalebat" %>
<%@ page import="java.util.List" %>
<%@ include file="/jsp/taglibs.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>ليست مطالبات به تفكيك نماينده</title>
</head>
<body>
<%
    List<Motalebat> motalebatList  = (List<Motalebat>) request.getAttribute("MotalebatNM");
%>
<script>
    $(function(){
        $(".jtable tr").click(function(){
            $(this).children("td").toggleClass("ui-state-highlight");
        });
    });
</script>

<div class="expandableTitleBar" id="expandableAsl">
<p class="heading">
    <span class="ui-icon ui-icon-plus" style="float:right;"></span>
    جستجو
</p>
<div class="content" style="display:none;" id="searchAslContent1">
<form action="/fin/MotalebatNamayande" method="get">
<table dir="rtl" class="inputList">
<tr>
    <td><label>رشته</label></td>
    <td>
        <span class="noThing">&nbsp;</span>
        <select name="subSystemName" id="subSystemName"   >
            <option  value="" >انتخاب كنيد</option>
            <option  value="1" style="" >آتش سوزي</option>
            <option  value="2" style="" >باربري</option>
            <option  value="3" style="" >بدنه</option>
            <option  value="4" style="" >ثالث</option>
            <option  value="5" style="" >حوادث انفرادي</option>
            <option  value="6" style="" >درمان</option>
            <option  value="7" style="" >عمر انفرادي</option>
            <option  value="8" style="" >عمر و حوادث گروهي</option>
            <option  value="9" style="" >مسئوليت</option>
            <option  value="10" style="">مهندسي</option>
            <option  value="11" style="">نفت و انرژي</option>
            <option  value="12" style="">درمان مسافرتي</option>
        </select>
    </td>
</tr>
</table>
</form>
</div>
</div>
<s:actionmessage/>
<%--<s:actionerror/>--%>
<div id="smoothScrollaasn" style="overflow: auto;">
    <display:table export="true"
                   id="MotalebatNMId"
                   uid="rowSS"
                   name="MotalebatNM"
                   sort="external" htmlId="MotalebatNMId"
                   partialList="true"
                   size="100"
                   pagesize="30"
                   requestURI="MotalebatNamayande"
                   clearStatus="true" keepStatus="false"
                    style="width: 100%; margin: 0 auto;">
        <%--<c:choose>--%>
            <%--<c:when test="${sessionScope.daftar_id==1}">--%>
                <%--<c:set var="css" value=""/>--%>
            <%--</c:when>--%>

            <%--<c:otherwise>--%>
                <%--<c:set var="css" value="background:#ffffcc;"/>--%>
            <%--</c:otherwise>--%>
        <%--</c:choose>--%>
        <display:column title="رديف" style="">${rowSS_rowNum}</display:column>
        <%--<display:column title="نماينده" property="Namayande" style=""/>--%>
        <%--<display:column title="نام نماينده" property="Name" style=""/>--%>
        <%--<display:column title="رشته" property="ReshteStr" style=""></display:column>--%>
        <%--<display:column title="مبلغ صادر شده"  property="MablaghSaderShode" style=""></display:column>--%>
        <%--<display:column title="مبلغ سررسيد نشده"  property="MablaghSarresidNaShode" style=""/>--%>
        <%--<display:column title="مبلغ كنسرسيوم نشده" property="MablaghConsortiumsarresid_nashode"  style=""></display:column>--%>
        <%--<display:column title="مبلغ تسويه نشده" property="MablaghTasvieNashode" style=""/>--%>

        <%--<display:column title="مبلغ كنسرسيوم نهايي"  style="" property="MablaghconsortiumNahaii"></display:column>--%>
        <%--<display:column title="مبلغ تسويه شده"  style="" property="MablaghTasvieShode"></display:column>--%>


    </display:table>
</div>
<br>
<sec:authorize ifNotGranted="ROLE_KARBAR_MALI">
    <input type="button" onclick="window.location='/jsp/management/page_mainManagementPage.jsp'" value="بازگشت"/>
</sec:authorize>
<sec:authorize ifNotGranted="ROLE_NAMAYANDE">
    <input type="button" onclick="window.location='/loginUser.action'" value="بازگشت"/>
</sec:authorize>
<input type="button" onclick="window.location='/fin/loadSanadZani'" value="ثبت سند دستي"/>



</body>
</html>