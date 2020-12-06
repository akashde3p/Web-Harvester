<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="loginregistrationform.homepage" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Page Title</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

/* Style the body */
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

/* Header/logo Title */
.header {
  padding: 20px;
  text-align: center;
  background: #1abc9c;
  color: white;
}

/* Increase the font size of the heading */
.header h1 {
  font-size: 40px;
}
.header2 {
  padding: 10px;
  text-align: left;
  background: #ddd;
  color: black;
}
.header3 {
  padding: 5px;
  text-align: left;
  background: #ddd;
  color: black;
}
/* Sticky navbar - toggles between relative and fixed, depending on the scroll position. It is positioned relative until a given offset position is met in the viewport - then it "sticks" in place (like position:fixed). The sticky value is not supported in IE or Edge 15 and earlier versions. However, for these versions the navbar will inherit default position */
.navbar {
  overflow: hidden;
  background-color: #333;
  position: sticky;
  position: -webkit-sticky;
  top: 0;
}

/* Style the navigation bar links */
.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}


/* Right-aligned link */
.navbar a.right {
  float: right;
}

/* Change color on hover */
.navbar a:hover {
  background-color: #ddd;
  color: black;
}

/* Active/current link */
.navbar a.active {
  background-color: #666;
  color: white;
}



/* Main column */
.main {   
  -ms-flex: 100%; /* IE10 */
  flex: 100%;
  background-color: white;
  padding: 30px;
}



/* Footer */
.footer {
  padding: 5px;
  text-align: center;
  background: #1abc9c;
}
.fa {
  padding: 10px;
  font-size: 20px;
  width: 30px;
  text-align: center;
  text-decoration: none;
}

/* Add a hover effect if you want */
.fa:hover {
  opacity: 0.7;
}

/* Set a specific color for each brand */

/* Facebook */
.fa-facebook {
  background: #3B5998;
  color: black;
}

/* Twitter */
.fa-twitter {
  background: #55ACEE;
  color: black;
}
.fa-Instagram {
  background: #EA5131;
  color: black;
}
.fa-LinkedIn {
  background: #3498DB;
  color: black;
}
/* Style all font awesome icons */

/* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 300px) {
  .row {   
    flex-direction: column;
  }
}

/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen  {
  .navbar a {
    float: none;
    width: 100%;
  }
}
</style>
</head>
<body>

<div class="header">
    <div style="text-align:left;">
    <img style="border:2px solid black;width: 60px;height:60px;"src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pg0KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDE5LjAuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPg0KPHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJDYXBhXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4Ig0KCSB2aWV3Qm94PSIwIDAgNTEyIDUxMiIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTEyIDUxMjsiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KPHBhdGggc3R5bGU9ImZpbGw6I0EwRDc1NTsiIGQ9Ik0zMjguMTQ1LDE1MS43OTJ2MTIwLjI0Mmg2Ni41OGM3LjgzNywwLDE0LjUyNi01LjY2NiwxNS44MTQtMTMuMzk2bDIxLjgxNi0xMzAuODk0aC04MC4xNjENCglDMzM4LjkxMiwxMjcuNzQzLDMyOC4xNDUsMTM4LjUxLDMyOC4xNDUsMTUxLjc5MnoiLz4NCjxwYXRoIHN0eWxlPSJmaWxsOiNCNEU2NkU7IiBkPSJNMzY4LjIyNiwxNTkuODU3djExMi4xNzZoMjYuNDk5YzcuODM3LDAsMTQuNTI2LTUuNjY2LDE1LjgxNC0xMy4zOTdsMTYuNDYzLTk4Ljc4TDM2OC4yMjYsMTU5Ljg1Nw0KCUwzNjguMjI2LDE1OS44NTd6Ii8+DQo8cGF0aCBzdHlsZT0iZmlsbDojQTBENzU1OyIgZD0iTTUyLjg0NiwxMTEuNzExYy04LjUwNCwwLTE2LjY2LDMuMzc4LTIyLjY3Myw5LjM5MUw3LjUsMTQzLjc3NmwyNC4wNDgsMjQuMDQ4bDI0LjA0OC0yNC4wNDhoMTI4LjI1OA0KCXYtMzIuMDY1SDUyLjg0NnoiLz4NCjxwYXRoIHN0eWxlPSJmaWxsOiNGRkRDNjQ7IiBkPSJNMzEyLjExMywxMTEuNzExaC0xNDQuMjl2NjQuMTI5aDE2MC4zMjN2LTQ4LjA5N0MzMjguMTQ1LDExOC44ODksMzIwLjk2NywxMTEuNzExLDMxMi4xMTMsMTExLjcxMXoiDQoJLz4NCjxwYXRoIHN0eWxlPSJmaWxsOiNCNEU2NkU7IiBkPSJNMzI4LjE0NSwyNzIuMDgzSDg3LjY2MXYtODguMTc3YzAtNC40MjcsMy41ODktOC4wMTYsOC4wMTYtOC4wMTZoMjMyLjQ2OEwzMjguMTQ1LDI3Mi4wODMNCglMMzI4LjE0NSwyNzIuMDgzeiIvPg0KPHBvbHlnb24gc3R5bGU9ImZpbGw6IzdGODQ5OTsiIHBvaW50cz0iMzEyLjE3OCwyNzIuMTMyIDMxMi4xMTMsMzIwLjE4IDQxNi4zMjMsMzg0LjMwOSA0MTYuMzIzLDM1Mi4yNDQgIi8+DQo8cG9seWdvbiBzdHlsZT0iZmlsbDojMDBEN0ZGOyIgcG9pbnRzPSI0MjcuMDExLDE1OS44MDggMzYwLjIxLDE1OS44MDggMzYwLjIxLDIzOS45NjkgNDEzLjY1LDIzOS45NjkgIi8+DQo8cGF0aCBzdHlsZT0iZmlsbDojQTBENzU1OyIgZD0iTTcxLjYyOSwzNjguMjc2aDI3Mi41NDh2LTk2LjE5NEg3OS42NDVjLTQuNDI3LDAtOC4wMTYsMy41ODktOC4wMTYsOC4wMTZWMzY4LjI3NnoiLz4NCjxwYXRoIHN0eWxlPSJmaWxsOiNCNEU2NkU7IiBkPSJNNDA4LjMwNiwzNTIuMTk1djM2LjA3M2MwLDYuNjQxLDUuMzgzLDEyLjAyNCwxMi4wMjQsMTIuMDI0aDg0LjE3bC03Ni45NTUtNTcuNzE2DQoJQzQxOS42MTgsMzM2LjYzLDQwOC4zMDYsMzQyLjI4Niw0MDguMzA2LDM1Mi4xOTV6Ii8+DQo8cGF0aCBzdHlsZT0iZmlsbDojRkZDODUwOyIgZD0iTTE5MS44NzEsMTQzLjgyNXYtOC4wMTZjMC00LjQyNy0zLjU4OS04LjAxNi04LjAxNi04LjAxNmgtMTYuMDMydjQ4LjA5N2gxNjAuMzIzdi0yNC4wNDlIMTk5Ljg4Nw0KCUMxOTUuNDYsMTUxLjg0MSwxOTEuODcxLDE0OC4yNTIsMTkxLjg3MSwxNDMuODI1eiIvPg0KPHBhdGggc3R5bGU9ImZpbGw6I0EwRDc1NTsiIGQ9Ik00ODMuMTksMzg0LjMwOWgtNDYuODA3Yy02LjY0MSwwLTEyLjAyNC01LjM4My0xMi4wMjQtMTIuMDI0di0zMS40MjcNCgljLTcuNDU2LTIuNjk1LTE2LjA1MywyLjctMTYuMDUzLDExLjMzOHYzNi4wNzNjMCw2LjY0MSw1LjM4MywxMi4wMjQsMTIuMDI0LDEyLjAyNGg4NC4xN0w0ODMuMTksMzg0LjMwOXoiLz4NCjxwb2x5Z29uIHN0eWxlPSJmaWxsOiMwMEMzRkY7IiBwb2ludHM9IjQyNy4wMDIsMTU5Ljg1NyAzNjAuMjEsMTU5Ljg1NyAzNjAuMjEsMTgzLjkwNSA0MjIuOTk0LDE4My45MDUgIi8+DQo8cGF0aCBzdHlsZT0iZmlsbDojODdCRTRCOyIgZD0iTTMxMi4xMTMsMjgwLjA5OWMtMzIuMTc2LDAtNTkuMzgsMjEuMDk3LTY4LjY0OSw1MC4yMDFjLTEuMDk3LDMuNDQ2LTQuMTE4LDUuOTEyLTcuNzM0LDUuOTEyDQoJaC05OC4xMzNjLTIuNDg4LDAtNC43NTMtMS4yMi02LjMxNS0zLjE1NmMtMTAuMjc0LTEyLjczMi0yNS45ODQtMjAuODkyLTQzLjYxOS0yMC44OTJjLTUuNTc2LDAtMTAuOTUsMC44NDEtMTYuMDMyLDIuMzU2djUzLjc1Nw0KCWgyNzIuNTQ4di04MC41ODRDMzM0LjUxLDI4Mi44NzYsMzIzLjY0OCwyODAuMDk5LDMxMi4xMTMsMjgwLjA5OXoiLz4NCjxjaXJjbGUgc3R5bGU9ImZpbGw6IzVCNUQ2RTsiIGN4PSIzMTIuMTEiIGN5PSIzNTIuMTkxIiByPSI0OC4xIi8+DQo8Y2lyY2xlIHN0eWxlPSJmaWxsOiNGRkRDNjQ7IiBjeD0iMzEyLjExIiBjeT0iMzUyLjI0MSIgcj0iMTYuMDMiLz4NCjxjaXJjbGUgc3R5bGU9ImZpbGw6IzVCNUQ2RTsiIGN4PSI4Ny42NiIgY3k9IjM2OC4yMzEiIHI9IjMyLjA2Ii8+DQo8cGF0aCBkPSJNNTA5LDM5NC4yOTJsLTc2Ljk1NS01Ny43MTZjLTUuOTU0LTQuNDY2LTEzLjc4OS01LjE3Mi0yMC40NDUtMS44NDRjLTAuNjY2LDAuMzMzLTEuMywwLjcwOC0xLjkxNCwxLjEwNmwtNTguMDA5LTQzLjUwNg0KCXYtMTIuNzk4aDQzLjA0OGMxMS41NTEsMCwyMS4zMTMtOC4yNywyMy4yMTItMTkuNjY0bDIwLjc3MS0xMjQuNjI3aDEuNjYzYzQuMTQyLDAsNy41LTMuMzU4LDcuNS03LjVzLTMuMzU4LTcuNS03LjUtNy41aC04OC4xNzgNCgljLTYuMTMzLDAtMTEuODU5LDEuNzY1LTE2LjcwNyw0LjgwNWMtMS4zNDItMTEuNzEtMTEuMzA5LTIwLjgzNy0yMy4zNzMtMjAuODM3SDUyLjg0NmMtMTAuNTY3LDAtMjAuNTAzLDQuMTE1LTI3Ljk3NywxMS41ODgNCglMMi4xOTcsMTM4LjQ3MmMtMi45MjksMi45MjktMi45MjksNy42NzgsMCwxMC42MDZsMjQuMDQ4LDI0LjA0OGMxLjQ2NCwxLjQ2NCwzLjM4NCwyLjE5Nyw1LjMwMywyLjE5N3MzLjgzOS0wLjczMiw1LjMwMy0yLjE5Nw0KCWwyMS44NTItMjEuODUyaDEwMS42MnYxNy4wNjRIOTUuNjc3Yy04LjU1NiwwLTE1LjUxNiw2Ljk2LTE1LjUxNiwxNS41MTZ2ODAuNjc3aC0wLjUxNmMtOC41NTYsMC0xNS41MTYsNi45Ni0xNS41MTYsMTUuNTE2djU2LjM5NA0KCWMtOS43Miw3LjIxNi0xNi4wMzIsMTguNzc1LTE2LjAzMiwzMS43ODNjMCwyMS44MTYsMTcuNzQ5LDM5LjU2NSwzOS41NjQsMzkuNTY1YzE5LjI1MSwwLDM1LjMyNy0xMy44MjQsMzguODQyLTMyLjA2NWgxMzUuMjU0DQoJYzguODc5LDE4LjkyMywyOC4xMDcsMzIuMDY1LDUwLjM1NSwzMi4wNjVjMjYuNzAzLDAsNDkuMDYzLTE4LjkyNiw1NC4zODctNDQuMDY3bDM0LjMwNywxNy4xNTN2Ny4zODkNCgljMCwxMC43NjYsOC43NTgsMTkuNTI0LDE5LjUyNCwxOS41MjRoODQuMTdjMy4yMjgsMCw2LjA5NC0yLjA2Niw3LjExNS01LjEyOEM1MTIuNjM2LDM5OS42MDEsNTExLjU4MywzOTYuMjI5LDUwOSwzOTQuMjkyeg0KCSBNNDA3LjI5NywyMzIuNDY5aC0zOS4wNzFjLTAuMjg1LDAtMC41MTYtMC4yMzEtMC41MTYtMC41MTZ2LTY0LjY0NWg1MC40NDhMNDA3LjI5NywyMzIuNDY5eiBNMzM1LjY0NSwxNTEuNzkyDQoJYzAtOS4xMjUsNy40MjMtMTYuNTQ5LDE2LjU0OC0xNi41NDloNzEuMzA4bC0yLjg0NCwxNy4wNjVIMzYwLjIxYy00LjE0MiwwLTcuNSwzLjM1OC03LjUsNy41djcyLjE0NQ0KCWMwLDguNTU2LDYuOTYsMTUuNTE2LDE1LjUxNiwxNS41MTZoMzYuNTcxbC0xLjY1Niw5LjkzNWMtMC42ODgsNC4xMzEtNC4yMjgsNy4xMjktOC40MTYsNy4xMjloLTU5LjA4TDMzNS42NDUsMTUxLjc5Mg0KCUwzMzUuNjQ1LDE1MS43OTJ6IE01NS41OTcsMTM2LjI3NmMtMS45ODksMC0zLjg5NywwLjc5LTUuMzAzLDIuMTk3bC0xOC43NDUsMTguNzQ1bC0xMy40NDItMTMuNDQybDE3LjM3LTE3LjM3DQoJYzQuNjQtNC42NCwxMC44MDktNy4xOTUsMTcuMzctNy4xOTVoMTA3LjQ3N3YxNy4wNjVINTUuNTk3eiBNODcuNjYxLDM5Mi43OTJjLTEzLjU0NSwwLTI0LjU2NC0xMS4wMi0yNC41NjQtMjQuNTY1DQoJczExLjAyLTI0LjU2NCwyNC41NjQtMjQuNTY0czI0LjU2NCwxMS4wMiwyNC41NjQsMjQuNTY0UzEwMS4yMDYsMzkyLjc5Miw4Ny42NjEsMzkyLjc5MnogTTI1Ny4xNzIsMzYwLjcyN0gxMjYuNTA0DQoJYy0zLjUxNi0xOC4yNC0xOS41OTEtMzIuMDY0LTM4Ljg0Mi0zMi4wNjRjLTIuOTMsMC01Ljc4MiwwLjMzLTguNTMyLDAuOTM3di00OS41NWMwLTAuMjg1LDAuMjMxLTAuNTE2LDAuNTE2LTAuNTE2aDI0LjA0OA0KCWM0LjE0MiwwLDcuNS0zLjM1OCw3LjUtNy41cy0zLjM1OC03LjUtNy41LTcuNWgtOC41MzJ2LTgwLjY3N2MwLTAuMjg1LDAuMjMxLTAuNTE2LDAuNTE2LTAuNTE2SDI4MC4wNWM0LjE0MiwwLDcuNS0zLjM1OCw3LjUtNy41DQoJcy0zLjM1OC03LjUtNy41LTcuNUgxNzUuMzIzdi00OS4xM2gxMzYuNzljNC43MDUsMCw4LjUzMiwzLjgyOCw4LjUzMiw4LjUzMnYyNC4wNDl2MTYuNTQ4aC04LjUzNmMtNC4xNDIsMC03LjUsMy4zNTgtNy41LDcuNQ0KCXMzLjM1OCw3LjUsNy41LDcuNWg4LjUzNnY4MS4xOTNIMTM1Ljc2Yy00LjE0MiwwLTcuNSwzLjM1OC03LjUsNy41czMuMzU4LDcuNSw3LjUsNy41aDIwMC45MTd2MjIuODAzDQoJYy03LjQxMy0zLjY2Ny0xNS43NS01LjczOC0yNC41NjQtNS43MzhjLTMwLjY1NiwwLTU1LjU5NywyNC45NC01NS41OTcsNTUuNTk3QzI1Ni41MTYsMzU1LjA5NiwyNTYuNzQxLDM1Ny45NDUsMjU3LjE3MiwzNjAuNzI3eg0KCSBNMzEyLjExMywzOTIuNzkyYy0yMi4zODUsMC00MC41OTctMTguMjEyLTQwLjU5Ny00MC41OTdzMTguMjExLTQwLjU5Nyw0MC41OTctNDAuNTk3czQwLjU5NywxOC4yMTEsNDAuNTk3LDQwLjU5Nw0KCVMzMzQuNDk4LDM5Mi43OTIsMzEyLjExMywzOTIuNzkyeiBNNDAwLjgwNywzNTIuMTk1djExLjkxM2wtMzMuMzE0LTE2LjY1NmMtMS4xMy0xMy4zMDEtNi45NTQtMjUuMjgxLTE1LjgxNi0zNC4yNjh2LTIuMTAyDQoJbDQ5LjUzMywzNy4xNDlDNDAwLjk0NywzNDkuNTE3LDQwMC44MDcsMzUwLjg0Myw0MDAuODA3LDM1Mi4xOTV6IE00MjAuMzMxLDM5Mi43OTJjLTIuNDk1LDAtNC41MjQtMi4wMy00LjUyNC00LjUyNHYtMzYuMDczDQoJYzAtMi41MjMsMS43NDktMy42NywyLjUwMS00LjA0NmMwLjQwMy0wLjIwMiwxLjE1NC0wLjQ5OSwyLjA3Ni0wLjQ5OWMwLjc5OCwwLDEuNzI1LDAuMjIzLDIuNjYyLDAuOTI2TDQ4MiwzOTIuNzkySDQyMC4zMzF6Ii8+DQo8cGF0aCBkPSJNMzI4LjE0NSwzNDQuNjk1Yy00LjE0MiwwLTcuNSwzLjM1OC03LjUsNy41YzAsNC43MDUtMy44MjgsOC41MzItOC41MzIsOC41MzJzLTguNTMyLTMuODI4LTguNTMyLTguNTMyDQoJYzAtMy4wMzcsMS42MzctNS44NzEsNC4yNzEtNy4zOTVjMy41ODUtMi4wNzQsNC44MTEtNi42NjIsMi43MzctMTAuMjQ4cy02LjY2My00LjgxMS0xMC4yNDgtMi43MzcNCgljLTcuMjU0LDQuMTk2LTExLjc2LDEyLjAwNS0xMS43NiwyMC4zNzljMCwxMi45NzYsMTAuNTU3LDIzLjUzMiwyMy41MzIsMjMuNTMyczIzLjUzMi0xMC41NTcsMjMuNTMyLTIzLjUzMg0KCUMzMzUuNjQ1LDM0OC4wNTMsMzMyLjI4NywzNDQuNjk1LDMyOC4xNDUsMzQ0LjY5NXoiLz4NCjxwYXRoIGQ9Ik04Ny43NDEsMzYwLjcyN2gtMC4wOGMtNC4xNDIsMC03LjQ2LDMuMzU4LTcuNDYsNy41czMuMzk4LDcuNSw3LjU0LDcuNXM3LjUtMy4zNTgsNy41LTcuNVM5MS44ODMsMzYwLjcyNyw4Ny43NDEsMzYwLjcyN3oiDQoJLz4NCjxwYXRoIGQ9Ik0yMzEuOTUyLDMyOC42NjJoLTk2LjE5M2MtNC4xNDIsMC03LjUsMy4zNTgtNy41LDcuNXMzLjM1OCw3LjUsNy41LDcuNWg5Ni4xOTNjNC4xNDIsMCw3LjUtMy4zNTgsNy41LTcuNQ0KCVMyMzYuMDk0LDMyOC42NjIsMjMxLjk1MiwzMjguNjYyeiIvPg0KPHBhdGggZD0iTTE3NS4zMjMsMjM5Ljk2OWMwLTQuMTQyLTMuMzU4LTcuNS03LjUtNy41aC00OC4wOTdjLTQuMTQyLDAtNy41LDMuMzU4LTcuNSw3LjVzMy4zNTgsNy41LDcuNSw3LjVoNDguMDk3DQoJQzE3MS45NjUsMjQ3LjQ2OSwxNzUuMzIzLDI0NC4xMTEsMTc1LjMyMywyMzkuOTY5eiIvPg0KPHBhdGggZD0iTTExOS43MjYsMjE1LjQwNWg0OC4wOTdjNC4xNDIsMCw3LjUtMy4zNTgsNy41LTcuNXMtMy4zNTgtNy41LTcuNS03LjVoLTQ4LjA5N2MtNC4xNDIsMC03LjUsMy4zNTgtNy41LDcuNQ0KCVMxMTUuNTg0LDIxNS40MDUsMTE5LjcyNiwyMTUuNDA1eiIvPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPC9zdmc+DQo=" />
    <marquee> <h1 id="aman">Web Harvester</h1></marquee>
    </div> 
    <h3>Making data Extraction and Scraping Easy and Accessible for Everyone</h3>
   
</div>

<div class="navbar">
  <a href="homepage.aspx" class="active">Home</a>
  <a href="AboutUS.html">About us</a>
  <a href="ContactUs.html">Contact us</a>
  <a href="LOGIN.aspx" class="right">Login</a>
  <a href="REGISTRATION.aspx" class="right">Register</a>
</div>

<div class="header3">
  <h2 class="header2"><u>Web Harvesting</u></h2> 
    
  <p class="header2" >Web scraping, web harvesting, or web data extraction is data scraping used for extracting data from websites.With a simple copy and paste interface, the ability to extract thousands of records from a website takes only a few minutes of scraper setup.
                       Web Scraper is able to extract information from modern and dynamic websites such as eBay as well as from smaller, lesser-known websites.A web scraping tool will load the URLs given by the users and render the entire website. 
                      As a result, you can extract any web data in a feasible format into your computer without coding. </p>
</div>

<div class="footer">
  <h2>Connect With the Team</h2>
    <a href="https://www.facebook.com/" class="fa fa-facebook">Facebook</a>
    <a href="https://twitter.com/explore" class="fa fa-twitter">Twitter</a>
    <a href="https://www.instagram.com/" class="fa fa-Instagram">Instagram</a>
    <a href="https://in.linkedin.com/" class="fa fa-LinkedIn">LinkedIn</a>  
</div>

</body>
</html>

