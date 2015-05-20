<?php echo $loaderUI;?>
<?php $images_root_url = $base_url."assets/images/";?>

	<div class="row clearfix" style="margin:10px;">
		<div class="col-md-12 column" style="">
			<table align="center" width="100%" class="table table-condensed">
				<tbody>
					<tr class="success">
						<td align="center"><b>#</b></td>
						<td align="center"><b>Display Name / Full name</b></td>
						<td align="center"><b>Email Address</b></td>
						<td align="center"><b>Mobile Number</b></td>
						<td align="center"><b>Group</b></td>
						<td align="center"><b>Operations</b></td>
					</tr>
					<tr class="">
						<td colspan=6>&nbsp;</td>
					</tr>
					<?php $counter=1;?>
					<?php foreach($resultGetAll['list'] as $record):?>
						<?php $class = ($counter & 1)? "active":"";  ?>

						<tr class="<?php echo $class; ?>">
							<td align="center"><?php echo $counter++;?></td>
							<td align="center"><?php echo $record->ContactName;?></td>
							<td align="center"><?php echo $record->ContactEmailAddress;?></td>
							<td align="center"><?php echo $record->ContactMobileNo;?></td>
							<td align="center"><?php echo $record->GroupName;?></td>
							<td align="center">
								<img width="15" height="15" src="<?php echo $images_root_url."edit.png";?>" title="Edit <?php echo $record->ContactName?> Details"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<img width="15" height="15" src="<?php echo $images_root_url."disable.png";?>" title="Edit <?php echo $record->ContactName?> Details"  />
								
							</td>
						</tr>
					<?php endforeach;?>
				</tbody>
			</table>
		</div>
	</div>
