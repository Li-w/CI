<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<base href="<?=site_url()?>">
<title>Simpla Admin</title>
<!-- CSS -->
<link rel="stylesheet" href="resources/css/reset.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="resources/css/style.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="resources/css/invalid.css" type="text/css" media="screen"/>
<!-- JQuery -->
<script type="text/javascript" src="resources/scripts/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="resources/scripts/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="resources/scripts/facebox.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.wysiwyg.js"></script>
</head>
<body id="login">
<div id="login-wrapper" class="png_bg">
    <div id="login-top">
        <h1>Simpla Admin</h1>
        <a href="#"><img id="logo" src="resources/images/logo.png" alt="Simpla Admin logo" /></a> 
    </div>
    <div id="login-content">
        <form action="" method="post">
            <div class="notification information png_bg">
                <div> Just click "Sign In". No password needed. </div>
            </div>
            <p>
                <label>Username</label>
                <input class="text-input" type="text"  name="adminname" value="water"/> 
            </p>
            <div class="clear"></div>
            <p>
                <label>Password</label>
                <input class="text-input" type="password" name="adminpwd" value="qqq111" />
            </p>
            <div class="clear"></div>
            <p id="remember-password">
                <input type="checkbox" />
                Remember me </p>
            <div class="clear"></div>
            <p>
                <input class="button" type="submit" value="Sign In" />
            </p>
        </form>
    </div>
</div>
</body>
</html>