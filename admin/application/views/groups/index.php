<?php echo $loaderUI;?>
<?php $images_root_url = $base_url."assets/images/";?>

	<div class="row clearfix" style="margin:10px;">
		<div class="col-md-12 column" style="">
			<table align="center" width="100%" class="table table-condensed">
				<tbody>
					<tr class="success">
						<td align="center"><b>#</b></td>
						<td align="center"><b>Group Name</b></td>
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
							<td align="center"><?php echo $record->GroupName;?></td>
							<td align="center">
									<a href='<?php echo $base_url?>groups/load/<?php echo $record->LMGroupId;?>'><img width="15" height="15" src="<?php echo $images_root_url."edit.png";?>" title="Edit <?php echo $record->GroupName?> Details"  /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<?php if($record->GroupStatus == 1):?>
									<a href='<?php echo $base_url?>groups/disable/<?php echo $record->LMGroupId?>' title="Disable <?php echo $record->GroupName;?>">
									<img width="15" height="15" src="<?php echo $images_root_url."disable.png";?>"  />
									</a>
								<?php else:?>
									<a href='<?php echo $base_url?>groups/enable/<?php echo $record->LMGroupId?>' title="Enable <?php echo $record->GroupName;?>">
									<img width="15" height="15" src="<?php echo $images_root_url."enable.png";?>"  />
									</a>
								<?php endif;?>
								
							</td>
						</tr>
					<?php endforeach;?>
				</tbody>
			</table>
		</div>
	</div>
