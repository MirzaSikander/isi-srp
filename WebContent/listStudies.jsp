<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/header.jspf"%>
</head>
<body id="ListStudies">
	<img class="banner" src="img/banner_bg.jpg" />
	<div class="row">
		<div class="row heading">
			<div class="medium-10 large-12 medium-centered columns">
				<h1>Study Registration Portal</h1>
			</div>
		</div>
		<div
			class="medium-10 large-12 medium-centered large-centered columns shadow"
			style="padding: 0;">
			<table style="width: 100%">
				<thead>
					<tr>
						<th width="200">Study Type</th>
						<th width="200">Title</th>
						<th>Description</th>
					</tr>
				</thead>
				<tbody>
					<tr data-ref="/isi-srp/Review?studyID=1">
						<td>Clinical Trials</td>
						<td>Something Important</td>
						<td>This is longer content Donec id elit non mi porta gravida
							at eget metus.</td>
					</tr>
					<tr data-ref="/isi-srp/Review?studyID=2">
						<td>Case Control</td>
						<td>Something Important as well</td>
						<td>This is longer content Donec id elit non mi porta gravida
							at eget metus.</td>
					</tr>
					<tr data-ref="/isi-srp/Review?studyID=3">
						<td>Cohort</td>
						<td>I am important for sure</td>
						<td>This is longer content Donec id elit non mi porta gravida
							at eget metus.</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
<script type="text/javascript">
	$('tbody tr').click(function() {
		window.open($(this).attr('data-ref'));
	});
</script>
</html>