<?php echo $loaderUI;?>
<div class="col-md-3 column"></div>
<div class="col-md-3 column">
	<form class="form-horizontal" style="margin:80px 25px 13px 30px;" name="addContact" action=<?php echo $base_url."contacts/save";?> method="POST">
	<fieldset>

	<!-- Form Name -->
	<legend>Add Contact Details</legend>

	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="contactName"></label>
	  <div class="controls">
	    <input id="contactName" name="contactName" placeholder="Full Name / Display Name" class="input-xlarge" required="" type="text">
	    
	  </div>
	</div>

	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="contactEmail"></label>
	  <div class="controls">
	    <input id="contactEmail" name="contactEmail" placeholder="Email Address" class="input-xlarge" required="" type="text">
	    
	  </div>
	</div>

	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="contactMobile"></label>
	  <div class="controls">
	    <input id="contactMobile" name="contactMobile" placeholder="Mobile Number" class="input-xlarge" required="" type="text">
	    
	  </div>
	</div>

	<!-- Select Basic -->
	<div class="control-group">
	  <label class="control-label" for="groupName"></label>
	  <div class="controls">
	    <select id="groupName" name="groupName" class="input-xlarge" required>
	      <option value="">Select Group</option>
		<?php foreach($contacts_group as $record):?>	
	      		<option value="<?php echo $record->LMGroupId;?>"><?php echo $record->GroupName;?></option>
		<?php endforeach?>
	    </select>
	  </div>
	</div>
	<!-- Button -->
	<div class="control-group">
	  <label class="control-label" for="saveContact"></label>
	  <div class="controls">
	    
	    <input type="button" id="saveContact" name="saveContact" class="btn btn-success" onClick="javascript:frmSubmit(document.forms['addContact']);"  value="Save Contact"> 
	  </div>
	</div>
	</fieldset>
	</form>
</div>
