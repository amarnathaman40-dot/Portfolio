<html>
<head>
<title>Login Page</title>

<style>

body{
    font-family: Arial;
    background: linear-gradient(to right, #4facfe, #00f2fe);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.login-box{
    background:white;
    padding:30px;
    border-radius:10px;
    width:300px;
    text-align:center;
    box-shadow:0 0 10px gray;
}

input[type=text],input[type=password]{
    width:90%;
    padding:10px;
    margin:10px;
    border:1px solid #ccc;
    border-radius:5px;
}

input[type=submit]{
    background:#4facfe;
    color:white;
    border:none;
    padding:10px 20px;
    border-radius:5px;
    cursor:pointer;
}

input[type=submit]:hover{
    background:#0077ff;
}

</style>

</head>

<body>

<div class="login-box">

<h2>Login</h2>

<form action="check.jsp" method="post">

<input type="text" name="username" placeholder="Enter Username" required><br>

<input type="password" name="password" placeholder="Enter Password" required><br>

<input type="submit" value="Login">

</form>

</div>

</body>
</html>