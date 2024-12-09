<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <!-- <link rel="stylesheet" href="main.css"> -->
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
       
    </style>
</head>
<body>
     <%String success=(String) request.getAttribute("success");
     if(success!=null){%>
     
     <h1 class="text-3xl text-center font-bold text-green-600"> <%=success%></h1>
     <%}%>
     <%String fail=(String) request.getAttribute("failure");
     if(fail!=null){%>
 
    <h1 class=" text-3xl text-center font-bold text-red-600"> <%=fail%></h1>
  
     <%}%>

    <div class="w-full h-[100vh] lg:flex lg:flex-col lg:justify-center lg:items-center  ">
        <p class="text-black mt-10 lg:mt-0 xl:mt-0 lg:text-3xl font-bold mb-2  md:text-2xl text-center sm:text-xl">Student <span class="text-blue-500 italic">SignUp</span> </p>
        <div class=" mx-auto h-auto max-w-[80%] lg:max-w-[30%] md:max-w-[60%]  xl:max-w-[29%] border shadow-lg border-slate-200 container-main rounded-md ">
          
            <form action="singup" method="post" class="m-5  grid  grid-cols-3 lg:grid-cols-4 xl:grid-cols-4 gap-2 xl:gap-3" >
                <label for="" class="lg:text-[1.1rem] mr-4" >Name:</label>
                <input type="text" name="name" placeholder="Enter your name" class="hover:border-blue-500 col-span-3 lg:col-span-3 focus:outline-blue-500 xl:col-span-3 w-full xl:w-auto border h-8  shadow-md rounded-md hover:scale-105 hover:shadow-lg focus:outline-0 p-1"  required>
                
               
                <label for="" class="lg:text-[1.1rem] mr-4">Phone:</label>
                <input type="tel" name="phone" placeholder="Enter your Phone" class="hover:border-blue-500 col-span-3 xl:col-span-3 lg:col-span-3  w-full xl:w-auto border h-8 shadow-md rounded-md hover:scale-105  hover:shadow-lg focus:outline-0 p-1" pattern="[0-9]{10}" required>
                
                <label for="" class="lg:text-[1.1rem] mr-6">Email:</label>
                <input type="email" name="mail" placeholder="Enter your email" class="hover:border-blue-500 col-span-3 xl:col-span-3 lg:col-span-3 w-full xl:w-auto border h-8 shadow-md rounded-md hover:scale-105  hover:shadow-lg focus:outline-0 p-1"  required >
               
                
                <label for="" class="lg:text-[1.1rem] mr-4">Branch:</label>
                <input type="text" name="branch" placeholder="Enter your Branch" class= "hover:border-blue-500 xl:col-span-3 col-span-3 w-full lg:col-span-3 xl:w-auto border h-8 shadow-md rounded-md hover:scale-105  hover:shadow-lg focus:outline-0 p-1"  required >
                
                <label for="" class="lg:text-[1.1rem] ">Location:</label>
                <input type="text" name="loc" placeholder="Enter your location" class="hover:border-blue-500 xl:col-span-3 col-span-3 w-full lg:col-span-3 xl:w-auto border h-8 shadow-md rounded-md hover:scale-105  hover:shadow-lg focus:outline-0 p-1 "  required >
                
                <label for="" class="lg:text-[1.1rem] ">password:</label>
                <input type="password" name="password" placeholder="Enter your password" class="hover:border-blue-500 xl:col-span-3 col-span-3 w-full lg:col-span-3 xl:w-auto border h-8 shadow-md rounded-md hover:scale-105  hover:shadow-lg focus:outline-0 p-1" pattern="[0-9]{4,}"  required >
        
                <label for="" class="lg:text-[1.1rem]  ">Confirm:</label>
                <input type="password" name="confirm" placeholder="Confirm password" class="hover:border-blue-500 xl:col-span-3 col-span-3 w-full lg:col-span-3 xl:w-auto border h-8 shadow-md rounded-md hover:scale-105  hover:shadow-lg focus:outline-0 p-1"  pattern="[0-9]{4,}" required >
              
                <button id="login" type="submit"  class="bg-blue-500 hover:scale-105 hover:shadow-md xl:col-span-4 lg:col-span-4 col-span-3 rounded-md h-10 w-full lg:text-[1rem] xl:text-[1rem] mt-2 font-bold text-cyan-50 ">SignUp</button>
            </form>
            <p class="text-center mb-4 lg:text-[1.1rem]">Already have an account? <a class="decoration-blue-700 underline text-blue-700 italic" href="index.jsp">Login</a></p>
        </div>
    </div>
    
</body>
</html>

    