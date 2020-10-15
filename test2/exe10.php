<?php 



 $burgers = 4.95;
 $totalBurgers = $burgers*2;
 $chocoMilkshaake = 1.95;
 $cola = 0.85;
 
 $totalCost = $totalBurgers+$chocoMilkshaake+$cola;
 
 $saleTax = $totalCost*0.075; 
 
 $postTax = $totalCost + $saleTax;
 $preTax = $totalCost*0.16; 
 
 $myTax = $preTax - $saleTax; 
 

 $totalBill = $totalCost - $myTax;
 
 
 


 echo "<table border='0' cellspacing='0' cellpadding='5' style='width: 800px; line-height:50px; margin: 0 auto; border:1px solid #eee; padding: 10px; padding-left:30px; margin-top: 10%;'><tr><td><b>Name</b></td><td><b>Price</b></td><td><b>Quantity</b></td><td><b>Total</b></td></tr><tr><td>Hamburgers</td><td>$ ".$burgers."</td><td>2</td><td>$ ".$totalBurgers."</td></tr><tr><td>Chocolate Milkshake</td><td>$ ".$chocoMilkshaake."</td><td>1</td><td>$ ".$chocoMilkshaake."</td></tr><tr><td>Cola</td><td>$ ".$cola."</td><td>1</td><td>$ ".$cola."</td></tr><tr><td colspan='3'>Total Bill</td><td>$ ".$totalBill."</td></tr></table>";


 ?>