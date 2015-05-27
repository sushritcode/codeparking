<?php echo $loaderUI;?>
<div class="col-md-2 column"></div>
<div class="col-md-8 column">

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
<br/>
<br/>
<br/>
<?php if(isset($resultInsert)):?>
	<table class="table table-condensed">
	<?php $keyFlag = ""; $count=1;?>
	<?php foreach($resultInsert as $key => $record):?>
		<?php if($key != $keyFlag):?>
			<?php 
				if($key =="success"):
					$class="success";
					$caption  = "Inserted Contacts";
				elseif ($key=="fail"):
					$class="warning";
					$caption  = "Incorrect Contacts";
				elseif($key=="dup"):
					$class="info";
					$caption  = "Duplicated Contacts";
				endif;
			?>
			<tr class="<?php echo $class;?>">
				<td colspan="4"><b><?php echo $caption;?></b></td>
			</tr>
		<?php endif;?>
		<?php if(count($record) == 0):?>

			<tr class="">
				<td colspan="4"><b><?php echo "No Contacts.";?></b></td>
			</tr>

		<?php endif;?>
		<?php for($i=0;$i < count($record);$i++):?>
			<tr>
				<td><?php echo $count;?></td>
				<td><?php echo $record[$i][0];?></td>
				<td><?php echo $record[$i][1];?></td>
				<td><?php echo $record[$i][2];?></td>
			</tr>
		<?php $count+=1;?>
		<?php endfor;?>
		<?php $keyFlag = $key;?>
	<?php endforeach;?>
	</table>
<?php endif;?>
</div>

