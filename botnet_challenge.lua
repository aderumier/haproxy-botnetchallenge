local OTP  = require("otp")
local TOTP = require("totp")
local basexx = require("basexx")

local function botnet_challenge(applet)

    local clientip = applet.f:src()
    local useragent =  applet.headers["user-agent"][0]
    if useragent ~= nil then useragent = "sdfocOSdfjiojicvisdinvc" end

    local randomkey = "dxcKfdojsdfxvcOsdfvc"
    local INTERVAL              = 15;
    local DIGITS                = 10;
    local BASE32_SECRET = basexx.to_base32( clientip..randomkey..useragent )
    local DIGEST                = "SHA1";

    OTP.type = "totp"
    local tdata = OTP.new(BASE32_SECRET, DIGITS, DIGEST, 30)
    local token = TOTP.now(tdata)

    
    local htmlbegin = [[
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <title>Waiting for the redirectiron...</title>
        <style type="text/css">
            body {background-color: #ffffff; font-family: "Helvetica Neue", Helvetica,Arial,sans-serif;}
            html, body {width: 100%; height: 100%; margin: 0; padding: 0;}
            span {color: #878787; font-size: 12pt;  text-align: center;}
            h1 {color: #878787; font-size: 18pt; text-align: center;}
            .link {margin-top: 40px;}
            .sk-circle {margin: 80px auto;width: 100px;height: 100px;position: relative;}
            .sk-circle .sk-child {width: 100%;height: 100%;position: absolute;left: 0;top: 0;}
            .sk-circle .sk-child:before {content: '';display: block;margin: 0 auto;width: 15%;height: 15%;background-color: #666666;border-radius: 100%;-webkit-animation: sk-circleBounceDelay 1.2s infinite ease-in-out both;animation: sk-circleBounceDelay 1.2s infinite ease-in-out both;}
            .sk-circle .sk-circle2 {-webkit-transform: rotate(30deg);-ms-transform: rotate(30deg);transform: rotate(30deg); }
            .sk-circle .sk-circle3 {-webkit-transform: rotate(60deg);-ms-transform: rotate(60deg);transform: rotate(60deg); }
            .sk-circle .sk-circle4 {-webkit-transform: rotate(90deg);-ms-transform: rotate(90deg);transform: rotate(90deg); }
            .sk-circle .sk-circle5 {-webkit-transform: rotate(120deg);-ms-transform: rotate(120deg);transform: rotate(120deg); }
            .sk-circle .sk-circle6 {-webkit-transform: rotate(150deg);-ms-transform: rotate(150deg);transform: rotate(150deg); }
            .sk-circle .sk-circle7 {-webkit-transform: rotate(180deg);-ms-transform: rotate(180deg);transform: rotate(180deg); }
            .sk-circle .sk-circle8 {-webkit-transform: rotate(210deg);-ms-transform: rotate(210deg);transform: rotate(210deg); }
            .sk-circle .sk-circle9 {-webkit-transform: rotate(240deg);-ms-transform: rotate(240deg);transform: rotate(240deg); }
            .sk-circle .sk-circle10 {-webkit-transform: rotate(270deg);-ms-transform: rotate(270deg);transform: rotate(270deg); }
            .sk-circle .sk-circle11 {-webkit-transform: rotate(300deg);-ms-transform: rotate(300deg);transform: rotate(300deg); }
            .sk-circle .sk-circle12 {-webkit-transform: rotate(330deg);-ms-transform: rotate(330deg);transform: rotate(330deg); }
            .sk-circle .sk-circle2:before {-webkit-animation-delay: -1.1s;animation-delay: -1.1s; }
            .sk-circle .sk-circle3:before {-webkit-animation-delay: -1s;animation-delay: -1s; }
            .sk-circle .sk-circle4:before {-webkit-animation-delay: -0.9s;animation-delay: -0.9s; }
            .sk-circle .sk-circle5:before {-webkit-animation-delay: -0.8s;animation-delay: -0.8s; }
            .sk-circle .sk-circle6:before {-webkit-animation-delay: -0.7s;animation-delay: -0.7s; }
            .sk-circle .sk-circle7:before {-webkit-animation-delay: -0.6s;animation-delay: -0.6s; }
            .sk-circle .sk-circle8:before {-webkit-animation-delay: -0.5s;animation-delay: -0.5s; }
            .sk-circle .sk-circle9:before {-webkit-animation-delay: -0.4s;animation-delay: -0.4s; }
            .sk-circle .sk-circle10:before {-webkit-animation-delay: -0.3s;animation-delay: -0.3s; }
            .sk-circle .sk-circle11:before {-webkit-animation-delay: -0.2s;animation-delay: -0.2s; }
            .sk-circle .sk-circle12:before {-webkit-animation-delay: -0.1s;animation-delay: -0.1s; }
            @-webkit-keyframes sk-circleBounceDelay {0%, 80%, 100% {-webkit-transform: scale(0);transform: scale(0);}40% {-webkit-transform: scale(1);transform: scale(1);}}
            @keyframes sk-circleBounceDelay {0%, 80%, 100% {-webkit-transform: scale(0);transform: scale(0);}40% {-webkit-transform: scale(1);transform: scale(1);}}

        </style>
        <script type="text/javascript">

	 ]]

	local javascript = [[

            function startCountdown() {
                setInterval(function () {
                    var $secondsElement = document.getElementById('seconds');
                    var seconds = parseInt($secondsElement.innerHTML);
                    if (seconds > 0) {
                        seconds--;
                        $secondsElement.innerHTML = seconds;
                    }
                }, 1000);
            }

	    function rot13(str) {
		var input     = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
		var output    = 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm';
		var index     = x => input.indexOf(x);
		var translate = x => index(x) > -1 ? output[index(x)] : x;
		return str.split('').map(translate).join('');
	    }

            function browserIntegrityCheck() {
                w = window.innerWidth;
                h = window.innerHeight;
                arr = [w, h, Math.floor((Math.random() * 9) + 1)];
                arr.push(arr[0] * arr[1] * arr[2]);
                d = new Date().getTime();
                arr = [];
                b = navigator.appName;
                div1 = document.createElement('div');
                div1.style.display = 'none';
                div2 = document.createElement('div');
                div2.style.display = 'none';
                div3 = document.createElement('div');
                div3.style.display = 'none';
                c = document.getElementById('content');
                c.appendChild(div1);
                div1.appendChild(div2);
                div2.appendChild(div3);
                div1.removeChild(div2);
                r = genRandString();
                if (r.search('asd')) {
                    r.replace('asd', 'bsd');
                }
            }

            function genRandString() {
                var text = "";
                var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

                for (var i = 0; i < 5; i++)
                    text += possible.charAt(Math.floor(Math.random() * possible.length));

                return text;
            }
            
            (function () {
                var a = function () {
                    try {
                        return !!window.addEventListener
                    } catch (e) {
                        return !1
                    }
                },
                        b = function (b, c) {
                            a() ? document.addEventListener("DOMContentLoaded", b, c) : document.attachEvent("onreadystatechange", b)
                        };
                b(function () {
                    var a = document.getElementById('content').style.display = 'block';

                    setTimeout(browserIntegrityCheck(), 0);
                    setTimeout(function() {
                        document.cookie="MyKey="+rot13(n)+"; path=/";
                        location.reload();
                    }, 4000);


                }, false);
            })();
    ]]

    local htmlend = [[
        </script>
    </head>
    <body>
        <table width="100%" height="100%" cellpadding="20">
            <tr>
                <td align="center" valign="middle">
                    <div>
                        <noscript>
                        <h1 style="color:#990000;">Please, turn Javascript on in your browser then reload the page.</h1>
                        </noscript>
                        <div id="content" style="display:none">

                            <div class="sk-circle">
                                <div class="sk-circle1 sk-child"></div>
                                <div class="sk-circle2 sk-child"></div>
                                <div class="sk-circle3 sk-child"></div>
                                <div class="sk-circle4 sk-child"></div>
                                <div class="sk-circle5 sk-child"></div>
                                <div class="sk-circle6 sk-child"></div>
                                <div class="sk-circle7 sk-child"></div>
                                <div class="sk-circle8 sk-child"></div>
                                <div class="sk-circle9 sk-child"></div>
                                <div class="sk-circle10 sk-child"></div>
                                <div class="sk-circle11 sk-child"></div>
                                <div class="sk-circle12 sk-child"></div>
                            </div>

                            <span>This is an automatic process.  Your browser will redirect to your requested content in <span id="seconds">5</span> seconds.</span>
                        </div>
                    </div>
                </td>

            </tr>
        </table>
    </body>]]
    
    local javascriptvar = string.format([[ var n= "%s"; ]],token)

    response = htmlbegin .. javascriptvar .. javascript .. htmlend

    applet:set_status(200)
    applet:add_header("content-length", string.len(response))
    applet:add_header("content-type", "text/html")
    applet:add_header("Cache-Control", "no-cache, no-store, must-revalidate")
    applet:add_header("Pragma", "no-cache")
    applet:add_header("Expires", "0")

    applet:start_response()
    applet:send(response)
end
core.register_service("botnet_challenge", "http", botnet_challenge)


