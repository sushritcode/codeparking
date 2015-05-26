<?php echo $loaderUI;?>
<div class="col-md-2 column"></div>
<div class="col-md-6 column">

<form name="importcontact" id="importcontact" class="form-horizontal" method="POST" action="<?php echo $base_url;?>contacts/savecsv"  enctype="multipart/form-data" style="margin:80px 25px 13px 30px;" onclick="javascript:document.getElementById('resultDiv').style.display='none';"> 
<fieldset>

<!-- Form Name -->
<legend>Import Contacts</legend>

<!-- Error Div -->
<?php if(isset($error_msg)):?>
<?php if($error_msg !=""):?>
<div id="resultDiv" class="control-group" style="">
  <label for="error-success" class="control-label"></label>
  <div class="controls">
	<p id="resultMessage"><?php echo $error_msg;?></p>
  </div>
</div>
<?php endif;?>
<?php endif;?>


<!-- File Button --> 
<div class="control-group">
  <label class="control-label fl" for="selectFile">Select *.csv File</label>
  <div class="controls fl" style="margin:5px 5px 5px 25px;">
    <input id="selectFile" name="selectFile" class="input-file" type="file" required>
  </div>
  <div class="cl"></div>
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
  <label class="control-label" for="selectbutton"></label>
  <div class="controls">
    <input type="submit" id="selectbutton" name="selectbutton" class="btn btn-success" value="Submit"/>
  </div>
</div>

</fieldset>
</form>
</div>
<?php print_r($resultInsert); ?>
