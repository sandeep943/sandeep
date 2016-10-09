
<html>

<head>
  <meta charset="utf-8">
  <title>Sign Up</title>
  <meta name="keywords" content="example, JavaScript Form Validation, Sample registration form">
  <meta name="description" content="This document is an example of JavaScript Form Validation using a sample registration form. ">

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" type="text/css">

  <script>
    function formValidation()  
    {  
    var uid = document.registration.userid;  
    var passid = document.registration.passid;  
    var uname = document.registration.username;  
    var uadd = document.registration.address;  
    var ucountry = document.registration.country;  
    var uzip = document.registration.zip;  
    var uemail = document.registration.email;  
    var umsex = document.registration.msex;  
    var ufsex = document.registration.fsex; if(userid_validation(uid,5,12))  
    {  
    if(passid_validation(passid,7,12))  
    {  
    if(allLetter(uname))  
    {  
    if(alphanumeric(uadd))  
    {   
    if(countryselect(ucountry))  
    {  
    if(allnumeric(uzip))  
    {  
    if(ValidateEmail(uemail))  
    {  
    if(validsex(umsex,ufsex))  
    {  
    }  
    }   
    }  
    }   
    }  
    }  
    }  
    }  
    return false;  
      
    } function userid_validation(uid,mx,my)  
    {  
    var uid_len = uid.value.length;  
    if (uid_len == 0 || uid_len >= my || uid_len < mx)  
    {  
    alert("User Id should not be empty / length be between "+mx+" to "+my);  
    uid.focus();  
    return false;  
    }  
    return true;  
    }  
    function passid_validation(passid,mx,my)  
    {  
    var passid_len = passid.value.length;  
    if (passid_len == 0 ||passid_len >= my || passid_len < mx)  
    {  
    alert("Password should not be empty / length be between "+mx+" to "+my);  
    passid.focus();  
    return false;  
    }  
    return true;  
    }  
    function allLetter(uname)  
    {   
    var letters = /^[A-Za-z]+$/;  
    if(uname.value.match(letters))  
    {  
    return true;  
    }  
    else  
    {  
    alert('Username must have alphabet characters only');  
    uname.focus();  
    return false;  
    }  
    }  
    function alphanumeric(uadd)  
    {   
    var letters = /^[0-9a-zA-Z]+$/;  
    if(uadd.value.match(letters))  
    {  
    return true;  
    }  
    else  
    {  
    alert('User address must have alphanumeric characters only');  
    uadd.focus();  
    return false;  
    }  
    }  
    function countryselect(ucountry)  
    {  
    if(ucountry.value == "Default")  
    {  
    alert('Select your country from the list');  
    ucountry.focus();  
    return false;  
    }  
    else  
    {  
    return true;  
    }  
    }  
    function allnumeric(uzip)  
    {   
    var numbers = /^[0-9]+$/;  
    if(uzip.value.match(numbers))  
    {  
    return true;  
    }  
    else  
    {  
    alert('ZIP code must have numeric characters only');  
    uzip.focus();  
    return false;  
    }  
    }  
    function ValidateEmail(uemail)  
    {  
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
    if(uemail.value.match(mailformat))  
    {  
    return true;  
    }  
    else  
    {  
    alert("You have entered an invalid email address!");  
    uemail.focus();  
    return false;  
    }  
    } function validsex(umsex,ufsex)  
    {  
    x=0;  
      
    if(umsex.checked)   
    {  
    x++;  
    } if(ufsex.checked)  
    {  
    x++;   
    }  
    if(x==0)  
    {  
    alert('Select Male/Female');  
    umsex.focus();  
    return false;  
    }  
    else  
    {  
    alert('Form Succesfully Submitted');  
    window.location.reload()  
    return true;  
    }  
    }
  </script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.1/css/font-awesome.min.css" rel="stylesheet" type="text/css">
 
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
</head>

<body onload="document.registration.userid.focus();" class="bg-success text-danger">
<%@include file="header.jsp" %>

  <div class="container">
    <div class="form-group">

      <h1><center>Sign Up</center></h1>
      <div class="form-group">
        <form:form name="registration" action="addPerson" method="post" onsubmit="return formValidation();">

          <label for="userid">User id:</label>
          <input type="text" class="form-control" name="userid" placeholder="Enter User id">
          <label for="passid">Password:</label>
          <input type="password" class="form-control" name="password" placeholder="Enter Password">
          <label for="username">Name:</label>
          <input type="text" class="form-control" name="name" placeholder="Enter Name">
          <label for="address">Address:</label>
          <input type="text" class="form-control" name="address" placeholder="Enter Address">
          <label for="country">Country:</label>
          <select name="country">
            <option selected="" value="Default">(Please select a country)</option>
            <option value="Australia">Australia</option>
            <option value="canada">Canada</option>
            <option value="India">India</option>
            <option value="Russia">Russia</option>
            <option value="USA">USA</option>
          </select>
          <br>
          <br>
          <label for="zip">ZIP Code:</label>
          <input type="text" class="form-control" name="zipcode" placeholder="Enter ZIP Code">
          <label for="email">Email Id:</label>
          <input type="text" class="form-control" name="emailid" size="50" placeholder="Enter Email Id">
          <br>
          <label id="gender">gender</label>
          <label class="radio-inline">
            <input type="radio" name="sex" id="msex" value="Male">Male
          </label>
          <label class="radio-inline">
            <input type="radio" name="sex" id="fsex" value="Female">Female
          </label>

          <br>
          <br>
          <label>Language:</label>
          <label class="checkbox-inline">
            <input type="checkbox" name="language" value="en" checked=""><span>English</span></label>
          <label class="checkbox-inline">
            <input type="checkbox" name="language" value="noen"><span>Non English</span></label>
          <br>
          <br>
          <label for="desc">About:</label>
          <textarea name="about" id="desc"></textarea>
          <br>
          <input type="submit" name="submit" value="Submit" class="btn btn-primary btn-block">

        </form:form>


      </div>
    </div>
  </div>
</body>

</html>