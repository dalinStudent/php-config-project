<?php 
extract($_POST);
if(isset($save))
{

	if($fn=="" || $ln=="" || $group=="" || $gen=="")
	{
	$err="<font color='red'>fill all the fileds first</font>";	
	}
	else
	{
$sql=mysqli_query($conn,"select * from member where first_name='$fn' and group_id='$group'");
$r=mysqli_num_rows($sql);
		if($r!=true)
		{
		mysqli_query($conn,"insert into member values('','$fn','$ln','$gen','$group',now())");
		
		header("Location: index.php?page=display_member", TRUE, 301);
		exit();
		}
		
		else
		{

	$err="<font color='red'>This member and Group already exists</font>";
		
		}
	}
}

?>

<h2 class="page-header">Add New Member</h2>
<div class="container">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6"><?php echo @$err;?>
			<div class="card">
				<div class="card-body">
					<form method="post">
						<div class="form-group">
      						<label for="first-name">Enter Member First Name:</label>
      						<input type="text" class="form-control" id="fn" name="fn">
    					</div>
						<div class="form-group">
      						<label for="last-name">Enter Member Last Name:</label>
      						<input type="text" class="form-control" id="ln" name="ln">
    					</div> 
						<div class="form-group">
      						<label for="group">Choose Group:</label>
      						<select name="group" class="form-control" required>
								<option value="">Select Group</option>
								<?php 
									$q1=mysqli_query($conn,"select * from groups");
									while($r1=mysqli_fetch_assoc($q1))
									{
									echo "<option value='".$r1['group_id']."'>".$r1['group_name']."</option>";
									}
								?>
							</select>
    					</div>
						<div class="form-group">
      						<label for="gender">Gender:</label>
						Male <input type="radio" name="gen" value="m" required/>
						Female <input type="radio" name="gen" value="f" />
    					</div>
						<input type="submit" value="Add New Member" name="save" class="btn btn-success"/>
						<input type="reset" class="btn btn-danger"/>
					</from>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>