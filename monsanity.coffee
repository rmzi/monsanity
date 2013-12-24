if Meteor.isClient

  Template.monsanity.rendered = ->
    $ ->
      BV = new $.BigVideo()
      vids = ["movies/MONS_TITLE_SM.mov", "movies/MONS_TITLE_SM1.mov"]

      BV.init()
      BV.show vids,
        ambient: true




  Template.scrollorama.rendered = ->
    window.onload = ->
      console.log 'onload!'
      $('.animation').fadeOut()
      setTimeout ->
        $('#loading').fadeOut()
      , 1000

    $('#one').backstretch "/images/walk00001.png"
    $('#two').backstretch "/images/walk00003.png"
    $('#three').backstretch "/images/walk00005.png"
    $('#four').backstretch "/images/walk00007.png"
    $('#five').backstretch "/images/walk00009.png"
    $('#six').backstretch "/images/walk00011.png"
    $('#seven').backstretch "/images/walk00013.png"
    $('#eight').backstretch "/images/walk00015.png"
    $('#nine').backstretch "/images/walk00017.png"
    $('#ten').backstretch "/images/walk00019.png"
    $('#eleven').backstretch "/images/walk00021.png"
    $('#twelve').backstretch "/images/walk00023.png"
    $('#e13').backstretch "/images/walk00025.png"
    $('#e14').backstretch "/images/walk00027.png"
    $('#e15').backstretch "/images/walk00029.png"
    $('#e16').backstretch "/images/walk00031.png"
    $('#e17').backstretch "/images/walk00033.png"
    $('#e18').backstretch "/images/walk00035.png"
    $('#e19').backstretch "/images/walk00037.png"
    $('#e20').backstretch "/images/walk00039.png"
    $('#e21').backstretch "/images/walk00041.png"
    $('#e22').backstretch "/images/walk00043.png"
    $('#e23').backstretch "/images/walk00045.png"
    $('#e24').backstretch "/images/walk00047.png"

    controller = $.superscrollorama
      #isVertical: false
      triggerAtCenter: false

    pinDuration = 5000
    pinWalking = new TimelineLite()

    pinWalking
      .append(TweenMax.from($('#two'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#three'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#four'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#five'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#six'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#seven'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#eight'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#nine'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#ten'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#eleven'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#twelve'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#e13'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#e14'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#e15'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#e16'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#e17'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#e18'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#e19'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#e20'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#e21'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#e22'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#e23'), .1, {css:{opacity:0}}))
      .append(TweenMax.from($('#e24'), .1, {css:{opacity:0}}))
      .append(TweenMax.to($('#overlay-test'), .3, {css:{opacity:1}}))

    controller.pin $('#scrolldown'), 500, {anim: TweenMax.fromTo($('#scrolldown'), .1, {css:{top: 40}, immediateRender:true}, {css:{top: 60, opacity: 0}}), offset: -40}
    controller.addTween '#pin', pinWalking, pinDuration

if Meteor.isServer
  Meteor.startup ->


# code to run on server at startup
