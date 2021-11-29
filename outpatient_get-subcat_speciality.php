<?php
include "outconfig.php";
$category_id = $_POST["category_id"];
$result = mysqli_query($con, "SELECT * FROM Doctor_Data where parent_id = $category_id");
?>
<option value="">Doctor Name</option>
<?php
while ($row = mysqli_fetch_array($result)) {
    ?>
    <option value="<?php echo $row["id"]; ?>"><?php echo $row["category"]; ?></option>
    <?php
}
?>