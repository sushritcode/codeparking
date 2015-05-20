<?php echo $loaderUI;?>
<div class="col-md-3 column"></div>
<div class="col-md-3 column">
	<form class="form-horizontal" style="margin:80px 25px 13px 30px;" name="addContact" action=<?php echo $base_url."contacts/update";?> method="POST" onclick="javascript:document.getElementById('resultDiv').style.display='none';">
	<input type="hidden" name="contactID" value='<?php echo $resultGetDetails->ContactId;?>'>
	<fieldset>

	<!-- Form Name -->
	<legend>Add Contact Details</legend>

	<!-- Error Div -->
  	<div id="resultDiv" class="control-group" style="display:none;">
	  <label for="error-success" class="control-label"></label>
	  <div class="controls">
	        <p id="resultMessage"></p>
	  </div>
	</div>

	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="contactName"></label>
	  <div class="controls">
	    <input id="contactName" name="contactName" placeholder="Full Name / Display Name" class="input-xlarge" required="" type="text" value='<?php echo $resultGetDetails->$form_table_map["addContact"]["contactName"];?>'>
	    
	  </div>
	</div>

	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="contactEmail"></label>
	  <div class="controls">
	    <input id="contactEmail" name="contactEmail" placeholder="Email Address" class="input-xlarge" required="" type="text"  value='<?php echo $resultGetDetails->$form_table_map["addContact"]["contactEmail"];?>' >
	    
	  </div>
	</div>

	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="contactMobile"></label>
	  <div class="controls">
	    <input id="contactMobile" name="contactMobile" placeholder="Mobile Number" class="input-xlarge" required="" type="text"  value='<?php echo $resultGetDetails->$form_table_map["addContact"]["contactMobile"];?>'>
	    
	  </div>
	</div>

	<!-- Select Basic -->
	<div class="control-group">
	  <label class="control-label" for="groupName"></label>
	  <div class="controls">
	    <select id="groupName" name="groupName" class="input-xlarge" required>
	      <option value="">Select Group</option>
		<?php foreach($contacts_group as $record):?>	
			<?php $selected = ($resultGetDetails->$form_table_map["addContact"]["groupName"] == $record->LMGroupId)? "SELECTED":""?>
	      		<option value="<?php echo $record->LMGroupId;?>" <?php echo $selected;?>><?php echo $record->GroupName;?></option>
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
