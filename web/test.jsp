<%-- 
    Document   : test
    Created on : 13 Dec, 2020, 8:32:10 PM
    Author     : Asus
--%>

<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entities.Product"%>
<%@page import="com.newwayshopping.dao.Productdao"%>
<%@page import="com.newwayshopping.databases.Database"%>
<%@page import="entities.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>

            .background-img{
                width: 100%;
                height: 100vh;
                background: url("images/night-sky.png");
                background-repeat: no-repeat;
                background-position: center center;
                background-size: cover;
                background-attachment: fixed

            }
            .modal-body{
                overflow: hidden;
                overflow-y: auto;
                height: 350px;
            }

        </style>
    </head>
    <body>
        <div class="background-img">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                Launch demo modal
            </button>

            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">

                            Wikipedia (/ˌwɪkɪˈpiːdiə/ (About this soundlisten) wik-ih-PEE-dee-ə or /ˌwɪki-/ (About this soundlisten) wik-ee-) is a free, multilingual open-collaborative online encyclopedia created and maintained by a community of volunteer contributors using a wiki-based editing system. Wikipedia is the largest general reference work on the Internet,[3] and one of the 15 most popular websites as ranked by Alexa; in 2021, it was ranked as the 13th most visited.[4][note 3] The project carries no advertisements and is hosted by the Wikimedia Foundation, an American non-profit organization funded mainly through donations, 80% of which are small donations from individual users.[6]

                            Wikipedia was launched on January 15, 2001, by Jimmy Wales and Larry Sanger; its name was coined as a portmanteau of "wiki" and "encyclopedia". Initially available only in English, versions in other languages were quickly developed. The English Wikipedia, with 6.3 million articles as of February 2021, is the largest of the 319 language editions. Combined, Wikipedia's editions comprise more than 55 million articles, and attract more than 17 million edits and more than 1.7 billion unique visitors per month.[7]

                            Wikipedia has been criticized for its uneven accuracy and for exhibiting systemic bias, particularly gender bias, with the majority of editors being male.[8] In 2006, Time magazine stated that the open-door policy of allowing anyone to edit had made Wikipedia the "biggest and perhaps the best encyclopedia in the world", and a testament to the vision of Jimmy Wales.[9] The project's reputation improved further in the 2010s, as it received praise for its unique structure, culture, and absence of commercial bias.[3][8] In 2018, Facebook and YouTube announced that they would help users detect fake news by suggesting links to related Wikipedia articles.[10]
                            ...
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      
    </body>
</html>
