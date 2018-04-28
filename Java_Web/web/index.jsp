<%--
  Created by IntelliJ IDEA.
  User: wal31
  Date: 4/2/2018
  Time: 1:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <link rel="stylesheet" href="index.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="Keywords"
          content="Church, anniversary, church anniversary, lighthouse, LH">
    <meta name="Description"
          content="LightHouse Christian Outreach Center's first anniversary online presence project">
    <title>Lighthouse 1st Anniversary</title>
    <link href="Images/favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon">
</head>
<header>
    <div class="container">
        <a href="index.jsp"><img src="./Images/Longer_church_logo.jpeg" alt="logo" class="logo" align="left"></a>

        <!-------------------------------------------Clock--------------------------------------------------------------!-->
        <script>
            var countDownDate = new Date("June 1, 2018 10:00:00").getTime();

            var x = setInterval(function () {

                var now = new Date().getTime();
                var distance = countDownDate - now;

                // Time calculations for days, hours, minutes and seconds
                var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);

                // Output the result in an element with id="demo"
                document.getElementById("days").innerHTML = days;
                document.getElementById("hours").innerHTML = hours;
                document.getElementById("minutes").innerHTML = minutes;
                document.getElementById("seconds").innerHTML = seconds;

                // If the count down is over, write some text
                if (distance < 0) {
                    clearInterval(x);
                    document.getElementById("clock").innerHTML = "EXPIRED";
                }
            }, 1000);
        </script>


        <div class="clock_container">
                <h1 class="font-cursive clock-title"> Countdown to Anniversary</h1>
            <div class="clock_digit">
                <div class="clock_digit_number" id="days"></div>
                <div class="clock_label">Days</div>
            </div>
            <div class="clock_digit">
                <div class="clock_digit_number" id="hours"></div>
                <div class="clock_label">hours</div>
        </div>
            <div class="clock_digit">
                <div class="clock_digit_number" id="minutes"></div>
                <div class="clock_label">minutes</div>
            </div>
            <div class="clock_digit">
                <div class="clock_digit_number" id="seconds"></div>
                <div class="clock_label">seconds</div>
            </div>
            </div>
        </div>
                <nav>
                    <ul>
                <li><a href="#" id="home">Home</a></li>
                <li><a href="Events.jsp" id="events">Events</a></li>

                <li><a href="#" id="donation">Donation</a></li>
                <li style="margin-right: 20px"><a href="#" id="contact">Contact</a></li>
            </ul>

        </nav>
    </div>
</header>
<body>
<div class="top_slide"
     style="background: /*#240707 #a47c4c */#0a243e fixed no-repeat; background-size: cover; box-sizing: border-box">
    <div class="slideshow">
        <h1 style="text-align: center; font-size: 70px; padding-bottom: 3%; color: white">Welcome to Lighthouse NY's 1ST
            Anniversary Page!</h1>

        <!------------------------------------------------------------SLIDESHOW---------------------------------------------------------->
        <!--  <h1 style="color: white">Current Events</h1>-->

        <div class="slideshow-container">

            <div class="mySlides fade">
                <div class="numbertext"></div>
                <img src="./Images/flyer1.jpeg" style="width:100%; height: 100%">
                <div class="text"><p style="margin: 0; padding-top: 5px; font-size: x-large">Beautiful Exchange Every
                    Thursday</p>
                    <p style="margin: 0; padding-top: 10px">Join us! 333 New Lots Ave, Brooklyn NY 11207</p></div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext"></div>
                <img src="./Images/flyer2.jpeg" style="width:100%; height: 100%">
                <div class="text"><p style="margin: 0; padding-top: 10px; font-size: x-large">Saturday Night Live!</p>
                    <p style="margin: 0; padding-top: 10px">Come turn up with our Youths</p></div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext"></div>
                <img src="./Images/flyer3.jpeg" style="width:100%; height: 100%">
                <div class="text"><p style="margin: 0; padding-top: 10px; font-size: x-large">Diving into Financial
                    Literacy</p>
                    <p style="margin: 0; padding-top: 10px">Come Learn How
                        to deal with financial pressure</p></div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext"></div>
                <img src="./Images/flyer4.JPG" style="width:100%; height: 100%">
                <div class="text"><p style="margin: 0; padding-top: 10px; font-size: x-large">Join us! 333 New Lots Ave,
                    Brooklyn NY 11207</p></div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext"></div>
                <img src="./Images/flyer5.JPG" style="width:100%; height: 100%">
                <div class="text"><p style="margin: 0; padding-top: 10px; font-size: x-large">Join us! 333 New Lots Ave,
                    Brooklyn NY 11207</p></div>
            </div>

        </div>
        <br>

        <div style="text-align:center">
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>

        </div>
    </div>
</div>
<script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {
            slideIndex = 1
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 3000); // Change image every 3 seconds
    }
</script>


<div class="Pastor_remarks">
    <div id="pastor_flick"><img src="./Images/Pastor's_flick.jpeg" alt="Pastor's Picture"></div>
    <div id="remarks">
    <h2 style="margin: 0; font-size: 30px; padding-bottom: 30px; color: #3d2e22">Pastor's Remarks in anticipation</h2>
    <blockquote style="color: white; font-style: normal !important;"> Lorem ipsum dolor sit amet consectetur adipiscing
        elit
        ultricies pretium nisi, cursus erat nulla convallis class litora cum
        massa bibendum, natoque non justo laoreet augue dui torquent eleifend
        semper. Sapien laoreet sollicitudin vivamus lacus facilisis eget diam
        litora volutpat, cubilia dictumst enim felis scelerisque semper nisl
        montes, imperdiet cras nisi placerat purus sed congue mauris. Vitae
        nec cras vehicula neque vivamus gravida luctus natoque hendrerit
        habitasse parturient, viverra lacinia volutpat himenaeos vulputate
        tempus faucibus potenti vestibulum porttitor.
        Aliquet nunc metus diam dignissim nullam himenaeos, viverra
        blandit fringilla malesuada rutrum facilisi, senectus massa
        ullamcorper etiam luctus. At porttitor dignissim cras bibendum
        ullamcorper eleifend class arcu rhoncus varius a rutrum, donec
        venenatis senectus metus suspendisse dictumst nostra inceptos
        consequat facilisi nisl fusce, libero gravida feugiat ac facilisis
        malesuada augue aenean habitant tempus turpis. Nec et commodo
        suscipit eu conubia viverra taciti, porta tincidunt massa vulputate
        ac dis ultrices fringilla, egestas praesent montes laoreet tempor
        neque.
        <footer>
            <cite>Shola Jordan Adeoye</cite>
        </footer>
    </blockquote>
    </div>

</div>
<!-------------------------------------------------------EVENTS---------------------------------------------------------------------->
<div class="events" style="background-color: #0a243e ">

    <table>
        <caption style="color: white; font-size: 200%">Weekly Events</caption>

        <tbody>
        <tr>
            <td> </td>
            <td> Day of the Week</td>
            <td> Time</td>
        </tr>
        <tr>
            <td><span style="font-size: 18pt;">Sunday Service :</span></td>
            <td><span style="font-size: 18pt;">Sundays</span></td>
            <td><span style="font-size: 18pt;">10:00 am - 12:00 Noon</span></td>
        </tr>
        <tr>
            <td><span style="font-size: 18pt;">Beautiful Exchange :</span></td>
            <td><span style="font-size: 18pt;">Thursdays</span></td>
            <td><span style="font-size: 18pt;">06:30 pm - 08:00 pm</span></td>
        </tr>
        <tr>
            <td><span style="font-size: 18pt;">Leadership Training :</span></td>
            <td><span style="font-size: 18pt;">1st &amp; 3rd Saturday of the month</span></td>
            <td><span style="font-size: 18pt;">10:00 am - 12:00 Noon</span></td>
        </tr>
        <tr>
            <td><span style="font-size: 18pt;">Night Vigil :</span></td>
            <td><span style="font-size: 18pt;">2nd &amp; 4th Friday of the Month</span></td>
            <td><span style="font-size: 18pt;">10:00 pm - 12:00 Midnight</span></td>
        </tr>
        <tr>
            <td style="border-bottom: 1px solid #fff"><span style="font-size: 18pt;">Saturday Night Live ( Youth gathering ) : </span>
            </td>
            <td style="border-bottom: 1px solid #fff"><span style="font-size: 18pt;">Saturdays </span></td>
            <td style="border-bottom: 1px solid #fff"><span style="font-size: 18pt;">05:00 pm - 07:00 pm</span></td>
        </tr>
        </tbody>
    </table>
    <p><span style="font-size: 18pt;"> </span></p>


</div>

<div class="pre_footer" style="margin: 0">
    <div class="img" style="margin: 0">
    <h2 style="color: #3d2e22; float: top; padding-bottom: 15px">Contact Us:</h2>
    <ul>
        <li class="pre_footer_img" >
            <a href="https://www.facebook.com/lighthouseny/"><img src="Images/facebook.ico" class="pre_footer_icon"></a>
        </li>
        <li class="pre_footer_img">
            <a href="mailto:communications@lighthouseNY.org"><img src="Images/email.ico" class="pre_footer_icon"></a>
        </li>
        <li class="pre_footer_img" ><a href=""><img src="Images/phone.ico" class="pre_footer_icon"></a>
        </li>
        <li class="pre_footer_img" ><a href="https://google.com"><img src="Images/address.ico" class="pre_footer_icon"></a>
        </li>
    </ul>
    </div>
    <div class="caption" style="margin: 0">
    <ul>
        <li class="pre_footer_img" style=" margin-left: 0">
            <p style="font-family: Open Sans, sans-serif;font-weight: 600;font-style: normal;font-size: 21px;  text-transform: uppercase;">
                Follow Us!</p></li>
        <li class="pre_footer_img" style="padding:0"><p
                style="font-family: Open Sans, sans-serif;font-weight: 600;font-style: normal;font-size: 21px;  width: 50%; text-transform: uppercase;">
            communications@ lighthouseNY.org
        </p></li>
        <li class="pre_footer_img"><p
                style="text-transform: uppercase; font-family: Open Sans,sans-serif; font-size: 21px; font-style: normal; font-weight: 600;">
            |405-550-5135|
        </p>
            <p style="font-size: 14px;color: #444444;">Our Phone Number</p></li>

        <li class="pre_footer_img" style="padding:0">
            <p style="text-transform: uppercase; font-family: Open Sans,sans-serif; font-size: 21px; font-style: normal; font-weight: 600;">
                361 New Lots Ave. Brooklyn, NY 11207</p>
            <p> Our address</p></li>
    </ul>
    </div>
</div>

</body>


<footer>
    <div class="wrapper">
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#">Events</a></li>
                <li><a href="#">Donation</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </div>
</footer>

</html>
