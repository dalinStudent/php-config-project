<?php 
$search=$_POST['searchGroup'];
$q=mysqli_query($conn,"select * from groups where group_name='$search' or 	registration_number='$search'");
$rr=mysqli_num_rows($q);
if(!$rr)
{
echo "<h2 style='color:red'>No any Records exists !!!</h2>";
}
else
{
?>
<script>
	function DeleteGrop(id)
	{
		if(confirm("You want to delete this Group ?"))
		{
		window.location.href="delete_group.php?id="+id;
		}
	}
</script>

<table class="table table-bordered">
	
	
	<tr>
		<td colspan="16"><a href="index.php?page=display_group">Go Back to Group Page</a></td>
	</tr>
	<Tr class="active">
		<th>Sr.No</th>
		<th>Group Name</th>
		<th>Region</th>
		<th>district</th>
		<th>Reg No</th>
		<th>Activity</th>
		<th>Category</th>
		<th>Total Member</th>
		<th>Leader</th><th>loan</th>
		<th>Capital</th>
		<th>Delete</th>
	</Tr>
		<?php 


$i=1;
while($row=mysqli_fetch_assoc($q))
{

echo "<Tr>";
echo "<td>".$i."</td>";
echo "<td>".$row['group_name']."</td>";
echo "<td>".$row['region']."</td>";
echo "<td>".$row['district']."</td>";
echo "<td>".$row['registration_number']."</td>";
echo "<td>".$row['group_activity']."</td>";
echo "<td>".$row['group_category']."</td>";
echo "<td>".$row['group_total_members']."</td>";
echo "<td>".$row['group_leader']."</td>";
echo "<td>".$row['loan_information']."</td>";
echo "<td>".$row['group_capital']."</td>";
?>

<Td><a href="javascript:DeleteGrop('<?php echo $row['group_id']; ?>')" style='color:Red'><span class='glyphicon glyphicon-trash'></span></a></td>

<!-- <Td><a href="index.php?page=update_group" style='color:green'><span class='glyphicon glyphicon-edit'></span></a></td> -->

<?php 
echo "</Tr>";
$i++;
}
		?>
		
</table>
<?php }?>