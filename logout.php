<?php
session_start();
session_destroy();  // delete all session 
header("location: index.php");
