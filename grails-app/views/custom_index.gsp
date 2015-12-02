<%--
  Created by IntelliJ IDEA.
  User: Yoann
  Date: 11/30/2015
  Time: 12:28 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>TP Grails</title>
    <style type="text/css" media="screen">

    #page-body {
        margin: 2em 1em 1.25em 2em;
    }

    #smallHeadline {
        font-family: Gill Sans, Verdana;
        font-size: 11px;
        line-height: 14px;
        text-transform: uppercase;
        letter-spacing: 2px;
        font-weight: bold;
    }

    #largeHeadline {
        font-family: times, Times New Roman, times-roman, georgia, serif;
        color: #444;
        margin: 0;
        padding: 0px 0px 6px 0px;
        font-size: 51px;
        line-height: 44px;
        letter-spacing: -2px;
        font-weight: bold;
        margin-bottom: 0.25em;
        padding: 0;
    }


    #controller-list ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
    }

    #controller-list li {
        font: 200 20px/1.5 Helvetica, Verdana, sans-serif;
        border-bottom: 1px solid #ccc;
    }

    #controller-list li:last-child {
        border: none;
    }

    #controller-list li a {
        text-decoration: none;
        color: #000;
        display: block;

        -webkit-transition: font-size 0.3s ease, background-color 0.3s ease;
        -moz-transition: font-size 0.3s ease, background-color 0.3s ease;
        -o-transition: font-size 0.3s ease, background-color 0.3s ease;
        -ms-transition: font-size 0.3s ease, background-color 0.3s ease;
        transition: font-size 0.3s ease, background-color 0.3s ease;
    }

    #controller-list li a:hover {
        font-size: 30px;
        background: #f6f6f6;
    }


    </style>
</head>
<body>
    <div id="page-body" role="main">
        <g:if test="${session.utilisateur}">
            Connecté en tant que ${session.utilisateur} | <g:link controller="utilisateur" action="logout">Se déconnecter</g:link>
            <g:if test="${session.utilisateur.isAdmin}==true">
                ADMIN
            </g:if>
        </g:if>
        <g:else>
            <a href="projet/login">Se connecter</a>
        </g:else>

        <div id="controller-list" role="navigation">
            <div id="largeHeadline">Available Controllers:</div>
            <ul id="smallHeadline">
                <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                    <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
                </g:each>
            </ul>
        </div>
    </div>
    </body>
    </html>
