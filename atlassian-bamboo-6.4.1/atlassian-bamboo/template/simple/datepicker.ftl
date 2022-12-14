<#if !stack.findValue("#datepicker_js_included")??>
<#assign trash = stack.setValue("#datepicker_js_included", true)/>
<script type="text/javascript" src="<@ww.url value="/webwork/jscalendar/" encode='false'/>calendar.js"></script>
<script type="text/javascript" src="<@ww.url value="/webwork/jscalendar/lang/" encode='false'/>calendar-${parameters.language!"en"}.js"></script>
<script type="text/javascript" src="<@ww.url value="/webwork/jscalendar/" encode='false'/>calendar-setup.js"></script>
</#if>
<#include "/${parameters.templateDir}/simple/text.ftl" />
<#if !parameters.readonly??><a href="#" id="${parameters.id}_button"></#if><img src="<@ww.url value="/webwork/jscalendar/img.gif" encode='false'/>" width="16" height="16" border="0" alt="Click Here to Pick up the date"><#if !parameters.readonly??></a></#if>
<#if !parameters.readonly??>
<script type="text/javascript">
    Calendar.setup({
        inputField     :    "${parameters.id}",
<#if parameters.format??>
        ifFormat       :    "${parameters.format}",
</#if>
<#if parameters.showstime??>
        showsTime      :    "${parameters.showstime}",
</#if>
        button         :    "${parameters.id}_button",
<#if parameters.singleclick??>
        singleclick    :    ${parameters.singleclick},
</#if>
        step           :    1
    });
</script>
</#if>
