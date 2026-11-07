
const mobileScreen = window.matchMedia("(max-width: 990px )");

import jquery from 'jquery'
window.jQuery = jquery
window.$ = jquery


$(document).ready(function () {
    $(".dashboard-nav-dropdown-toggle").click(function () {
        debugger
        $(this).closest(".dashboard-nav-dropdown")
            .toggleClass("show")
            .find(".dashboard-nav-dropdown")
            .removeClass("show");
        $(this).parent()
            .siblings()
            .removeClass("show");
    });
    $(".menu-toggle").click(function () {
        debugger
        if (mobileScreen.matches) {
            debugger
            $(".dashboard-nav").toggleClass("mobile-show");
        } else {
            debugger
            $(".dashboard").toggleClass("dashboard-compact");
        }
    });
});


$('.dashboard-nav-item').on('click', function(){
    $(this).addClass('activated'); //eventually removeClass of some previous class
    //other stuff
});