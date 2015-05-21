<?php echo $loaderUI;?>
<div class="col-md-3 column"></div>
<div class="col-md-3 column">
	<form class="form-horizontal" style="margin:80px 25px 13px 30px;" name="addGroup" action=<?php echo $base_url."groups/update";?> method="POST" onclick="javascript:document.getElementById('resultDiv').style.display='none';">
	<input type="hidden" name="LMGroupId" value="<?php echo $resultGetDetails->LMGroupId?>">
	<fieldset>

	<!-- Form Name -->
	<legend>Edit Group</legend>

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
	    <input id="groupName" name="groupName" placeholder="Group Name" class="input-xlarge" required="" type="text" value='<?php echo $resultGetDetails->$form_table_map["addGroup"]["groupName"];?>'>
	    
	  </div>
	</div>

	<!-- Button -->
	<div class="control-group">
	  <label class="control-label" for="saveContact"></label>
	  <div class="controls">
	    <input type="button" id="saveGroup" name="saveGroup" class="btn btn-success" onClick="javascript:frmSubmit(document.forms['addGroup']);"  value="Save Group"> 
	  </div>
	</div>
	</fieldset>
	</form>
</div>
