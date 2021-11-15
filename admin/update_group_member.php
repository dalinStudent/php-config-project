<?php 
extract($_POST);
if(isset($save))
{

mysqli_query($conn,"update member set first_name='$fn',last_name='$ln',gender='$gen',group_id='$group' where member_id='".$_GET['member_id']."' ");
		
$err="<font color='blue'>Members Updated</font>";
		
}

$sql=mysqli_query($conn,"select * from member where member_id='".$_GET['member_id']."'");
$r=mysqli_fetch_array($sql);

?>
<h2 class="page-header">Update Member Information</h2>
<div class="container">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6"><?php echo @$err;?>
			<div class="card">
				<div class="card-body">
					<form method="post">
						<div class="form-group">
      						<label for="first-name">Enter Member First Name:</label>
      						<input type="text" value="<?php echo $r[1]; ?>" class="form-control" id="fn" name="fn">
    					</div>
						<div class="form-group">
      						<label for="last-name">Enter Member Last Name:</label>
      						<input type="text" value="<?php echo $r[2]; ?>" class="form-control" id="ln" name="ln">
    					</div> 
						<div class="form-group">
      						<label for="group">Choose Group:</label>
      						<select name="group" class="form-control" required>
								<option value="">Select Group</option>
								<?php 
									$q1=mysqli_query($conn,"select * from groups");
										while($r1=mysqli_fetch_assoc($q1))
										{
											?>
											<option <?php if($r[4]==$r1['group_id']){echo "selected";} ?> 
											value="<?php echo  $r1['group_id'];?> "><?php echo $r1['group_name']; ?></option>
											<?php 
										}
									?>
							</select>
    					</div>
						<div class="form-group">
      						<label for="gender">Gender:</label>
						Male <input type="radio" <?php if($r[3]=="m"){echo "checked";} ?> name="gen" value="m" required/>
						Female <input type="radio" <?php if($r[3]=="f"){echo "checked";} ?> name="gen" value="f" />
    					</div>
						<input type="submit" value="Update Member" name="save" class="btn btn-success"/>
						<input type="reset" class="btn btn-danger"/>
					</from>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>