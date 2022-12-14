-------------------------------------------------------------------------------
${buildSummary.planResultKey} commented by [#rt]
[#if addedComment.user??]
${fn.getUserFullName(addedComment.user)?html} [#t]
[#elseif addedComment.userName??]
${addedComment.userName} [#t]
[#else]
Anonymous User [#t]
[/#if]
- ${addedComment.lastModificationDate?datetime}[#lt]
-------------------------------------------------------------------------------

${addedComment.content?html}

${baseUrl}/browse/${buildSummary.planResultKey}[#lt]

[#if comments.size() > 1]
------------------
Previous Comments
------------------
[#list comments as comment]
   [#if comment.id != addedComment.id]
      [#if comment.user??]
           ${fn.getUserFullName(comment.user)?html} [#t]
      [#elseif comment.userName??]
           ${comment.userName?html} [#t]
      [#else]
           Anonymous User [#t]
      [/#if]
      (${comment.lastModificationDate?datetime})[#lt]
${htmlUtils.addPrefixToLines(">", comment.content!'')}
        
   [/#if]
[/#list]
[/#if]

--
This message is automatically generated by Atlassian Bamboo