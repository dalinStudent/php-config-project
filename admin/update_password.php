<?php 
extract($_POST);
if(isset($save))
{

	if($np=="" || $cp=="" || $op=="")
	{
	$err="<font color='red'>fill all the fileds first</font>";	
	}
	else
	{
$sql=mysqli_query($conn,"select * from admin where pass='$op'");
$r=mysqli_num_rows($sql);
if($r==true)
{

	if($np==$cp)
	{
	
	$sql=mysqli_query($conn,"update admin set pass='$np' where user='$admin'");
	
	$err="<font color='blue'>Password updated successfully </font>";
	}
	else
	{
	$err="<font color='red'>New  password not matched with Confirm Password </font>";
	}
}

else
{

$err="<font color='red'>Wrong Old Password </font>";

}
}
}

?>
<h3 class="page-header">UPDATE PASSWORD</h3>
<div class="container">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6"><?php echo @$err;?>
			<div class="card">
				<div class="card-body">
					<form method="post">
						<div class="form-group">
      						<label for="old-pwd">Old Password:</label>
      						<input type="password" class="form-control" id="op" placeholder="Enter Your Old Password" name="op">
    					</div>
						<div class="form-group">
      						<label for="old-pwd">New Password:</label>
      						<input type="password" class="form-control" id="np" placeholder="Enter Your New Password" name="np">
    					</div>
						<div class="form-group">
      						<label for="old-pwd">Confirm New Password:</label>
      						<input type="password" class="form-control" id="cp" placeholder="Enter Your Confirm New Password" name="cp">
    					</div>
						<input type="submit" value="Update Password" name="save" class="btn btn-success"/>
						<input type="reset" class="btn btn-danger"/>
					</from>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>