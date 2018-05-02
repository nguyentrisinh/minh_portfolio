/*global $, document, window, mixitup, setTimeout, WOW*/
$(document).ready(function () {

    'use strict';

    // ---------------------------------------------- //
    // Navbar Functionality
    // ---------------------------------------------- //
    $('#navbar-open').on('click', function (e) {
        $('.navbar-outer').show();
        e.preventDefault();
        setTimeout(function () { $('.navbar-inner').addClass('active'); }, 300);

        $('.navbar-menu a').each(function (i) {
            setTimeout(function () {
                $('.navbar-menu a').eq(i).addClass('active');
            }, 600 + (100 * i));
        });
    });

    // $('#close-btn, nav.main-navbar a').on('click', function (e) {
    $('#close-btn').on('click', function (e) {
        e.preventDefault();
        $('.navbar-inner').removeClass('active');
        setTimeout(function () { $('.navbar-outer').hide(); }, 600);
        setTimeout(function () { $('.navbar-menu a').removeClass('active'); }, 300);
    });


    // ---------------------------------------------- //
    // jQuery Counter Up Intialization
    // ---------------------------------------------- //
    $('.counter').counterUp({
        delay: 20, // the delay time in ms
        time: 2000 // the speed time in ms
    });


    // ---------------------------------------------- //
    // Preventing URL update on navigation link click
    // ---------------------------------------------- //
    $('ul.navbar-menu a').bind('click', function (e) {
        var anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $(anchor.attr('href')).offset().top
        }, 1000);
        e.preventDefault();
    });


    // ---------------------------------------------- //
    // MixItUp Intialization
    // ---------------------------------------------- //
    var mixer = mixitup('#gallery');


    // ------------------------------------------------------ //
    // Contact form validation
    // ------------------------------------------------------ //
    $('#contact-form').validate({
        messages: {
            username: 'please enter your name',
            useremail: 'please enter your email address',
            subject: 'please enter the subject',
            message: 'please enter your message'
        }
    });


    // ------------------------------------------------------ //
    // Contact form label behavior
    // ------------------------------------------------------ //
    $('.form-control').on('focus', function () {
        $(this).siblings('label').not('.error').addClass('active');
    });

    $('.form-control').on('blur', function () {
        if ($(this).val() === '') {
            $(this).siblings('label').not('.error').removeClass('active');
        }
    });


    // ------------------------------------------------------ //
    // WOW.Js Initialization
    // ------------------------------------------------------ //
    new WOW().init();


    // ------------------------------------------------------ //
    // Scroll To Top Button
    // ------------------------------------------------------ //
    $(window).on('scroll', function () {
        if ($(this).scrollTop() > 1000) {
            $('#scrollTop').addClass('visible');
        } else {
            $('#scrollTop').removeClass('visible');
        }
    });

    $('#scrollTop').on('click', function () {
        $('html, body').animate({scrollTop: 0}, 1000);
    });


    // ------------------------------------------------------ //
    // Preloader
    // ------------------------------------------------------ //
    $(window).on('load', function () {
        $('.preloader').fadeOut(300, function () {
            $(this).remove();
        });
    });

});
