<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Study Registration</title>
<link rel="stylesheet" href="css/foundation.css" />
<link rel="stylesheet" type="text/css" href="css/app.css">
<link rel="stylesheet" type="text/css"
	href="css/jquery-ui-1.10.4.custom.min.css">
<link rel="stylesheet" href="fileUploader/css/jquery.fileupload.css">
<link rel="stylesheet" href="fileUploader/css/jquery.fileupload-ui.css">
<script src="js/vendor/modernizr.js"></script>
<script type="text/javascript">
	//make this null inorder to load just the input form
	var viewData = <%= request.getAttribute("jason") %>
	
</script>
</head>

<body>

	<img class="banner" src="img/banner_bg.jpg" />
	<div class="row">
		<div class="row heading">
			<div class="medium-10 large-12 medium-centered columns">
				<h1>Study Registration Portal</h1>
			</div>
		</div>
		<div
			class="medium-10 large-12 medium-centered large-centered columns shadow">

			<form id="main-form" action="InputForm.do">
				<div class="row">
					<div class="row panel callout messagebox">
						<p>The study has been submitted. If you would like to make
							changes to it, click the Edit button</p>
					</div>
					<div class="row edit-container">
						<button class="button" id="edit-button">Edit</button>
					</div>
				</div>
				<div class="row ">

					<a href="#study-section" class="row large-12 section-toggle active"><b
						class="caret"></b>Study Details</a>
					<div id="study-section" class="row section-content active">
						<div class="row info">
							<p>Please enter the details for the study</p>
						</div>
						<div class="panel">
							<div class="row">
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
									<label for="study-description" class="right inline">Description:</label>
								</div>
								<div class="medium-7 large-8 columns">
									<textarea id="study-description" name="study-description"></textarea>
								</div>
								<div class="medium-1 large-2 columns"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="short-name" class="right inline">Short
										Name:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="short-name" name="short-name"
										placeholder="">
								</div>
								<div class="medium-4 large-2 columns">
									<label for="grant-number" class="right inline">Grant
										Number:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="grant-number" name="grant-number"
										placeholder="">
								</div>
								<div class="large-2 columns"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="award-start-date" class="right inline">Project
										Start Date:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="award-start-date" class="date-input"
										name="award-start-date" class="date-input" placeholder="">
								</div>
								<div class="medium-4 large-2 columns">
									<label for="project-end-date" class="right inline">Project
										End Date:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="project-end-date" class="date-input"
										name="project-end-date" class="date-input" placeholder="">
								</div>
								<div class="large-2 columns"></div>
							</div>
							<div class="row" style="margin-bottom: 0.5em">
								<div class="medium-offset-1 medium-7 large-6 columns">
									<label for="dbgap-study-registered" class="right inline">Is
										this study registered with DBGAP?: </label>
								</div>
								<div class="medium-4 large-5 columns" >
									<input type="radio" name="dbgap-study-registered" value="true"
										id="dbgap-study-registered-yes"> <label
										for="dbgap-study-registered-yes">Yes</label> <input
										type="radio" name="dbgap-study-registered" value="false"
										id="dbgap-study-registered-no"> <label
										for="dbgap-study-registered-yes">no</label>
								</div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="dbgap-study-id" class="right inline">DBGAP
										Study-ID:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="dbgap-study-id" name="dbgap-study-id"
										placeholder="">
								</div>
								<div class="medium-4 large-2 columns">
									<label for="dbgap-study-title" class="right inline">DBGAP
										title:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="dbgap-study-title"
										name="dbgap-study-title" placeholder="">
								</div>
								<div class="large-2 columns"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="washu-study-num" class="right inline">WashU
										Study #:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="washu-study-num" name="washu-study-num"
										placeholder="">
								</div>
								<div class="medium-4 large-2 columns">
									<label for="num-of-sites" class="right inline">Number
										of sites:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="num-of-sites" name="num-of-sites"
										placeholder="">
								</div>
								<div class="large-2 columns"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<a href="#investigators-section"
						class="row large-12 section-toggle"><b class="caret"></b>Investigator
						Information</a>
					<div id="investigators-section" class="row section-content active">
						<div class="row info">
							<p>Please enter details about the primary investigator. You
								can add additional investigators using the plus sign.</p>
						</div>
						<a href="#investigator-1-section"
							class="large-12 section-toggle sub-section"><b class="caret"></b>Investigator
							1</a>
						<div id="investigator-1-section"
							class="panel investigator section-content active top-corner">
							<div class="row">
								<div class="medium-3 large-4 columns right neg-place-holder-inv"></div>
								<div class="medium-4 large-2 columns">
									<label for="role-1" class="right inline">Role:</label>
								</div>
								<div class="medium-5 large-5 columns">
									<select id="role-1" name="role-1">
										<option value="PI">Principal Investigator</option>
										<option value="coPI">Co-Principal Investigator</option>
										<option value="coI">Co-Investigator</option>
										<option value="SenPer">Senior Personel</option>
									</select>
								</div>
								<div class="medium-1 large-1 columns right"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="investigator-era-id" class="right inline">Investigator
										eRA ID:</label>
								</div>
								<div class="medium-7 large-5 columns">
									<input type="text" id="investigator-era-id"
										name="investigator-era-id" placeholder="">
								</div>
								<div class="medium-1 large-4 columns"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="first-name-1" class="right inline">First
										Name:</label>
								</div>
								<div class="medium-7 large-6 columns">
									<input type="text" id="first-name-1" name="first-name-1"
										placeholder="">
								</div>
								<div class="medium-1 large-4 columns"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="middle-name-1" class="right inline">Middle
										Name:</label>
								</div>
								<div class="medium-7 large-6 columns">
									<input type="text" id="middle-name-1" name="middle-name-1"
										placeholder="">
								</div>
								<div class="medium-1 large-4 columns"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="last-name-1" class="right inline">Last
										Name:</label>
								</div>
								<div class="medium-7 large-6 columns">
									<input type="text" id="last-name-1" name="last-name-1"
										placeholder="">
								</div>
								<div class="medium-1 large-4 columns"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="title-1" class="right inline">Title:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="title-1" name="title-1" placeholder="">
								</div>
								<div class="medium-4 large-2 columns">
									<label for="email-1" class="right inline">email:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="email-1" name="email-1" placeholder="">
								</div>
								<div class="large-2 columns"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="phone-1" class="right inline">Phone #:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="phone-1" name="phone-1" placeholder="">
								</div>
								<div class="medium-4 large-2 columns">
									<label for="fax-1" class="right inline">fax:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="fax-1" name="fax-1" placeholder="">
								</div>
								<div class="large-2 columns"></div>
							</div>
							<div class="row">
								<div class="medium-12 columns">
									<div class="panel organization">
										<div class="row">
											<div
												class="medium-3 large-2 columns right neg-place-holder-org"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="investigator-organization-era-id/1-1"
													class="right inline">Organization eRA ID:</label>
											</div>
											<div class="medium-7 large-4 columns">
												<input type="text" id="investigator-organization-era-id/1-1"
													name="investigator-organization-era-id/1-1" placeholder="">
											</div>
											<div class="medium-1 large-1 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="investigator-organization-name/1-1"
													class="right inline">Organization Name:</label>
											</div>
											<div class="medium-7 large-6 columns">
												<input type="text" id="investigator-organization-name/1-1"
													name="investigator-organization-name/1-1" placeholder="">
											</div>
											<div class="medium-1 large-1 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="investigator-subunitone/1-1"
													class="right inline">Subunit 1:</label>
											</div>
											<div class="medium-7 large-6 columns">
												<input type="text" id="investigator-subunitone/1-1"
													name="investigator-subunitone/1-1" placeholder="">
											</div>
											<div class="medium-1 large-3 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="investigator-subunittwo/1-1"
													class="right inline">Subunit 2:</label>
											</div>
											<div class="medium-7 large-6 columns">
												<input type="text" id="investigator-subunittwo/1-1"
													name="investigator-subunittwo/1-1" placeholder="">
											</div>
											<div class="medium-1 large-3 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="investigator-street-address/1-1"
													class="right inline">Street Address:</label>
											</div>
											<div class="medium-7 large-6 columns">
												<input type="text" id="investigator-street-address/1-1"
													name="investigator-street-address/1-1" placeholder="">
											</div>
											<div class="medium-1 large-3 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="investigator-city/1-1" class="right inline">City:</label>
											</div>
											<div class="medium-4 large-3 columns">
												<input type="text" id="investigator-city/1-1"
													name="investigator-city/1-1" placeholder="">
											</div>
											<div class="medium-1 large-3 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="investigator-state/1-1" class="right inline">State:</label>
											</div>
											<div class="medium-4 large-3 columns">
												<select id="investigator-state/1-1"
													name="investigator-state/1-1">
													<option value="ZZ">None</option>
													<option value="AL">Alabama</option>
													<option value="AK">Alaska</option>
													<option value="AZ">Arizona</option>
													<option value="AR">Arkansas</option>
													<option value="CA">California</option>
													<option value="CO">Colorado</option>
													<option value="CT">Connecticut</option>
													<option value="DE">Delaware</option>
													<option value="FL">Florida</option>
													<option value="GA">Georgia</option>
													<option value="HI">Hawaii</option>
													<option value="ID">Idaho</option>
													<option value="IL">Illinois</option>
													<option value="IN">Indiana</option>
													<option value="IA">Iowa</option>
													<option value="KS">Kansas</option>
													<option value="KY">Kentucky</option>
													<option value="LA">Louisiana</option>
													<option value="ME">Maine</option>
													<option value="MD">Maryland</option>
													<option value="MA">Massachusetts</option>
													<option value="MI">Michigan</option>
													<option value="MN">Minnesota</option>
													<option value="MS">Mississippi</option>
													<option value="MO">Missouri</option>
													<option value="MT">Montana</option>
													<option value="NE">Nebraska</option>
													<option value="NV">Nevada</option>
													<option value="NH">New Hampshire</option>
													<option value="NJ">New Jersey</option>
													<option value="NM">New Mexico</option>
													<option value="NY">New York</option>
													<option value="NC">North Carolina</option>
													<option value="ND">North Dakota</option>
													<option value="OH">Ohio</option>
													<option value="OK">Oklahoma</option>
													<option value="OR">Oregon</option>
													<option value="PA">Pennsylvania</option>
													<option value="RI">Rhode Island</option>
													<option value="SC">South Carolina</option>
													<option value="SD">South Dakota</option>
													<option value="TN">Tennessee</option>
													<option value="TX">Texas</option>
													<option value="UT">Utah</option>
													<option value="VT">Vermont</option>
													<option value="VA">Virginia</option>
													<option value="WA">Washington</option>
													<option value="WV">West Virginia</option>
													<option value="WI">Wisconsin</option>
													<option value="WY">Wyoming</option>
												</select>
											</div>
											<div class="medium-1 large-3 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="investigator-zipcode/1-1" class="right inline">ZIP code:</label>
											</div>
											<div class="medium-4 large-3 columns">
												<input type="text" id="investigator-zipcode/1-1"
													name="investigator-zipcode/1-1" placeholder="">
											</div>
											<div class="medium-1 large-3 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="investigator-country/1-1" class="right inline">Country:</label>
											</div>
											<div class="medium-4 large-3 columns">
												<select id="investigator-country/1-1"
													name="investigator-country/1-1">
													<option value="USA">USA</option>
													<option value="Afganistan">Afghanistan</option>
													<option value="Albania">Albania</option>
													<option value="Algeria">Algeria</option>
													<option value="American Samoa">American Samoa</option>
													<option value="Andorra">Andorra</option>
													<option value="Angola">Angola</option>
													<option value="Anguilla">Anguilla</option>
													<option value="Antigua &amp; Barbuda">Antigua
														&amp; Barbuda</option>
													<option value="Argentina">Argentina</option>
													<option value="Armenia">Armenia</option>
													<option value="Aruba">Aruba</option>
													<option value="Australia">Australia</option>
													<option value="Austria">Austria</option>
													<option value="Azerbaijan">Azerbaijan</option>
													<option value="Bahamas">Bahamas</option>
													<option value="Bahrain">Bahrain</option>
													<option value="Bangladesh">Bangladesh</option>
													<option value="Barbados">Barbados</option>
													<option value="Belarus">Belarus</option>
													<option value="Belgium">Belgium</option>
													<option value="Belize">Belize</option>
													<option value="Benin">Benin</option>
													<option value="Bermuda">Bermuda</option>
													<option value="Bhutan">Bhutan</option>
													<option value="Bolivia">Bolivia</option>
													<option value="Bonaire">Bonaire</option>
													<option value="Bosnia &amp; Herzegovina">Bosnia
														&amp; Herzegovina</option>
													<option value="Botswana">Botswana</option>
													<option value="Brazil">Brazil</option>
													<option value="British Indian Ocean Ter">British
														Indian Ocean Ter</option>
													<option value="Brunei">Brunei</option>
													<option value="Bulgaria">Bulgaria</option>
													<option value="Burkina Faso">Burkina Faso</option>
													<option value="Burundi">Burundi</option>
													<option value="Cambodia">Cambodia</option>
													<option value="Cameroon">Cameroon</option>
													<option value="Canada">Canada</option>
													<option value="Canary Islands">Canary Islands</option>
													<option value="Cape Verde">Cape Verde</option>
													<option value="Cayman Islands">Cayman Islands</option>
													<option value="Central African Republic">Central
														African Republic</option>
													<option value="Chad">Chad</option>
													<option value="Channel Islands">Channel Islands</option>
													<option value="Chile">Chile</option>
													<option value="China">China</option>
													<option value="Christmas Island">Christmas Island</option>
													<option value="Cocos Island">Cocos Island</option>
													<option value="Colombia">Colombia</option>
													<option value="Comoros">Comoros</option>
													<option value="Congo">Congo</option>
													<option value="Cook Islands">Cook Islands</option>
													<option value="Costa Rica">Costa Rica</option>
													<option value="Cote DIvoire">Cote D'Ivoire</option>
													<option value="Croatia">Croatia</option>
													<option value="Cuba">Cuba</option>
													<option value="Curaco">Curacao</option>
													<option value="Cyprus">Cyprus</option>
													<option value="Czech Republic">Czech Republic</option>
													<option value="Denmark">Denmark</option>
													<option value="Djibouti">Djibouti</option>
													<option value="Dominica">Dominica</option>
													<option value="Dominican Republic">Dominican
														Republic</option>
													<option value="East Timor">East Timor</option>
													<option value="Ecuador">Ecuador</option>
													<option value="Egypt">Egypt</option>
													<option value="El Salvador">El Salvador</option>
													<option value="Equatorial Guinea">Equatorial
														Guinea</option>
													<option value="Eritrea">Eritrea</option>
													<option value="Estonia">Estonia</option>
													<option value="Ethiopia">Ethiopia</option>
													<option value="Falkland Islands">Falkland Islands</option>
													<option value="Faroe Islands">Faroe Islands</option>
													<option value="Fiji">Fiji</option>
													<option value="Finland">Finland</option>
													<option value="France">France</option>
													<option value="French Guiana">French Guiana</option>
													<option value="French Polynesia">French Polynesia</option>
													<option value="French Southern Ter">French
														Southern Ter</option>
													<option value="Gabon">Gabon</option>
													<option value="Gambia">Gambia</option>
													<option value="Georgia">Georgia</option>
													<option value="Germany">Germany</option>
													<option value="Ghana">Ghana</option>
													<option value="Gibraltar">Gibraltar</option>
													<option value="Great Britain">Great Britain</option>
													<option value="Greece">Greece</option>
													<option value="Greenland">Greenland</option>
													<option value="Grenada">Grenada</option>
													<option value="Guadeloupe">Guadeloupe</option>
													<option value="Guam">Guam</option>
													<option value="Guatemala">Guatemala</option>
													<option value="Guinea">Guinea</option>
													<option value="Guyana">Guyana</option>
													<option value="Haiti">Haiti</option>
													<option value="Hawaii">Hawaii</option>
													<option value="Honduras">Honduras</option>
													<option value="Hong Kong">Hong Kong</option>
													<option value="Hungary">Hungary</option>
													<option value="Iceland">Iceland</option>
													<option value="India">India</option>
													<option value="Indonesia">Indonesia</option>
													<option value="Iran">Iran</option>
													<option value="Iraq">Iraq</option>
													<option value="Ireland">Ireland</option>
													<option value="Isle of Man">Isle of Man</option>
													<option value="Israel">Israel</option>
													<option value="Italy">Italy</option>
													<option value="Jamaica">Jamaica</option>
													<option value="Japan">Japan</option>
													<option value="Jordan">Jordan</option>
													<option value="Kazakhstan">Kazakhstan</option>
													<option value="Kenya">Kenya</option>
													<option value="Kiribati">Kiribati</option>
													<option value="Korea North">Korea North</option>
													<option value="Korea Sout">Korea South</option>
													<option value="Kuwait">Kuwait</option>
													<option value="Kyrgyzstan">Kyrgyzstan</option>
													<option value="Laos">Laos</option>
													<option value="Latvia">Latvia</option>
													<option value="Lebanon">Lebanon</option>
													<option value="Lesotho">Lesotho</option>
													<option value="Liberia">Liberia</option>
													<option value="Libya">Libya</option>
													<option value="Liechtenstein">Liechtenstein</option>
													<option value="Lithuania">Lithuania</option>
													<option value="Luxembourg">Luxembourg</option>
													<option value="Macau">Macau</option>
													<option value="Macedonia">Macedonia</option>
													<option value="Madagascar">Madagascar</option>
													<option value="Malaysia">Malaysia</option>
													<option value="Malawi">Malawi</option>
													<option value="Maldives">Maldives</option>
													<option value="Mali">Mali</option>
													<option value="Malta">Malta</option>
													<option value="Marshall Islands">Marshall Islands</option>
													<option value="Martinique">Martinique</option>
													<option value="Mauritania">Mauritania</option>
													<option value="Mauritius">Mauritius</option>
													<option value="Mayotte">Mayotte</option>
													<option value="Mexico">Mexico</option>
													<option value="Midway Islands">Midway Islands</option>
													<option value="Moldova">Moldova</option>
													<option value="Monaco">Monaco</option>
													<option value="Mongolia">Mongolia</option>
													<option value="Montserrat">Montserrat</option>
													<option value="Morocco">Morocco</option>
													<option value="Mozambique">Mozambique</option>
													<option value="Myanmar">Myanmar</option>
													<option value="Nambia">Nambia</option>
													<option value="Nauru">Nauru</option>
													<option value="Nepal">Nepal</option>
													<option value="Netherland Antilles">Netherland
														Antilles</option>
													<option value="Netherlands">Netherlands (Holland,
														Europe)</option>
													<option value="Nevis">Nevis</option>
													<option value="New Caledonia">New Caledonia</option>
													<option value="New Zealand">New Zealand</option>
													<option value="Nicaragua">Nicaragua</option>
													<option value="Niger">Niger</option>
													<option value="Nigeria">Nigeria</option>
													<option value="Niue">Niue</option>
													<option value="Norfolk Island">Norfolk Island</option>
													<option value="Norway">Norway</option>
													<option value="Oman">Oman</option>
													<option value="Pakistan">Pakistan</option>
													<option value="Palau Island">Palau Island</option>
													<option value="Palestine">Palestine</option>
													<option value="Panama">Panama</option>
													<option value="Papua New Guinea">Papua New Guinea</option>
													<option value="Paraguay">Paraguay</option>
													<option value="Peru">Peru</option>
													<option value="Phillipines">Philippines</option>
													<option value="Pitcairn Island">Pitcairn Island</option>
													<option value="Poland">Poland</option>
													<option value="Portugal">Portugal</option>
													<option value="Puerto Rico">Puerto Rico</option>
													<option value="Qatar">Qatar</option>
													<option value="Republic of Montenegro">Republic of
														Montenegro</option>
													<option value="Republic of Serbia">Republic of
														Serbia</option>
													<option value="Reunion">Reunion</option>
													<option value="Romania">Romania</option>
													<option value="Russia">Russia</option>
													<option value="Rwanda">Rwanda</option>
													<option value="St Barthelemy">St Barthelemy</option>
													<option value="St Eustatius">St Eustatius</option>
													<option value="St Helena">St Helena</option>
													<option value="St Kitts-Nevis">St Kitts-Nevis</option>
													<option value="St Lucia">St Lucia</option>
													<option value="St Maarten">St Maarten</option>
													<option value="St Pierre &amp; Miquelon">St Pierre
														&amp; Miquelon</option>
													<option value="St Vincent &amp; Grenadines">St
														Vincent &amp; Grenadines</option>
													<option value="Saipan">Saipan</option>
													<option value="Samoa">Samoa</option>
													<option value="Samoa American">Samoa American</option>
													<option value="San Marino">San Marino</option>
													<option value="Sao Tome &amp; Principe">Sao Tome
														&amp; Principe</option>
													<option value="Saudi Arabia">Saudi Arabia</option>
													<option value="Senegal">Senegal</option>
													<option value="Serbia">Serbia</option>
													<option value="Seychelles">Seychelles</option>
													<option value="Sierra Leone">Sierra Leone</option>
													<option value="Singapore">Singapore</option>
													<option value="Slovakia">Slovakia</option>
													<option value="Slovenia">Slovenia</option>
													<option value="Solomon Islands">Solomon Islands</option>
													<option value="Somalia">Somalia</option>
													<option value="South Africa">South Africa</option>
													<option value="Spain">Spain</option>
													<option value="Sri Lanka">Sri Lanka</option>
													<option value="Sudan">Sudan</option>
													<option value="Suriname">Suriname</option>
													<option value="Swaziland">Swaziland</option>
													<option value="Sweden">Sweden</option>
													<option value="Switzerland">Switzerland</option>
													<option value="Syria">Syria</option>
													<option value="Tahiti">Tahiti</option>
													<option value="Taiwan">Taiwan</option>
													<option value="Tajikistan">Tajikistan</option>
													<option value="Tanzania">Tanzania</option>
													<option value="Thailand">Thailand</option>
													<option value="Togo">Togo</option>
													<option value="Tokelau">Tokelau</option>
													<option value="Tonga">Tonga</option>
													<option value="Trinidad &amp; Tobago">Trinidad
														&amp; Tobago</option>
													<option value="Tunisia">Tunisia</option>
													<option value="Turkey">Turkey</option>
													<option value="Turkmenistan">Turkmenistan</option>
													<option value="Turks &amp; Caicos Is">Turks &amp;
														Caicos Is</option>
													<option value="Tuvalu">Tuvalu</option>
													<option value="Uganda">Uganda</option>
													<option value="Ukraine">Ukraine</option>
													<option value="United Arab Erimates">United Arab
														Emirates</option>
													<option value="United Kingdom">United Kingdom</option>
													<option value="United States of America">United
														States of America</option>
													<option value="Uraguay">Uruguay</option>
													<option value="Uzbekistan">Uzbekistan</option>
													<option value="Vanuatu">Vanuatu</option>
													<option value="Vatican City State">Vatican City
														State</option>
													<option value="Venezuela">Venezuela</option>
													<option value="Vietnam">Vietnam</option>
													<option value="Virgin Islands (Brit)">Virgin
														Islands (Brit)</option>
													<option value="Virgin Islands (USA)">Virgin
														Islands (USA)</option>
													<option value="Wake Island">Wake Island</option>
													<option value="Wallis &amp; Futana Is">Wallis
														&amp; Futana Is</option>
													<option value="Yemen">Yemen</option>
													<option value="Zaire">Zaire</option>
													<option value="Zambia">Zambia</option>
													<option value="Zimbabwe">Zimbabwe</option>
												</select>
											</div>
											<div class="medium-1 large-3 columns"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div id="investigator-organization-add" class="right plus">
									<span data-tooltip class="has-tip tip-top"
										title="Add a new Organization"><img src="img/plus.png"
										alt=""></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div id="investigator-add" class="right plus">
								<span data-tooltip class="has-tip tip-top"
									title="Add a new Investigator"><img src="img/plus.png"
									alt=""></span>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<a href="#resources-section" class="row large-12 section-toggle"><b
						class="caret"></b>Resources Information</a>
					<div id="resources-section" class="row section-content active">
						<div class="row info">
							<p>Please enter the details for the resources associated with
								this study</p>
						</div>
						<a href="#resource-1-section"
							class="large-12 section-toggle sub-section"><b class="caret"></b>Resource
							1</a>
						<div id="resource-1-section"
							class="panel resource active section-content top-corner">
							<div class="row">
								<div class="medium-3 large-4 columns right neg-place-holder-res"></div>
								<div class="medium-4 large-2 columns">
									<label for="resource-type-1" class="right inline">Resource
										Type:</label>
								</div>
								<div class="medium-5 large-5 columns">
									<select id="resource-type-1" name="resource-type-1">
										<option value="none">None</option>
										<option value="biospecimen">Biospecimen</option>
										<option value="reprogrammed_cell_line">Reprogrammed
											Cell Line</option>
										<option value="phenotype_date">Phenotype Data</option>
										<option value="gwas_data">GWAS Data</option>
										<option value="sequence_data">Sequence Data</option>
										<option value="other_genetic_data">Other Genetic Data</option>
										<option value="analyzed_data">Analyzed Data</option>
										<option value="other">Other</option>
									</select>
								</div>
								<div class="medium-1 large-1 columns right inline"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="resource-subtype-1" class="right inline">Sub
										Type:</label>
								</div>
								<div class="medium-5 large-5 columns">
									<select disabled id="resource-subtype-1">
										<option value="">Please first choose resource type</option>
									</select>
								</div>
								<div class="medium-1 large-1 columns right inline"></div>
							</div>
							<div class="row" style="display: none">
								<div class="medium-4 large-2 columns">
									<label for="resource-subtype-text-1" class="right inline">Sub
										Type:</label>
								</div>
								<div class="medium-5 large-5 columns">
									<input type="text" id="resource-subtype-text-1"
										name="resource-subtype-text-1"
										placeholder="Please enter subtype">
								</div>
								<div class="medium-1 large-1 columns right"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="platform-1" class="right inline">Platform:</label>
								</div>
								<div class="medium-7 large-6 columns">
									<input type="text" id="platform-1" name="platform-1"
										placeholder="">
								</div>
								<div class="medium-1 large-4 columns"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="resource-description-1" class="right inline">Description:</label>
								</div>
								<div class="medium-7 large-8 columns">
									<textarea id="resource-description"
										name="resource-description-1"></textarea>
								</div>
								<div class="medium-1 large-2 columns"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="num-samples-1" class="right inline">Number
										of Samples:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="num-samples-1" name="num-samples-1"
										placeholder="">
								</div>
								<div class="large-2 columns"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="date-first-submission-1" class="right inline">1st
										Submission Date:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="date-first-submission-1"
										class="date-input" name="date-first-submission-1"
										class="date-input" placeholder="">
								</div>
								<div class="medium-4 large-2 columns">
									<label for="frequency-submission-1"
										title="Frequency of Submission" class="right inline">Submission
										Frequency:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="frequency-submission-1"
										title="Frequency of Submission" name="frequency-submission-1"
										title="Frequency of Submission" placeholder="">
								</div>
								<div class="large-2 columns"></div>
							</div>
							<div class="row">
								<div class="medium-4 large-2 columns">
									<label for="date-release-1" class="right inline">Release
										Date:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="date-release-1" class="date-input"
										name="date-release-1" class="date-input" placeholder="">
								</div>
								<div class="medium-4 large-2 columns">
									<label for="date-submission-complete-1" class="right inline">Completion
										Date:</label>
								</div>
								<div class="medium-7 large-3 columns">
									<input type="text" id="project-end-date-1" class="date-input"
										name="project-end-date-1" class="date-input" placeholder="">
								</div>
								<div class="large-2 columns"></div>
							</div>
							<div class="row">
								<div class="medium-12 columns">
									<div class="panel organization">
										<div class="row">
											<div
												class="medium-3 large-2 columns right neg-place-holder-org"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="resource-organization-site-contact/1-1"
													class="right inline">Site Contact:</label>
											</div>
											<div class="medium-7 large-6 columns">
												<select id="resource-organization-site-contact/1-1"
													name="resource-organization-site-contact/1-1">
													<option value="unknown">Unknown</option>
												</select>
											</div>
											<div class="medium-1 large-1 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="resource-organization-era-id/1-1"
													class="right inline">Organization eRA ID:</label>
											</div>
											<div class="medium-7 large-4 columns">
												<input type="text" id="resource-organization-era-id/1-1"
													name="resource-organization-era-id/1-1" placeholder="">
											</div>
											<div class="medium-1 large-1 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="resource-organization-name/1-1"
													class="right inline">Organization Name:</label>
											</div>
											<div class="medium-7 large-6 columns">
												<input type="text" id="resource-organization-name/1-1"
													name="resource-organization-name/1-1" placeholder="">
											</div>
											<div class="medium-1 large-1 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="resource-subunitone/1-1" class="right inline">Subunit
													1:</label>
											</div>
											<div class="medium-7 large-6 columns">
												<input type="text" id="resource-subunitone/1-1"
													name="resource-subunitone/1-1" placeholder="">
											</div>
											<div class="medium-1 large-3 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="resource-subunittwo/1-1" class="right inline">Subunit
													2:</label>
											</div>
											<div class="medium-7 large-6 columns">
												<input type="text" id="resource-subunittwo/1-1"
													name="resource-subunittwo/1-1" placeholder="">
											</div>
											<div class="medium-1 large-3 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="resource-street-address/1-1"
													class="right inline">Street Address:</label>
											</div>
											<div class="medium-7 large-6 columns">
												<input type="text" id="resource-street-address/1-1"
													name="resource-street-address/1-1" placeholder="">
											</div>
											<div class="medium-1 large-3 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="resource-city/1-1" class="right inline">City:</label>
											</div>
											<div class="medium-4 large-3 columns">
												<input type="text" id="resource-city/1-1"
													name="resource-city/1-1" placeholder="">
											</div>
											<div class="medium-1 large-3 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="resource-state/1-1" class="right inline">State:</label>
											</div>
											<div class="medium-4 large-3 columns">
												<select id="resource-state/1-1" size="1"
													name="resource-state/1-1" size="1">
													<option value="ZZ">None</option>
													<option value="AL">Alabama</option>
													<option value="AK">Alaska</option>
													<option value="AZ">Arizona</option>
													<option value="AR">Arkansas</option>
													<option value="CA">California</option>
													<option value="CO">Colorado</option>
													<option value="CT">Connecticut</option>
													<option value="DE">Delaware</option>
													<option value="FL">Florida</option>
													<option value="GA">Georgia</option>
													<option value="HI">Hawaii</option>
													<option value="ID">Idaho</option>
													<option value="IL">Illinois</option>
													<option value="IN">Indiana</option>
													<option value="IA">Iowa</option>
													<option value="KS">Kansas</option>
													<option value="KY">Kentucky</option>
													<option value="LA">Louisiana</option>
													<option value="ME">Maine</option>
													<option value="MD">Maryland</option>
													<option value="MA">Massachusetts</option>
													<option value="MI">Michigan</option>
													<option value="MN">Minnesota</option>
													<option value="MS">Mississippi</option>
													<option value="MO">Missouri</option>
													<option value="MT">Montana</option>
													<option value="NE">Nebraska</option>
													<option value="NV">Nevada</option>
													<option value="NH">New Hampshire</option>
													<option value="NJ">New Jersey</option>
													<option value="NM">New Mexico</option>
													<option value="NY">New York</option>
													<option value="NC">North Carolina</option>
													<option value="ND">North Dakota</option>
													<option value="OH">Ohio</option>
													<option value="OK">Oklahoma</option>
													<option value="OR">Oregon</option>
													<option value="PA">Pennsylvania</option>
													<option value="RI">Rhode Island</option>
													<option value="SC">South Carolina</option>
													<option value="SD">South Dakota</option>
													<option value="TN">Tennessee</option>
													<option value="TX">Texas</option>
													<option value="UT">Utah</option>
													<option value="VT">Vermont</option>
													<option value="VA">Virginia</option>
													<option value="WA">Washington</option>
													<option value="WV">West Virginia</option>
													<option value="WI">Wisconsin</option>
													<option value="WY">Wyoming</option>
												</select>
											</div>
											<div class="medium-1 large-3 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="resource-zipcode/1-1" class="right inline">ZIP code:</label>
											</div>
											<div class="medium-4 large-3 columns">
												<input type="text" id="resource-zipcode/1-1"
													name="resource-zipcode/1-1" placeholder="">
											</div>
											<div class="medium-1 large-3 columns"></div>
										</div>
										<div class="row">
											<div class="medium-4 large-3 columns">
												<label for="resource-country/1-1" class="right inline">Country:</label>
											</div>
											<div class="medium-4 large-3 columns">
												<select id="resource-country/1-1"
													name="resource-country/1-1">
													<option value="USA">USA</option>
													<option value="Afganistan">Afghanistan</option>
													<option value="Albania">Albania</option>
													<option value="Algeria">Algeria</option>
													<option value="American Samoa">American Samoa</option>
													<option value="Andorra">Andorra</option>
													<option value="Angola">Angola</option>
													<option value="Anguilla">Anguilla</option>
													<option value="Antigua &amp; Barbuda">Antigua
														&amp; Barbuda</option>
													<option value="Argentina">Argentina</option>
													<option value="Armenia">Armenia</option>
													<option value="Aruba">Aruba</option>
													<option value="Australia">Australia</option>
													<option value="Austria">Austria</option>
													<option value="Azerbaijan">Azerbaijan</option>
													<option value="Bahamas">Bahamas</option>
													<option value="Bahrain">Bahrain</option>
													<option value="Bangladesh">Bangladesh</option>
													<option value="Barbados">Barbados</option>
													<option value="Belarus">Belarus</option>
													<option value="Belgium">Belgium</option>
													<option value="Belize">Belize</option>
													<option value="Benin">Benin</option>
													<option value="Bermuda">Bermuda</option>
													<option value="Bhutan">Bhutan</option>
													<option value="Bolivia">Bolivia</option>
													<option value="Bonaire">Bonaire</option>
													<option value="Bosnia &amp; Herzegovina">Bosnia
														&amp; Herzegovina</option>
													<option value="Botswana">Botswana</option>
													<option value="Brazil">Brazil</option>
													<option value="British Indian Ocean Ter">British
														Indian Ocean Ter</option>
													<option value="Brunei">Brunei</option>
													<option value="Bulgaria">Bulgaria</option>
													<option value="Burkina Faso">Burkina Faso</option>
													<option value="Burundi">Burundi</option>
													<option value="Cambodia">Cambodia</option>
													<option value="Cameroon">Cameroon</option>
													<option value="Canada">Canada</option>
													<option value="Canary Islands">Canary Islands</option>
													<option value="Cape Verde">Cape Verde</option>
													<option value="Cayman Islands">Cayman Islands</option>
													<option value="Central African Republic">Central
														African Republic</option>
													<option value="Chad">Chad</option>
													<option value="Channel Islands">Channel Islands</option>
													<option value="Chile">Chile</option>
													<option value="China">China</option>
													<option value="Christmas Island">Christmas Island</option>
													<option value="Cocos Island">Cocos Island</option>
													<option value="Colombia">Colombia</option>
													<option value="Comoros">Comoros</option>
													<option value="Congo">Congo</option>
													<option value="Cook Islands">Cook Islands</option>
													<option value="Costa Rica">Costa Rica</option>
													<option value="Cote DIvoire">Cote D'Ivoire</option>
													<option value="Croatia">Croatia</option>
													<option value="Cuba">Cuba</option>
													<option value="Curaco">Curacao</option>
													<option value="Cyprus">Cyprus</option>
													<option value="Czech Republic">Czech Republic</option>
													<option value="Denmark">Denmark</option>
													<option value="Djibouti">Djibouti</option>
													<option value="Dominica">Dominica</option>
													<option value="Dominican Republic">Dominican
														Republic</option>
													<option value="East Timor">East Timor</option>
													<option value="Ecuador">Ecuador</option>
													<option value="Egypt">Egypt</option>
													<option value="El Salvador">El Salvador</option>
													<option value="Equatorial Guinea">Equatorial
														Guinea</option>
													<option value="Eritrea">Eritrea</option>
													<option value="Estonia">Estonia</option>
													<option value="Ethiopia">Ethiopia</option>
													<option value="Falkland Islands">Falkland Islands</option>
													<option value="Faroe Islands">Faroe Islands</option>
													<option value="Fiji">Fiji</option>
													<option value="Finland">Finland</option>
													<option value="France">France</option>
													<option value="French Guiana">French Guiana</option>
													<option value="French Polynesia">French Polynesia</option>
													<option value="French Southern Ter">French
														Southern Ter</option>
													<option value="Gabon">Gabon</option>
													<option value="Gambia">Gambia</option>
													<option value="Georgia">Georgia</option>
													<option value="Germany">Germany</option>
													<option value="Ghana">Ghana</option>
													<option value="Gibraltar">Gibraltar</option>
													<option value="Great Britain">Great Britain</option>
													<option value="Greece">Greece</option>
													<option value="Greenland">Greenland</option>
													<option value="Grenada">Grenada</option>
													<option value="Guadeloupe">Guadeloupe</option>
													<option value="Guam">Guam</option>
													<option value="Guatemala">Guatemala</option>
													<option value="Guinea">Guinea</option>
													<option value="Guyana">Guyana</option>
													<option value="Haiti">Haiti</option>
													<option value="Hawaii">Hawaii</option>
													<option value="Honduras">Honduras</option>
													<option value="Hong Kong">Hong Kong</option>
													<option value="Hungary">Hungary</option>
													<option value="Iceland">Iceland</option>
													<option value="India">India</option>
													<option value="Indonesia">Indonesia</option>
													<option value="Iran">Iran</option>
													<option value="Iraq">Iraq</option>
													<option value="Ireland">Ireland</option>
													<option value="Isle of Man">Isle of Man</option>
													<option value="Israel">Israel</option>
													<option value="Italy">Italy</option>
													<option value="Jamaica">Jamaica</option>
													<option value="Japan">Japan</option>
													<option value="Jordan">Jordan</option>
													<option value="Kazakhstan">Kazakhstan</option>
													<option value="Kenya">Kenya</option>
													<option value="Kiribati">Kiribati</option>
													<option value="Korea North">Korea North</option>
													<option value="Korea Sout">Korea South</option>
													<option value="Kuwait">Kuwait</option>
													<option value="Kyrgyzstan">Kyrgyzstan</option>
													<option value="Laos">Laos</option>
													<option value="Latvia">Latvia</option>
													<option value="Lebanon">Lebanon</option>
													<option value="Lesotho">Lesotho</option>
													<option value="Liberia">Liberia</option>
													<option value="Libya">Libya</option>
													<option value="Liechtenstein">Liechtenstein</option>
													<option value="Lithuania">Lithuania</option>
													<option value="Luxembourg">Luxembourg</option>
													<option value="Macau">Macau</option>
													<option value="Macedonia">Macedonia</option>
													<option value="Madagascar">Madagascar</option>
													<option value="Malaysia">Malaysia</option>
													<option value="Malawi">Malawi</option>
													<option value="Maldives">Maldives</option>
													<option value="Mali">Mali</option>
													<option value="Malta">Malta</option>
													<option value="Marshall Islands">Marshall Islands</option>
													<option value="Martinique">Martinique</option>
													<option value="Mauritania">Mauritania</option>
													<option value="Mauritius">Mauritius</option>
													<option value="Mayotte">Mayotte</option>
													<option value="Mexico">Mexico</option>
													<option value="Midway Islands">Midway Islands</option>
													<option value="Moldova">Moldova</option>
													<option value="Monaco">Monaco</option>
													<option value="Mongolia">Mongolia</option>
													<option value="Montserrat">Montserrat</option>
													<option value="Morocco">Morocco</option>
													<option value="Mozambique">Mozambique</option>
													<option value="Myanmar">Myanmar</option>
													<option value="Nambia">Nambia</option>
													<option value="Nauru">Nauru</option>
													<option value="Nepal">Nepal</option>
													<option value="Netherland Antilles">Netherland
														Antilles</option>
													<option value="Netherlands">Netherlands (Holland,
														Europe)</option>
													<option value="Nevis">Nevis</option>
													<option value="New Caledonia">New Caledonia</option>
													<option value="New Zealand">New Zealand</option>
													<option value="Nicaragua">Nicaragua</option>
													<option value="Niger">Niger</option>
													<option value="Nigeria">Nigeria</option>
													<option value="Niue">Niue</option>
													<option value="Norfolk Island">Norfolk Island</option>
													<option value="Norway">Norway</option>
													<option value="Oman">Oman</option>
													<option value="Pakistan">Pakistan</option>
													<option value="Palau Island">Palau Island</option>
													<option value="Palestine">Palestine</option>
													<option value="Panama">Panama</option>
													<option value="Papua New Guinea">Papua New Guinea</option>
													<option value="Paraguay">Paraguay</option>
													<option value="Peru">Peru</option>
													<option value="Phillipines">Philippines</option>
													<option value="Pitcairn Island">Pitcairn Island</option>
													<option value="Poland">Poland</option>
													<option value="Portugal">Portugal</option>
													<option value="Puerto Rico">Puerto Rico</option>
													<option value="Qatar">Qatar</option>
													<option value="Republic of Montenegro">Republic of
														Montenegro</option>
													<option value="Republic of Serbia">Republic of
														Serbia</option>
													<option value="Reunion">Reunion</option>
													<option value="Romania">Romania</option>
													<option value="Russia">Russia</option>
													<option value="Rwanda">Rwanda</option>
													<option value="St Barthelemy">St Barthelemy</option>
													<option value="St Eustatius">St Eustatius</option>
													<option value="St Helena">St Helena</option>
													<option value="St Kitts-Nevis">St Kitts-Nevis</option>
													<option value="St Lucia">St Lucia</option>
													<option value="St Maarten">St Maarten</option>
													<option value="St Pierre &amp; Miquelon">St Pierre
														&amp; Miquelon</option>
													<option value="St Vincent &amp; Grenadines">St
														Vincent &amp; Grenadines</option>
													<option value="Saipan">Saipan</option>
													<option value="Samoa">Samoa</option>
													<option value="Samoa American">Samoa American</option>
													<option value="San Marino">San Marino</option>
													<option value="Sao Tome &amp; Principe">Sao Tome
														&amp; Principe</option>
													<option value="Saudi Arabia">Saudi Arabia</option>
													<option value="Senegal">Senegal</option>
													<option value="Serbia">Serbia</option>
													<option value="Seychelles">Seychelles</option>
													<option value="Sierra Leone">Sierra Leone</option>
													<option value="Singapore">Singapore</option>
													<option value="Slovakia">Slovakia</option>
													<option value="Slovenia">Slovenia</option>
													<option value="Solomon Islands">Solomon Islands</option>
													<option value="Somalia">Somalia</option>
													<option value="South Africa">South Africa</option>
													<option value="Spain">Spain</option>
													<option value="Sri Lanka">Sri Lanka</option>
													<option value="Sudan">Sudan</option>
													<option value="Suriname">Suriname</option>
													<option value="Swaziland">Swaziland</option>
													<option value="Sweden">Sweden</option>
													<option value="Switzerland">Switzerland</option>
													<option value="Syria">Syria</option>
													<option value="Tahiti">Tahiti</option>
													<option value="Taiwan">Taiwan</option>
													<option value="Tajikistan">Tajikistan</option>
													<option value="Tanzania">Tanzania</option>
													<option value="Thailand">Thailand</option>
													<option value="Togo">Togo</option>
													<option value="Tokelau">Tokelau</option>
													<option value="Tonga">Tonga</option>
													<option value="Trinidad &amp; Tobago">Trinidad
														&amp; Tobago</option>
													<option value="Tunisia">Tunisia</option>
													<option value="Turkey">Turkey</option>
													<option value="Turkmenistan">Turkmenistan</option>
													<option value="Turks &amp; Caicos Is">Turks &amp;
														Caicos Is</option>
													<option value="Tuvalu">Tuvalu</option>
													<option value="Uganda">Uganda</option>
													<option value="Ukraine">Ukraine</option>
													<option value="United Arab Erimates">United Arab
														Emirates</option>
													<option value="United Kingdom">United Kingdom</option>
													<option value="United States of America">United
														States of America</option>
													<option value="Uraguay">Uruguay</option>
													<option value="Uzbekistan">Uzbekistan</option>
													<option value="Vanuatu">Vanuatu</option>
													<option value="Vatican City State">Vatican City
														State</option>
													<option value="Venezuela">Venezuela</option>
													<option value="Vietnam">Vietnam</option>
													<option value="Virgin Islands (Brit)">Virgin
														Islands (Brit)</option>
													<option value="Virgin Islands (USA)">Virgin
														Islands (USA)</option>
													<option value="Wake Island">Wake Island</option>
													<option value="Wallis &amp; Futana Is">Wallis
														&amp; Futana Is</option>
													<option value="Yemen">Yemen</option>
													<option value="Zaire">Zaire</option>
													<option value="Zambia">Zambia</option>
													<option value="Zimbabwe">Zimbabwe</option>
												</select>
											</div>
											<div class="medium-1 large-3 columns"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div id="resource-organization-add" class="right plus"
									title="Add Organization">
									<span data-tooltip class="has-tip tip-top"
										title="Add a new Organization"><img src="img/plus.png"
										alt=""></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div id="resource-add" class="right plus" title="Add resource.">
								<span data-tooltip class="has-tip tip-top"
									title="Add a new Resource"><img src="img/plus.png"
									alt=""></span>
							</div>
						</div>
					</div>
				</div>
			</form>
			<form id="fileupload" action="/" method="POST"
				enctype="multipart/form-data">
				<div class="row">
					<a href="#upload-section" class="row large-12 section-toggle"><b
						class="caret"></b>File Attachments</a>
					<div id="upload-section" class="row section-content active">
						<!-- The file upload form used as target for the file upload widget -->
						<!-- Redirect browsers with JavaScript disabled to the origin page -->
						<!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
						<div class="row fileupload-buttonbar">
							<div class="large-7 columns">
								<!-- The fileinput-button span is used to style the file input field as button -->
								<span class="button fileinput-button"> <span>Add
										files...</span> <input type="file" name="files[]" multiple>
								</span>
								<button type="submit" class="button start">
									<span>upload</span>
								</button>
								<button type="reset" class="button cancel">
									<span>Cancel upload</span>
								</button>
								<button type="button" class="button delete">
									<span>Delete</span>
								</button>
								<input type="checkbox" class="toggle">
								<!-- The global file processing state -->
								<span class="fileupload-process"></span>
							</div>
							<!-- The global progress state -->
							<div class="large-5 fileupload-progress columns fade">
								<!-- The global progress bar -->
								<div class="progress small-12 round columns" role="progressbar">
									<span class="meter" style="width: 0%;"></span>
								</div>
								<!-- The extended global progress state -->
								<div class="progress-extended">&nbsp;</div>
							</div>
						</div>
						<!-- The table listing the files available for upload/download -->
						<table role="presentation" class="small-12 table table-striped">
							<tbody class="files"></tbody>
						</table>
					</div>
				</div>
			</form>
			<form id="dummy-form" action="/">
				<div class="row">
					<div class="row section-content submit-container">
						<input class="button" type="submit">
					</div>
				</div>
			</form>
		</div>
	</div>
	<script src="js/vendor/jquery.js"></script>
	<script src="js/vendor/jquery-ui-1.10.4.custom.min.js"></script>
	<script src="js/foundation.min.js"></script>
	<script src="js/app.js"></script>
	<!-- 	for file uploader -->
	<script
		src="http://blueimp.github.io/JavaScript-Templates/js/tmpl.min.js"></script>
	<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
	<script
		src="http://blueimp.github.io/JavaScript-Load-Image/js/load-image.min.js"></script>
	<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
	<script src="fileUploader/js/jquery.iframe-transport.js"></script>
	<!-- The basic File Upload plugin -->
	<script src="fileUploader/js/jquery.fileupload.js"></script>
	<!-- The File Upload processing plugin -->
	<script src="fileUploader/js/jquery.fileupload-process.js"></script>
	<!-- The File Upload image preview & resize plugin -->
	<script src="fileUploader/js/jquery.fileupload-image.js"></script>
	<!-- The File Upload validation plugin -->
	<script src="fileUploader/js/jquery.fileupload-validate.js"></script>
	<!-- The File Upload user interface plugin -->
	<script src="fileUploader/js/jquery.fileupload-ui.js"></script>
	<!-- The main application script -->
	<script src="fileUploader/js/main.js"></script>
	<!-- The template to display files available for upload -->
	<script id="template-upload" type="text/x-tmpl">
    {% for (var i=0, file; file=o.files[i]; i++) { %}
        <tr class="template-upload fade">
            <td>
                <span class="preview"></span>
            </td>
            <td>
                <p class="name">{%=file.name%}</p>
                <strong class="error text-danger"></strong>
            </td>
            <td>
                <p class="size">Processing...</p>
                <div class="progress round" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><span class="meter" style="width:0%;"></div></div>
            </td>
            <td>
                {% if (!i && !o.options.autoUpload) { %}
                    <button class="button start" disabled>
                        <span>Start</span>
                    </button>
                {% } %}
                {% if (!i) { %}
                    <button class="button cancel">
                        <span>Cancel</span>
                    </button>
                {% } %}
            </td>
        </tr>
    {% } %}
    </script>
	<!-- The template to display files available for download -->
	<script id="template-download" type="text/x-tmpl">
    {% for (var i=0, file; file=o.files[i]; i++) { %}
        <tr class="template-download fade">
            <td>
                <span class="preview">
                    {% if (file.thumbnailUrl) { %}
                        <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                    {% } %}
                </span>
            </td>
            <td>
                <p class="name">
                    {% if (file.url) { %}
                        <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                    {% } else { %}
                        <span>{%=file.name%}</span>
                    {% } %}
                </p>
                {% if (file.error) { %}
                    <div><span class="label label-danger">Error</span> {%=file.error%}</div>
                {% } %}
            </td>
            <td>
                <span class="size">{%=o.formatFileSize(file.size)%}</span>
            </td>
            <td>
                {% if (file.deleteUrl) { %}
                    <button class="button delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                        <span>Delete</span>
                    </button>
                    <input type="checkbox" name="delete" value="1" class="toggle">
                {% } else { %}
                    <button class="button cancel">
                        <span>Cancel</span>
                    </button>
                {% } %}
            </td>
        </tr>
    {% } %}
    </script>
</body>

</html>
