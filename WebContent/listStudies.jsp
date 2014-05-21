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
			class="medium-10 large-12 medium-centered large-centered columns shadow">
			<form id="study-query-form" action="InputForm.do">
				<div class="row">
					<nav id="main-top-nav" class="row top-bar" data-topbar> <section
						class="top-bar-section">
					<ul>
						<li class="medium-6 columns active"><a href="listStudies.jsp">Find
								Studies</a></li>
						<li class="medium-6 columns"><a href="CreateNew">Create
								New Studies</a>
					</ul>
					</section> </nav>
				</div>
				<div class="row">
					<a href="#query-section" class="row large-12 section-toggle active"><b
						class="caret"></b>Query Results</a>
					<div id="query-section" class="row section-content active">
						<div class="row info">
							<p>Please enter your query parameters. To search using
								multiple investigator, you can enter the names as comma
								separated values</p>
						</div>
						<div class="panel">
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="grant-number" class="right inline">Grant
										Number:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="grant-number" name="grant-number"
										placeholder="">
								</div>
								<div class="medium-4 large-2 columns">
									<label for="study-type" class="right inline">Study
										Type:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<select id="study-type" name="study-type">
										<option id="case_control">Case-control</option>
										<option id="clinical_trial">Clinical Trials</option>
										<option id="cohort">Cohort</option>
										<option id="longitudinal">Longitudinal</option>
										<option id="parent_offspring_trios">Parent-Offspring
											Trios</option>
									</select>
								</div>
								<div class="medium-1 large-4 columns"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="study-title" class="right inline">Study
										Title:</label>
								</div>
								<div class="medium-7 large-6 columns">
									<input type="text" id="study-title" name="study-title"
										placeholder="">
								</div>
								<div class="medium-1 large-4 columns"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="study-title" class="right inline">Investigators:</label>
								</div>
								<div class="medium-7 large-6 columns">
									<input type="text" id="study-title" name="study-title"
										placeholder="">
								</div>
								<div class="medium-1 large-4 columns"></div>
							</div>
							<div class="row">
								<div class="row submit-container">
									<input class="button" type="submit">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<a href="#results-section"
						class="row large-12 section-toggle active"><b class="caret"></b>Query
						Results</a>
					<div id="results-section" class="row section-content active">
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
									<td>This is longer content Donec id elit non mi porta
										gravida at eget metus.</td>
								</tr>
								<tr data-ref="/isi-srp/Review?studyID=2">
									<td>Case Control</td>
									<td>Something Important as well</td>
									<td>This is longer content Donec id elit non mi porta
										gravida at eget metus.</td>
								</tr>
								<tr data-ref="/isi-srp/Review?studyID=3">
									<td>Cohort</td>
									<td>I am important for sure</td>
									<td>This is longer content Donec id elit non mi porta
										gravida at eget metus.</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
<script src="js/sectionToggle.js"></script>
<script src="js/query.js"></script>
</html>