// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require dataTables/jquery.dataTables
//= require dataTables/bootstrap/3/jquery.dataTables.bootstrap
//= require bootstrap-sprockets
//= require bootstrap
//= require_tree .

$(document).on('click', 'div.panel.panel-primary', function (e) {
    var $this = $(this);
    if ($this.hasClass('panel-collapsed')) {
        $this.find('.panel-body').slideDown();
        $this.removeClass('panel-collapsed');
        $this.find('i').removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
    else {
        $this.find('.panel-body').slideUp();
        $this.addClass('panel-collapsed');
        $this.find('i').removeClass('glyphicon-minus').addClass('glyphicon-plus');
    }
});

$(document).ready(function () {

    $('#radioBtn a').on('click', function () {
        var sel = $(this).data('title');
        var tog = $(this).data('toggle');
        //$('#' + tog).prop('value', sel);

        $('a[data-toggle="' + tog + '"]').not('[data-title="' + sel + '"]').removeClass('active').addClass('notActive');
        $('a[data-toggle="' + tog + '"][data-title="' + sel + '"]').removeClass('notActive').addClass('active');
    });

    $(".dropdown").hover(

        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');
        },
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');
        }
    );
});

function filter_single() {
    $(".single").css('display', 'block');
    $(".batch").css('display', 'none');
}

function filter_batch() {
    $(".single").css('display', 'none');
    $(".batch").css('display', 'block');
}

function filter_all() {
    $(".single").css('display', 'block');
    $(".batch").css('display', 'block');
}

function show_single() {
    document.getElementById('view_single').style.display = 'block';
    document.getElementById('view_batch').style.display = 'none';
}

function show_batch() {
    document.getElementById('view_single').style.display = 'none';
    document.getElementById('view_batch').style.display = 'block';
}
