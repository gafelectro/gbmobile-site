
<%@ page import="webpage.Section" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'section.label', default: 'Section')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-section" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-section" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="sectionOrder" title="${message(code: 'section.sectionOrder.label', default: 'Section Order')}" />
					
						<th><g:message code="section.label.label" default="Label" /></th>
					
						<th><g:message code="section.carousel.label" default="Carousel" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sectionInstanceList}" status="i" var="sectionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sectionInstance.id}">${fieldValue(bean: sectionInstance, field: "sectionOrder")}</g:link></td>
					
						<td>${fieldValue(bean: sectionInstance, field: "label.description")}</td>
					
						<td>${fieldValue(bean: sectionInstance, field: "carousel")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<p>...</p>
			<span aria-labelledby="label-label"><g:link controller="label" action="show" id="${sectionInstance?.label?.id}">${sectionInstance?.label?.encodeAsHTML()}</g:link></span>
			
			<div class="pagination">
				<g:paginate total="${sectionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
