<%--
  Created by IntelliJ IDEA.
  User: a-sajadian
  Date: 9/20/15
  Time: 2:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.bitarts.parsian.Core.ConstantPaging" %>
<%@ include file="/jsp/taglibs.jsp" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt-rt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://displaytag.sf.net/el" prefix="display" %>
<%@ page import="com.bitarts.parsian.action.CredebitAction" %>
<%@ page import="com.bitarts.parsian.viewModel.Motalebat" %>
<%@ page import="java.util.List" %>
<%@ include file="/jsp/taglibs.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><%@ page isELIgnored="false" %></head>
<body>

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
        <form action="/fin/MotalebatSal" method="get">
            <table dir="rtl" class="inputList">
                <tr>
                    <td><label>رشته</label></td>
                    <td>
                        <span class="noThing">&nbsp;</span>
                        <input type="hidden" name="searchPage" value="yes"/>
                        <select name="field" id="field"   >
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
                    <td><label>نمايندگي</label></td>
                    <td>
                        <%@include file="/jsp/josteju/searchNamayandegi.jsp" %>
                        <span class="help ui-icon ui-icon-search" onclick="fillNamayandegi('search_namayandegiId5','search_namayandegiName5', '');" style="float:left;" title="جستجو"></span>
                        <input type="hidden" name="search_namayandegiId5" id="search_namayandegiId5" />
                        <input type="text" name="search_namayandegiName5" id="search_namayandegiName5"  readonly="true"/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="3">
                        <script type="text/javascript">
                            function clearSeachFrom()
                            {
                                $('#identifierBedehiTN').val('');
                                $('#rcptNameBedehiTN').val('');
                                $('#sarresidDateFromTN').val('');
                                $('#sarresidDateToTN').val('');
                                $('#createdDateFromTN').val('');
                                $('#createdDateToTN').val('');
                                $('#amountBedehi5').val('');
                                $('#remainingAmountBedehi5').val('');
                                $('#search_namayandegiName5').val('');
                                $('#search_vahedesodorName5').val('');
                                $('#bsName-tab5').val('');
                                $('#bedehi_color').val('');
                            }
                        </script>
                        <input type="submit" value="جستجو" theme="simple"/>
                        <span class="noThing"></span>
                        <input type="button" value="پاک کردن فرم" onclick="clearSeachFrom()"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
<s:actionmessage/>
<%--<s:actionerror/>--%>
<div id="smoothScrollaasn" style="overflow: auto;">
    <display:table export="true" id="motalebatSaal" uid="rowSS" name="motalebatSaal"
                   sort="external" htmlId="motalebatSaal"
                   partialList="true"
                   size = "100"
                   pagesize="30"
                   requestURI="" clearStatus="true" keepStatus="false"
                   excludedParams="" style="width: 100%; margin: 0 auto;">
        <%--<display:setProperty name="pagination.pagenumber.param"><%=ConstantPaging.MotalebatNamayandePageNumber%></display:setProperty>--%>

        <display:column title="رديف" style="">${row_rowNum}</display:column>
        <display:column title="تاريخ شروع" property="createDate" style=""/>
        <display:column title="رشته" property="reshteStr" style=""></display:column>
        <display:column title="مبلغ صادر شده"  property="mablaghSaderShode" style=""></display:column>
        <display:column title="مبلغ سررسيد نشده"  property="mablaghSarresidNaShode" style=""/>
        <display:column title="مبلغ كنسرسيوم نشده" property="mablaghConsortiumsarresid_nashode"  style=""></display:column>
        <display:column title="مبلغ تسويه نشده" property="mablaghTasvieNashode" style=""/>
        <display:column title="مبلغ كنسرسيوم نهايي"  style="" property="mablaghconsortiumNahaii"></display:column>
        <display:column title="مبلغ تسويه شده"  style="" property="mablaghTasvieShode"></display:column>


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
<head>
    <title>ليست مطالبات به تفكيك  سال</title>
</head>
</html>