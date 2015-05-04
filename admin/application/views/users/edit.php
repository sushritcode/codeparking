<div class="container">
	<div class="row clearfix">
		<div class="col-md-10 column">
			<div class="carousel slide corosolHtmBox" id="carousel-144227"  data-interval="false">
				<!--ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-144227" style="border:1px solid">
					</li>
					<li data-slide-to="1" data-target="#carousel-144227">
					</li>
					<li data-slide-to="2" data-target="#carousel-144227">
					</li>
				</ol-->
				<div class="carousel-inner">
					<div class="item corosolHtmItem active">
						<div class="row">
							 <div class="col-md-2 stepsRegistration active">1 of 6</div>
							 <div class="col-md-2 stepsRegistration">2 of 6</div>
							 <div class="col-md-2 stepsRegistration">3 of 6</div>
							 <div class="col-md-2 stepsRegistration">4 of 6</div>
							 <div class="col-md-2 stepsRegistration">5 of 6</div>
						</div>
						<form class="form-horizontal" name="basic-details">
<fieldset>
<!-- Form Name -->
<legend>Basic Details</legend>
<!-- Select Basic -->
<div class="elementContainer">
<div class="form-group">
  <label class="col-md-4 control-label" for="selectbasic"></label>
  <div class="col-md-5">
    <select id="selectbasic" name="selectbasic" class="form-control">
      <option value="" selected>Industry Type</option>
	 <?php foreach ($recordSetIndustry as $record): ?>
      		<option value="<?php echo $record->Industryid?>"><?php echo $record->IndustryName;?></option>
	 <?php endforeach; ?>
    </select>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="companyname"></label>  
  <div class="col-md-5">
  <input id="companyname" name="companyname" placeholder="Company Name" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="natureofbusiness"></label>  
  <div class="col-md-5">
  <input id="natureofbusiness" name="natureofbusiness" placeholder="Nature of Bussiness" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="displayName"></label>  
  <div class="col-md-5">
  <input id="displayName" name="displayName" placeholder="Display Name" class="form-control input-md" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="companyURL"></label>  
  <div class="col-md-5">
  <input id="companyURL" name="companyURL" placeholder="Company URI" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="briefDescription"></label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="briefDescription" name="briefDescription">Brief Description Of Company</textarea>
  </div>
</div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="skip"></label>
  <div class="col-md-12">
    <!--button id="skip" name="skip" class="btn btn-success">Skip &gt;&gt;</button-->
    <button id="SaveandNext" name="SaveandNext" class="btn btn-success fr" data-slide-to="" data-target="#carousel-144227" next-slide="1" onClick="javascript:slideCorosal(this);">Save and Next</button>
  </div>
</div>
<div class="cl"></div>


</fieldset>
</form>

					</div>
					<div class="item corosolHtmItem">
						<div class="row">
							 <div class="col-md-2 stepsRegistration">1 of 6</div>
							 <div class="col-md-2 stepsRegistration active">2 of 6</div>
							 <div class="col-md-2 stepsRegistration">3 of 6</div>
							 <div class="col-md-2 stepsRegistration">4 of 6</div>
							 <div class="col-md-2 stepsRegistration">5 of 6</div>
						</div>

						<form class="form-horizontal" name="cntact-details">
<fieldset>

<!-- Form Name -->
<legend>Contact Details</legend>

<div class="elementContainer">
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="phone1"></label>  
  <div class="col-md-5">
  <input id="phone1" name="phone1" placeholder="Phone #1" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="phone2"></label>  
  <div class="col-md-5">
  <input id="phone2" name="phone2" placeholder="Phone #2" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="mobile"></label>  
  <div class="col-md-5">
  <input id="mobile" name="mobile" placeholder="Mobile Number" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="SecondryEmail"></label>  
  <div class="col-md-5">
  <input id="SecondryEmail" name="SecondryEmail" placeholder="Secondry Email Id" class="form-control input-md" required="" type="text">
    
  </div>
</div>
</div>
<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="skip"></label>
  <div class="col-md-12">
    <button id="previous" name="previous1" class="btn btn-success fl" data-slide-to="0" data-target="#carousel-144227" >Previous</button>
    <button id="SaveandNext1" name="SaveandNext1" class="btn btn-success fr" data-slide-to="" data-target="#carousel-144227" next-slide="2" onClick="javascript:slideCorosal(this);" >Save and Next</button>
  </div>
</div>
<div class="cl"></div>

</fieldset>
</form>

					</div>
					<div class="item corosolHtmItem">
						<div class="row">
							 <div class="col-md-2 stepsRegistration">1 of 6</div>
							 <div class="col-md-2 stepsRegistration">2 of 6</div>
							 <div class="col-md-2 stepsRegistration active">3 of 6</div>
							 <div class="col-md-2 stepsRegistration">4 of 6</div>
							 <div class="col-md-2 stepsRegistration">5 of 6</div>
						</div>

						<form class="form-horizontal" name="address-details">
<fieldset>

<!-- Form Name -->
<legend>Address Details</legend>

<div class="elementContainer">
<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="address1"></label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="address1" name="address1">Primary Address</textarea>
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="address2"></label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="address2" name="address2">Address #1</textarea>
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="address3"></label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="address3" name="address3">Address #2</textarea>
  </div>
</div>
</div>
<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="skip"></label>
  <div class="col-md-12">
    <button id="skip" name="skip" class="btn btn-success fl"   data-slide-to="1" data-target="#carousel-144227"   data-slide-to="3" data-target="#carousel-144227"  >Previous</button>
    <button id="SaveandNext2" name="SaveandNext2" class="btn btn-success fr"  data-slide-to="" data-target="#carousel-144227" next-slide="3" onClick="javascript:slideCorosal(this);" >Save and Next</button>
  </div>
</div>
<div class="cl"></div>

</fieldset>
</form>

					</div>
					<div class="item corosolHtmItem">
						<div class="row">
							 <div class="col-md-2 stepsRegistration">1 of 6</div>
							 <div class="col-md-2 stepsRegistration">2 of 6</div>
							 <div class="col-md-2 stepsRegistration">3 of 6</div>
							 <div class="col-md-2 stepsRegistration active">4 of 6</div>
							 <div class="col-md-2 stepsRegistration">5 of 6</div>
						</div>

						<form class="form-horizontal" name="social-media">
<fieldset>

<!-- Form Name -->
<legend>Social Media</legend>

<div class="elementContainer">
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="facebookid"></label>  
  <div class="col-md-5">
  <input id="facebookid" name="facebookid" placeholder="Facebook" class="form-control input-md" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="twitter"></label>  
  <div class="col-md-5">
  <input id="twitter" name="twitter" placeholder="Twitter" class="form-control input-md" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="googleplus"></label>  
  <div class="col-md-5">
  <input id="googleplus" name="googleplus" placeholder="Google +" class="form-control input-md" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="linkedin"></label>  
  <div class="col-md-5">
  <input id="linkedin" name="linkedin" placeholder="Linked In" class="form-control input-md" type="text">
    
  </div>
</div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="skip"></label>
  <div class="col-md-12">
    <button id="skip" name="skip" class="btn btn-success fl"   data-slide-to="2" data-target="#carousel-144227"    data-slide-to="4" data-target="#carousel-144227"   >Previous</button>
    <button id="SaveandNext3" name="SaveandNext3" class="btn btn-success fr"   data-slide-to="" data-target="#carousel-144227" next-slide="4" onClick="javascript:slideCorosal(this);"  >Save and Next</button>
  </div>
</div>
<div class="cl"></div>

</fieldset>
</form>

					</div>
					<div class="item corosolHtmItem">
						<div class="row">
							 <div class="col-md-2 stepsRegistration">1 of 6</div>
							 <div class="col-md-2 stepsRegistration">2 of 6</div>
							 <div class="col-md-2 stepsRegistration">3 of 6</div>
							 <div class="col-md-2 stepsRegistration">4 of 6</div>
							 <div class="col-md-2 stepsRegistration active">5 of 6</div>
						</div>
	
						<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Billing And Localisation</legend>

<div class="elementContainer">
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="billersName"></label>  
  <div class="col-md-5">
  <input id="billersName" name="billersName" placeholder="Billers name" class="form-control input-md" type="text">
    
  </div>
</div>

<!-- Select Multiple -->
<div class="form-group">
  <label class="col-md-4 control-label" for="currency"></label>
  <div class="col-md-5">
    <select id="currency" name="currency" class="form-control" multiple="multiple">
      <option value="" selected>Select Currency</option>
	 <?php foreach ($recordSetCurrency as $record): ?>
      		<option value="<?php echo $record->id_countries?>" ><?php echo $record->countryname." (".$record->currency_code."-".$record->currency_name."-".$record->currency_symbol.") ";?></option>
	<?php endforeach;?>
       
    </select>
  </div>
</div>

<!-- Select Multiple -->
<div class="form-group">
  <label class="col-md-4 control-label" for="timezones"></label>
  <div class="col-md-5">
    <select id="timezones" name="timezones" class="form-control" multiple="multiple">
      <option value="" selected>Select Time Zones</option>
	 <?php foreach ($recordSetTimeZone as $record): ?>
      		<option value="<?php echo $record->id?>" selected><?php echo $record->timezone." - ".$record->name;?></option>
	<?php endforeach;?>
    </select>
  </div>
</div>
</div>
<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="skip"></label>
  <div class="col-md-12">
    <button id="skip" name="skip" class="btn btn-success fl"   data-slide-to="3" data-target="#carousel-144227"  >Previous</button>
    <button id="done" name="done" class="btn btn-success fr" next-slide="1" onClick="javascript:slideCorosal(this);">Done</button>
  </div>
</div>
<div class="cl"></div>

</fieldset>
</form>

					</div>

				</div> 
			</div>
		</div>
	</div>
</div>
	
