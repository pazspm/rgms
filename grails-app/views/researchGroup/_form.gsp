<%@ page import="rgms.ResearchGroup" %>



<div class="fieldcontain ${hasErrors(bean: researchGroupInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="researchGroup.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="50" required="" value="${researchGroupInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchGroupInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="researchGroup.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1000" required="" value="${researchGroupInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchGroupInstance, field: 'members', 'error')} ">
	<label for="members">
		<g:message code="researchGroup.members.label" default="Members" />
		
	</label>
	<g:select name="members" from="${rgms.Member.list()}" multiple="multiple" optionKey="id" size="5" value="${researchGroupInstance?.members*.id}" class="many-to-many"/>
</div>

