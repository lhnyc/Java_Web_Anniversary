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
    <link href="Images/church_logo%20.jpeg" rel="icon" type="image">
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

        <nav>

            <ul>
                <p>
                <li> Countdown to Anniversary</li>
                </p>
                <li><span class="clock" id="days"></span></li>
                <li><span class="clock" id="hours"></span></li>
                <li><span class="clock" id="minutes"></span></li>
                <li><span class="clock" id="seconds"></span></li>

                <li><a href="#" id="home">Home</a></li>
                <li><a href="Events.jsp" id="events">Events</a></li>
                <li><a href="#" id="donation">Donation</a></li>
                <li><a href="#" id="contact">Contact</a></li>
            </ul>

        </nav>
    </div>
</header>
<body>
<div class ="top_slide" style="background: #3d2e22 fixed no-repeat; background-size: cover; box-sizing: border-box">
<div class="slideshow">

<!------------------------------------------------------------SLIDESHOW---------------------------------------------------------->
<h1 style="color: white">Current Events</h1>

<div class="slideshow-container">

    <div class="mySlides fade">
        <div class="numbertext"></div>
        <img src="./Images/flyer1.JPG" style="width:100%; height: 100%">
        <div class="text">Caption Text</div>
    </div>

    <div class="mySlides fade">
        <div class="numbertext"></div>
        <img src="./Images/flyer2.JPG" style="width:100%; height: 100%">
        <div class="text">Caption Two</div>
    </div>

    <div class="mySlides fade">
        <div class="numbertext"></div>
        <img src="./Images/flyer3.JPG" style="width:100%; height: 100%">
        <div class="text">Caption Three</div>
    </div>

    <div class="mySlides fade">
        <div class="numbertext"></div>
        <img src="./Images/flyer4.JPG" style="width:100%; height: 100%">
        <div class="text">Caption Four</div>
    </div>

    <div class="mySlides fade">
        <div class="numbertext"></div>
        <img src="./Images/flyer5.JPG" style="width:100%; height: 100%">
        <div class="text">Caption Five</div>
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
        if (slideIndex > slides.length) {slideIndex = 1}
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";
        dots[slideIndex-1].className += " active";
        setTimeout(showSlides, 3000); // Change image every 3 seconds
    }
</script>



<div class="Pastor_remarks">
    <p id="pastor_flick"><img src="./Images/Pastor's_flick.jpeg" alt="Pastor's Picture"></p>
    <p id="remarks">
    <h2>Pastor's Remarks in anticipation</h2>
    <p>Lorem ipsum dolor sit amet consectetur adipiscing elit
        ultricies pretium nisi, cursus erat nulla convallis class litora cum
        massa bibendum, natoque non justo laoreet augue dui torquent eleifend
        semper. Sapien laoreet sollicitudin vivamus lacus facilisis eget diam
        litora volutpat, cubilia dictumst enim felis scelerisque semper nisl
        montes, imperdiet cras nisi placerat purus sed congue mauris. Vitae
        nec cras vehicula neque vivamus gravida luctus natoque hendrerit
        habitasse parturient, viverra lacinia volutpat himenaeos vulputate
        tempus faucibus potenti vestibulum porttitor.</p>
    <p>Aliquet nunc metus diam dignissim nullam himenaeos, viverra
        blandit fringilla malesuada rutrum facilisi, senectus massa
        ullamcorper etiam luctus. At porttitor dignissim cras bibendum
        ullamcorper eleifend class arcu rhoncus varius a rutrum, donec
        venenatis senectus metus suspendisse dictumst nostra inceptos
        consequat facilisi nisl fusce, libero gravida feugiat ac facilisis
        malesuada augue aenean habitant tempus turpis. Nec et commodo
        suscipit eu conubia viverra taciti, porta tincidunt massa vulputate
        ac dis ultrices fringilla, egestas praesent montes laoreet tempor
        neque.</p>


</div>
<!-------------------------------------------------------EVENTS---------------------------------------------------------------------->
<div class="events" style="background-color: #222">

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
            <td style="border-bottom: 1px solid #fff"><span style="font-size: 18pt;">Saturday Night Live ( Youth gathering ) : </span></td>
            <td style="border-bottom: 1px solid #fff"><span style="font-size: 18pt;">Saturdays </span></td>
            <td style="border-bottom: 1px solid #fff"><span style="font-size: 18pt;">05:00 pm - 07:00 pm</span></td>
        </tr>
        </tbody>
    </table>
    <p><span style="font-size: 18pt;">  <br /></span></p>
    <p><span style="font-size: 18pt;">  <br /></span></p>
    <p><span style="font-size: 18pt;">  <br /></span></p>
    <p><span style="font-size: 18pt;">  <br /></span></p>
    <p><span style="font-size: 18pt;"> </span></p>



</div>

<div class="prefooter">
    <img src="Images/Facebook.ico" class="facebook_icon">

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
        <p id="footer">Copyright &copy; lighthouse1st.us</p>
    </div>
</footer>

</html>
