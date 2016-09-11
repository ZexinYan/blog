<html>
<head>
    <title>Title</title>
    <style type="text/css">
        /* fallback */
        @font-face {
            font-family: 'Material Icons';
            font-style: normal;
            font-weight: 400;
            src: local('Material Icons'), local('MaterialIcons-Regular'),
            url(https://fonts.gstatic.com/s/materialicons/v18/2fcrYFNaTjcS6g4U3t-Y5UEw0lE80llgEseQY3FEmqw.woff2) format('woff2');
        }

        .material-icons {
            font-family: 'Material Icons';
            font-weight: normal;
            font-style: normal;
            font-size: 24px;
            line-height: 1;
            letter-spacing: normal;
            text-transform: none;
            display: inline-block;
            white-space: nowrap;
            word-wrap: normal;
            direction: ltr;
            -webkit-font-feature-settings: 'liga';
            -webkit-font-smoothing: antialiased;
        }
    </style>
    <link href="materialize/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="materialize/css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <script type="text/javascript" src="materialize/jquery-3.1.0.min.js"></script>
    <%
        Cookie[] cookies = request.getCookies();
        String userName = "";
        boolean flag = false;
        for (Cookie each : cookies) {
            if (each.getName().equals("userName") && each.getValue() != null) {
                flag = true;
            }
        }
        if (flag) {
            response.addCookie(new Cookie("userName", null));
        }
    %>
    <script>
        $(document).ready(function () {
            $('.modal-trigger').leanModal();
        });
    </script>
</head>
<body>
<div class="container">
    <nav>
        <div class="nav-wrapper">
            <ul class="left hide-on-med-and-down">
                <!-- Dropdown Trigger -->
                <li><a class="modal-trigger" href="#modal-login">Log in</a></li>
                <li><a class="modal-trigger" href="#modal-register">Register</a></li>
            </ul>
            <a href="#!" class="center brand-logo" style="margin-left: 10px;">Stary's Blog</a>
            <ul class="right hide-on-med-and-down">
                <li><a href="listArticle.action">Article</a></li>
                <li><a href="#">Discussion</a></li>
                <li><a href="#">Write Article</a></li>
            </ul>
        </div>
    </nav>
    <!--Log in Operation-->
    <form action="login.action" method="post">
        <div id="modal-login" class="modal" style="width: 400px">
            <div class="modal-content">
                <h4 style="text-align: center">Log in</h4>
                <input name="userName" placeholder="User Name" required type="text" class="validate">
                <input name="password" placeholder="password" required type="password" class="validate">
            </div>
            <div class="modal-footer">
                <input type="reset" value="Cancel" class="modal-action modal-close btn-flat">
                <input type="submit" value="Log in" class=" btn-flat">
            </div>
        </div>
    </form>
    <!--Register Operation-->
    <form action="/register.action" method="post">
        <div id="modal-register" class="modal" style="width: 400px">
            <div class="modal-content">
                <h4 style="text-align: center">Register</h4>
                <p>We will keep your information safe. Please trust us!</p>
                <input name="m_user.userName" placeholder="User Name" required type="text" class="validate">
                <input name="m_user.password" placeholder="password" required type="password" class="validate">
                <input name="m_user.email" placeholder="email" required type="email" class="validate">
                <input name="m_user.phone" placeholder="phone" required type="tel" class="validate">
            </div>
            <div class="modal-footer">
                <input type="reset" value="Cancel" class="modal-action modal-close btn-flat">
                <input type="submit" value="Agree" class="btn-flat">
            </div>
        </div>
    </form>

    <h1 class="header center red-text">Stary's blog</h1>
    <div class="row-center">
        <h5 class="header col s12 light" style="text-align: center">An interesting blog, but more than a blog, based on Material Design.</h5>
    </div>
    <br>
    <div class="row center">
        <a href="article.jsp" id="download-button" class="btn-large waves-effect waves-red red">Join us!</a>
    </div>

    <div class="section">
        <!--   Icon Section   -->
        <div class="row">
            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center light-blue-text"><i class="large material-icons">thumb_up</i></h2>
                    <h5 class="center">Read Article freely!</h5>

                    <p class="light">In this blog, you can read funny and useful technique articles freely and review whenever you have some questions about the topic.</p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center light-blue-text"><i class="large material-icons">group</i></h2>
                    <h5 class="center">Discussion With friends!</h5>
                    <p class="light">This blog is more than a blog. You can initialize a discussion about your interested topic and invite your friend to join in.
                    Discussing with your friends, you will must be better than now.
                    </p>
                </div>
            </div>
            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center light-blue-text"><i class="large material-icons">settings</i></h2>
                    <h5 class="center">Share your knowledge!</h5>
                    <p class="light">In order to keep the quality of articles, we can't let every one to write,
                        but if you really like this blog and wanna share your knowledge with others, you
                        can send us an email, we decide if your article can be published. And of course, we will reserve your right.</p>
                </div>
            </div>
        </div>
    </div>

</div>
<footer class="page-footer">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">About Stary!</h5>
                <p class="grey-text text-lighten-4">If you wanna write article to share with others you can just send me a email.</p>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            © 2016 Copyright Stary. All right reserved!
        </div>
    </div>
</footer>
<!--  Scripts-->
<script src="materialize/jquery-3.1.0.min.js"></script>
<script src="materialize/js/materialize.js"></script>
<script src="materialize/js/materialize.min.js"></script>
</body>
</html>