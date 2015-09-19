<%@ page import="com.bitarts.parsian.model.pishnahad.Shakhs" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Arron2
  Date: 4/10/11
  Time: 3:37 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="" id="shakhsHoghoghiForm">
    <input type="hidden" name="bimeShodeOrGozar" value="bimegozar"/>
    <input type="hidden" name="shakhs.type" value="<%=Shakhs.BimeGozarType.HOGHOGHI.toString()%>"/>     <table class=inputList style="width:620px;border-spacing:15px 10px;">
    <input type="hidden" name="shakhs.id" value="${shakhs.id}" id="shakhshoghughi_id"/>
    <table class=inputList style="width:620px;border-spacing:15px 10px;">
        <col class=inputCol>
        <col class=inputCol>
        <tr><td colspan="2"><div id="msgErr_div"></div></td></tr>
        <tr>
            <td>
                <span class="nohelp">&nbsp;</span>
                <input type=text name="shakhs.name" value="${shakhs.name}" id="shakhsHoghoghiName"
                       class="validate[required,custom[onlyPersianLetter]] text-input"/>
                &nbsp;<label>نام</label>
            </td>
            <td>
                <span class="nohelp">&nbsp;</span>
                <select name="shakhs.pishvand" id="shakhsHoghoghiPishvand">
                    <c:set var="pishvand" value="<%=ConstantForPishnehadForm.ConstantItemKey.PISHVAND%>"/>
                        <c:forEach var="row" items="${pishnehadConstants.constantForPishnehadFormList}">
                            <c:if test="${row.constantItemKey == pishvand}">
                                <option value="${row.constantItemValue}"
                                <c:if test="${row.constantItemValue == shakhs.pishvand}">selected="selected"</c:if>
                                >
                                ${row.constantItemValue}
                                </option>
                            </c:if>
                        </c:forEach>
                </select>
                &nbsp;<label>پیشوند</label>
            </td>
        </tr>
        <tr>
            <td>
                <span class="nohelp">&nbsp;</span>
                <select name="shakhs.dolatiKhososi" id="shakhsDolatiKhososi">
                    <option>دولتی</option>
                    <option>خصوصی</option>
                </select>
                &nbsp;<label>دولتی/خصوصی</label>
            </td>
            <td>
                <span class="nohelp">&nbsp;</span>
                <select name="shakhs.noeFaaliat" id="shakhsNoeFaaliat">
                    <option>سهامي عام</option>
                    <option>سهامي خاص</option>
                    <option>موسسه</option>
                    <option>نهاد</option>
                    <option>مسئوليت محدود</option>
                </select>
                &nbsp;<label>نوع فعالیت</label>
            </td>
        </tr>
        <tr>
           <td>
                <span class="nohelp">&nbsp;</span>
                <input type=text name="shakhs.kodeEghtesadi" value="${shakhs.kodeEghtesadi}" id="shakhsKodeEghtesadi"
                       class="validate[required] text-input"/>
                &nbsp;<label>کد اقتصادی</label>
            </td>
            <td>
                <span class="nohelp">&nbsp;</span>
                <input type=text name="shakhs.shomareSabt" value="${shakhs.shomareSabt}" id="shakhsShomareSabt"
                       class="validate[required] text-input"/>
                &nbsp;<label>شماره ثبت</label>
            </td>
        </tr>
        <tr>
           <td>
                <input type=text name="shakhs.tarikheSabt" value="${shakhs.tarikheSabt}" id="shakhsTarikheSabt"
                       class="validate[required] text-input datePkr"/>
                &nbsp;<label>تاریخ ثبت</label>
            </td>
            <td>
                <span class="nohelp">&nbsp;</span>
                <input type=text value="${shakhs.mahalleSabt.cityName}" id="shakhsMahalleSabt" class="validate[required]" readonly="readonly"/>&nbsp;<label>محل ثبت</label>
                <input type=hidden name="shakhs.mahalleSabt.cityId" value="${shakhs.mahalleSabt.cityId}" id="shakhsMahalleSabt_id"/>
                <input type=button value="انتخاب" onclick="fillShahr('shakhsMahalleSabt_id','shakhsMahalleSabt','shakhsMahalleSabt');" style="margin:0px 187px 0px 0px; position: absolute;"/>
            </td>
        </tr>
    </table>
</form>
