<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Dashboard &middot; Elephant Template &middot; The fastest way to build modern admin site for any platform, browser, or device</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
    <meta name="description" content="Elephant is a front-end template created to help you build modern web applications, fast and in a professional manner.">
    <meta property="og:url" content="http://demo.naksoid.com/elephant">
    <meta property="og:type" content="website">
    <meta property="og:title" content="The fastest way to build modern admin site for any platform, browser, or device">
    <meta property="og:description" content="Elephant is a front-end template created to help you build modern web applications, fast and in a professional manner.">
    <meta property="og:image" content="images/ae165ef33d137d3f18b7707466aa774d.jpg">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@naksoid">
    <meta name="twitter:creator" content="@naksoid">
    <meta name="twitter:title" content="The fastest way to build modern admin site for any platform, browser, or device">
    <meta name="twitter:description" content="Elephant is a front-end template created to help you build modern web applications, fast and in a professional manner.">
    <meta name="twitter:image" content="images/ae165ef33d137d3f18b7707466aa774d.jpg">
    <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" href="favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="favicon-16x16.png" sizes="16x16">
    <link rel="manifest" href="manifest.json">
    <link rel="mask-icon" href="safari-pinned-tab.svg" color="#d9230f">
    <meta name="theme-color" content="#ffffff">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,400italic,500,700">
    <link rel="stylesheet" href="resources/css/vendor.min.css">
    <link rel="stylesheet" href="resources/css/elephant.min.css">
    <link rel="stylesheet" href="resources/css/application.min.css">
  </head>
  <body class="layout layout-header-fixed">
    <jsp:include page="header.jsp"></jsp:include>
    <div class="layout-main">
      <jsp:include page="main.jsp"></jsp:include>
      <div class="layout-content">
        <div class="layout-content-body">
          <div class="title-bar">
            <div class="title-bar-actions">
              <select class="selectpicker dropdown" name="period" data-dropdown-align-right="true" data-style="btn-default btn-sm" data-width="fit">
                <option value="today">Today</option>
                <option value="yesterday">Yesterday</option>
                <option value="last_7d" selected="selected">Last 7 days</option>
                <option value="last_1m">Last 30 days</option>
                <option value="last_3m">Last 90 days</option>
              </select>
            </div>
            <h1 class="title-bar-title">
              <span class="d-ib">Dashboard</span>
              <span class="d-ib">
                <a class="title-bar-shortcut" href="#" title="Add to shortcut list" data-container="body" data-toggle-text="Remove from shortcut list" data-trigger="hover" data-placement="right" data-toggle="tooltip">
                  <span class="sr-only">Add to shortcut list</span>
                </a>
              </span>
            </h1>
            <p class="title-bar-description">
              <small>You can personalize your dashboard by using <a href="widgets.html">widgets</a>.</small>
            </p>
          </div>
          <div class="row gutter-xs">
            <div class="col-xs-6 col-md-3">
              <div class="card">
                <div class="card-values">
                  <div class="p-x">
                    <small>Visitors</small>
                    <h3 class="card-title fw-l">185,118</h3>
                  </div>
                </div>
                <div class="card-chart">
                  <canvas data-chart="line" data-animation="false" data-labels='["Jun 21", "Jun 20", "Jun 19", "Jun 18", "Jun 17", "Jun 16", "Jun 15"]' data-values='[{"backgroundColor": "rgba(217, 35, 15, 0.03)", "borderColor": "#d9230f", "data": [25250, 23370, 25568, 28961, 26762, 30072, 25135]}]' data-scales='{"yAxes": [{ "ticks": {"max": 32327}}]}' data-hide='["legend", "points", "scalesX", "scalesY", "tooltips"]' height="35"></canvas>
                </div>
              </div>
            </div>
            <div class="col-xs-6 col-md-3">
              <div class="card">
                <div class="card-values">
                  <div class="p-x">
                    <small>New visitors</small>
                    <h3 class="card-title fw-l">68,494</h3>
                  </div>
                </div>
                <div class="card-chart">
                  <canvas data-chart="line" data-animation="false" data-labels='["Jun 21", "Jun 20", "Jun 19", "Jun 18", "Jun 17", "Jun 16", "Jun 15"]' data-values='[{"backgroundColor": "rgba(217, 35, 15, 0.03)", "borderColor": "#d9230f", "data": [8796, 11317, 8678, 9452, 8453, 11853, 9945]}]' data-scales='{"yAxes": [{ "ticks": {"max": 12742}}]}' data-hide='["legend", "points", "scalesX", "scalesY", "tooltips"]' height="35"></canvas>
                </div>
              </div>
            </div>
            <div class="col-xs-6 col-md-3">
              <div class="card">
                <div class="card-values">
                  <div class="p-x">
                    <small>Pageviews</small>
                    <h3 class="card-title fw-l">925,590</h3>
                  </div>
                </div>
                <div class="card-chart">
                  <canvas data-chart="line" data-animation="false" data-labels='["Jun 21", "Jun 20", "Jun 19", "Jun 18", "Jun 17", "Jun 16", "Jun 15"]' data-values='[{"backgroundColor": "rgba(217, 35, 15, 0.03)", "borderColor": "#d9230f", "data": [116196, 145160, 124419, 147004, 134740, 120846, 137225]}]' data-scales='{"yAxes": [{ "ticks": {"max": 158029}}]}' data-hide='["legend", "points", "scalesX", "scalesY", "tooltips"]' height="35"></canvas>
                </div>
              </div>
            </div>
            <div class="col-xs-6 col-md-3">
              <div class="card">
                <div class="card-values">
                  <div class="p-x">
                    <small>Average duration</small>
                    <h3 class="card-title fw-l">00:07:56</h3>
                  </div>
                </div>
                <div class="card-chart">
                  <canvas data-chart="line" data-animation="false" data-labels='["Jun 21", "Jun 20", "Jun 19", "Jun 18", "Jun 17", "Jun 16", "Jun 15"]' data-values='[{"backgroundColor": "rgba(217, 35, 15, 0.03)", "borderColor": "#d9230f", "data": [13590442, 12362934, 13639564, 13055677, 12915203, 11009940, 11542408]}]' data-scales='{"yAxes": [{ "ticks": {"max": 14662531}}]}' data-hide='["legend", "points", "scalesX", "scalesY", "tooltips"]' height="35"></canvas>
                </div>
              </div>
            </div>
          </div>
          <div class="row gutter-xs">
            <div class="col-xs-12 col-md-6">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Audience Overview</h4>
                </div>
                <div class="card-body">
                  <div class="card-chart">
                    <canvas data-chart="line" data-animation="false" data-labels='["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]' data-values='[{"label": "This week", "backgroundColor": "transparent", "borderColor": "#d9230f", "pointBackgroundColor": "#d9230f", "data": [29432, 20314, 17665, 22162, 31194, 35053, 29298]}, {"label": "Last week", "backgroundColor": "transparent", "borderColor": "#d9831f", "pointBackgroundColor": "#d9831f", "data": [9956, 22607, 30963, 22668, 16338, 22222, 39238]}]' data-tooltips='{"mode": "label"}' data-hide='["gridLinesX", "legend"]' height="150"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xs-12 col-md-6">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">19,429 Signups</h4>
                </div>
                <div class="card-body">
                  <div class="card-chart">
                    <canvas data-chart="bar" data-animation="false" data-labels='["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]' data-values='[{"label": "This week", "backgroundColor": "#d9230f", "borderColor": "#d9230f", "data": [3089, 2132, 1854, 2326, 3274, 3679, 3075]}, {"label": "Last week", "backgroundColor": "#d9831f", "borderColor": "#d9831f", "data": [983, 2232, 3057, 2238, 1613, 2194, 3874]}]' data-tooltips='{"mode": "label"}' data-hide='["gridLinesX", "legend"]' height="150"></canvas>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row gutter-xs">
            <div class="col-md-4">
              <div class="card">
                <div class="card-body">
                  <div class="media">
                    <div class="media-middle media-left">
                      <span class="bg-gray sq-64 circle">
                        <span class="icon icon-flag"></span>
                      </span>
                    </div>
                    <div class="media-middle media-body">
                      <h3 class="media-heading">
                        <span class="fw-l">1,256 Issues</span>
                        <span class="fw-b fz-sm text-danger">
                          <span class="icon icon-caret-up"></span>
                          15%
                        </span>
                      </h3>
                      <small>6 issues are unassigned</small>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card">
                <div class="card-body">
                  <div class="media">
                    <div class="media-middle media-left">
                      <div class="media-chart">
                        <canvas data-chart="doughnut" data-animation="false" data-labels='["Resolved", "Unresolved"]' data-values='[{"backgroundColor": ["#d9230f", "#777"], "data": [879, 377]}]' data-hide='["legend", "scalesX", "scalesY", "tooltips"]' height="64" width="64"></canvas>
                      </div>
                    </div>
                    <div class="media-middle media-body">
                      <h2 class="media-heading">
                        <span class="fw-l">879</span>
                        <small>Resolved</small>
                      </h2>
                      <small>More than 70% resolved issues</small>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card">
                <div class="card-body">
                  <div class="media">
                    <div class="media-middle media-left">
                      <div class="media-chart">
                        <canvas data-chart="doughnut" data-animation="false" data-labels='["Resolved", "Unresolved"]' data-values='[{"backgroundColor": ["#777", "#d9230f"], "data": [879, 377]}]' data-hide='["legend", "scalesX", "scalesY", "tooltips"]' height="64" width="64"></canvas>
                      </div>
                    </div>
                    <div class="media-middle media-body">
                      <h2 class="media-heading">
                        <span class="fw-l">377</span>
                        <small>Unresolved</small>
                      </h2>
                      <small>Less than 30% unresolved issues</small>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row gutter-xs">
            <div class="col-md-8 col-md-push-4">
              <div class="row gutter-xs">
                <div class="col-md-6">
                  <div class="card">
                    <div class="card-header">
                      <div class="card-actions">
                        <button type="button" class="card-action card-toggler" title="Collapse"></button>
                        <button type="button" class="card-action card-reload" title="Reload"></button>
                        <button type="button" class="card-action card-remove" title="Remove"></button>
                      </div>
                      <strong>Traffic Source</strong>
                    </div>
                    <div class="card-body" data-toggle="match-height">
                      <ul class="list-group list-group-divided">
                        <li class="list-group-item">
                          <div class="media">
                            <div class="media-middle media-body">
                              <h6 class="media-heading">
                                <span class="text-muted">Direct</span>
                              </h6>
                              <h4 class="media-heading">67%
                                <small>124,029</small>
                              </h4>
                            </div>
                            <div class="media-middle media-right">
                              <span class="bg-primary circle sq-40">
                                <span class="icon icon-arrow-right"></span>
                              </span>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item">
                          <div class="media">
                            <div class="media-middle media-body">
                              <h6 class="media-heading">
                                <span class="text-muted">Referrals</span>
                              </h6>
                              <h4 class="media-heading">21%
                                <small>38,875</small>
                              </h4>
                            </div>
                            <div class="media-middle media-right">
                              <span class="bg-primary circle sq-40">
                                <span class="icon icon-link"></span>
                              </span>
                            </div>
                          </div>
                        </li>
                        <li class="list-group-item">
                          <div class="media">
                            <div class="media-middle media-body">
                              <h6 class="media-heading">
                                <span class="text-muted">Search Engines</span>
                              </h6>
                              <h4 class="media-heading">12%
                                <small>22,214</small>
                              </h4>
                            </div>
                            <div class="media-middle media-right">
                              <span class="bg-primary circle sq-40">
                                <span class="icon icon-search"></span>
                              </span>
                            </div>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-body">
                      <div class="card-heading">
                        <strong>Location</strong>
                        <span aria-hidden="true"> · </span>
                        <a href="#">View full report</a>
                      </div>
                      <div class="card-map">
                        <div data-toggle="vector-map" data-map="world_en" data-background-color="null" data-color="#ffffff" data-enable-zoom="true" data-hover-opacity="0.7" data-selected-color="#777" data-show-tooltip="true" data-scale-colors='["#d9230f", "#950e0a"]' data-values='{ "us":8167, "cn":6724, "gb":6527, "br":6330, "it":6232, "jp":6035, "ru":5871, "fr":5658, "in":5494, "au":5133, "ca":4379, "de":4034, "kp":4887, "ar":4608, "mx":4018, "tr":2706, "za":2066, "sa":1624, "id":1902, "gd":656, "lb":656, "cm":640, "cz":640, "ke":640, "mr":640, "om":640, "sk":640, "as":623, "be":623, "eg":623, "ma":623, "me":623, "my":623, "nz":623, "tv":623, "ua":623, "dz":607, "fj":607, "er":590, "fm":590, "ie":590, "ml":590, "pw":590, "se":590, "sl":590, "ug":590, "bs":574, "mk":574, "mt":574, "sv":574, "sy":574, "tn":574, "ba":558, "cg":558, "gs":558, "bf":541, "ci":541, "ge":541, "lv":541, "ph":541, "sz":541, "am":525, "bb":525, "iq":525, "af":508, "az":508, "ee":508, "ad":492, "bt":492, "by":492, "ch":492, "et":492, "gh":492, "gy":492, "io":492, "kn":492, "np":492, "so":492, "bi":476, "bz":476, "gm":476, "ki":476, "mw":476, "tg":476, "cd":459, "cl":459, "cv":459, "do":459, "la":459, "sb":459, "st":459, "ck":443, "pg":443, "rs":443, "tl":443, "na":426, "ve":426, "ae":410, "at":410, "kh":410, "lc":410, "lr":410, "sc":410, "tz":410, "uz":410, "bd":394, "bw":394, "gt":394, "jm":394, "pa":394, "pl":394, "tm":394, "tw":394, "fi":377, "ir":377, "ly":377, "sr":377, "ec":361, "ga":361, "mc":361, "mh":361, "mn":361, "bh":344, "gw":344, "sd":344, "sn":344, "to":344, "bn":328, "cr":328, "dm":328, "kw":328, "mg":328, "pe":328, "py":328, "th":328, "bo":312, "hn":312, "hu":312, "ng":312, "no":312, "pt":312, "al":295, "ao":295, "lt":295, "mm":295, "mu":295, "mv":295, "ne":295, "ni":295, "ss":295, "tt":295, "ws":295, "lu":279, "md":279, "si":279, "bg":262, "dk":262, "gn":262, "ht":262, "km":262, "vc":262, "vu":262, "zw":262, "cf":246, "cu":246, "cy":246, "gr":246, "nu":246, "rw":246, "sm":246, "tj":246, "vn":246, "ag":230, "bj":230, "pk":230, "ro":230, "ye":230, "co":213, "hr":213, "il":213, "kz":213, "qa":213, "gq":197, "jo":197, "mz":197, "sg":197, "td":197, "zm":197, "dj":180, "is":180, "kg":180, "lk":180, "nl":180, "nr":180, "uy":180, "es":164, "ls":164 }' style="height: 170px; width: 100%"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="card">
                    <div class="card-header">
                      <div class="card-actions">
                        <button type="button" class="card-action card-toggler" title="Collapse"></button>
                        <button type="button" class="card-action card-reload" title="Reload"></button>
                        <button type="button" class="card-action card-remove" title="Remove"></button>
                      </div>
                      <strong>Top Active Pages</strong>
                    </div>
                    <div class="card-body" data-toggle="match-height">
                      <table class="table table-borderless table-middle">
                        <tbody>
                          <tr>
                            <td class="col-xs-1">1.</td>
                            <td class="col-xs-6">
                              <a class="link-muted" href="#">/getting-started</a>
                            </td>
                            <td class="col-xs-2">
                              <div class="text-right">185,118</div>
                            </td>
                            <td class="col-xs-3">
                              <div class="progress progress-sm m-y-0">
                                <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                  <span class="sr-only">100% Complete</span>
                                </div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td class="col-xs-1">2.</td>
                            <td class="col-xs-6">
                              <a class="link-muted" href="#">/pricing</a>
                            </td>
                            <td class="col-xs-2">
                              <div class="text-right">185,118</div>
                            </td>
                            <td class="col-xs-3">
                              <div class="progress progress-sm m-y-0">
                                <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                  <span class="sr-only">100% Complete</span>
                                </div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td class="col-xs-1">3.</td>
                            <td class="col-xs-6">
                              <a class="link-muted" href="#">/blog</a>
                            </td>
                            <td class="col-xs-2">
                              <div class="text-right">138,839</div>
                            </td>
                            <td class="col-xs-3">
                              <div class="progress progress-sm m-y-0">
                                <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%">
                                  <span class="sr-only">75% Complete</span>
                                </div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td class="col-xs-1">4.</td>
                            <td class="col-xs-6">
                              <a class="link-muted" href="#">/support</a>
                            </td>
                            <td class="col-xs-2">
                              <div class="text-right">138,220</div>
                            </td>
                            <td class="col-xs-3">
                              <div class="progress progress-sm m-y-0">
                                <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%">
                                  <span class="sr-only">75% Complete</span>
                                </div>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td class="col-xs-1">5.</td>
                            <td class="col-xs-6">
                              <a class="link-muted" href="#">/about-us</a>
                            </td>
                            <td class="col-xs-2">
                              <div class="text-right">17,385</div>
                            </td>
                            <td class="col-xs-3">
                              <div class="progress progress-sm m-y-0">
                                <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="15000" style="width: 50%">
                                  <span class="sr-only">50% Complete</span>
                                </div>
                              </div>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-body">
                      <div class="card-heading">
                        <strong>Top Search Terms</strong>
                        <span aria-hidden="true"> · </span>
                        <a href="#">Refresh</a>
                        <span aria-hidden="true"> · </span>
                        <a href="#">Settings</a>
                      </div>
                      <div class="card-phrases">
                        <div class="text-justify">
                          <a class="link-muted" href="#" title="Search nodejs" style="font-size: 11px">nodejs</a>
                          <a class="link-muted" href="#" title="Search modernizr" style="font-size: 9px">modernizr</a>
                          <a class="link-muted" href="#" title="Search babel" style="font-size: 14px">babel</a>
                          <a class="link-muted" href="#" title="Search elephant" style="font-size: 36px">elephant</a>
                          <a class="link-muted" href="#" title="Search admin" style="font-size: 13px">admin</a>
                          <a class="link-muted" href="#" title="Search package" style="font-size: 9px">package</a>
                          <a class="link-muted" href="#" title="Search gruntjs" style="font-size: 12px">gruntjs</a>
                          <a class="link-muted" href="#" title="Search underscore" style="font-size: 9px">underscore</a>
                          <a class="link-muted" href="#" title="Search jquery" style="font-size: 20px">jquery</a>
                          <a class="link-muted" href="#" title="Search material" style="font-size: 9px">material</a>
                          <a class="link-muted" href="#" title="Search material-design" style="font-size: 11px">material-design</a>
                          <a class="link-muted" href="#" title="Search validation" style="font-size: 11px">validation</a>
                          <a class="link-muted" href="#" title="Search angularjs" style="font-size: 24px">angularjs</a>
                          <a class="link-muted" href="#" title="Search react" style="font-size: 14px">react</a>
                          <a class="link-muted" href="#" title="Search requirejs" style="font-size: 9px">requirejs</a>
                          <a class="link-muted" href="#" title="Search form" style="font-size: 9px">form</a>
                          <a class="link-muted" href="#" title="Search widgets" style="font-size: 14px">widgets</a>
                          <a class="link-muted" href="#" title="Search sass" style="font-size: 23px">sass</a>
                          <a class="link-muted" href="#" title="Search chartjs" style="font-size: 9px">chartjs</a>
                          <a class="link-muted" href="#" title="Search theme" style="font-size: 14px">theme</a>
                          <a class="link-muted" href="#" title="Search api" style="font-size: 33px">api</a>
                          <a class="link-muted" href="#" title="Search gulp" style="font-size: 10px">gulp</a>
                          <a class="link-muted" href="#" title="Search bootstrap" style="font-size: 23px">bootstrap</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4 col-md-pull-8">
              <div class="card">
                <div class="card-header">
                  <div class="card-actions">
                    <button type="button" class="card-action card-toggler" title="Collapse"></button>
                    <button type="button" class="card-action card-reload" title="Reload"></button>
                    <button type="button" class="card-action card-remove" title="Remove"></button>
                  </div>
                  <strong>Activity Log</strong>
                </div>
                <div class="card-body">
                  <div class="timeline">
                    <div class="timeline-item">
                      <div class="timeline-segment">
                        <span class="timeline-divider"></span>
                      </div>
                      <div class="timeline-content"></div>
                    </div>
                    <div class="timeline-item">
                      <div class="timeline-segment">
                        <img class="timeline-media img-circle" width="40" height="40" src="resources/images/0299419341.jpg" alt="Harry Jones">
                      </div>
                      <div class="timeline-content">
                        <div class="timeline-row">
                          <a href="#">Harry Jones</a>
                          <small>5 min ago</small>
                        </div>
                        <div class="timeline-row">
                          A user accepted a request to receive a transferred repository.
                        </div>
                      </div>
                    </div>
                    <div class="timeline-item">
                      <div class="timeline-segment">
                        <img class="timeline-media img-circle" width="40" height="40" src="resources/images/0180441436.jpg" alt="Teddy Wilson">
                      </div>
                      <div class="timeline-content">
                        <div class="timeline-row">
                          <a href="#">Teddy Wilson</a>
                          <small>5 min ago</small>
                        </div>
                        <div class="timeline-row">
                          A user sent a request to transfer a repository to another user or organization.
                        </div>
                      </div>
                    </div>
                    <div class="timeline-item">
                      <div class="timeline-segment">
                        <img class="timeline-media img-circle" width="40" height="40" src="resources/images/0310728269.jpg" alt="Daniel Taylor">
                      </div>
                      <div class="timeline-content">
                        <div class="timeline-row">
                          <a href="#">Daniel Taylor</a>
                          <small>7 min ago</small>
                        </div>
                        <div class="timeline-row">
                          A collaborator was added to a repository.
                        </div>
                      </div>
                    </div>
                    <div class="timeline-item">
                      <div class="timeline-segment">
                        <img class="timeline-media img-circle" width="40" height="40" src="resources/images/0299419341.jpg" alt="Harry Jones">
                      </div>
                      <div class="timeline-content">
                        <div class="timeline-row">
                          <a href="#">Harry Jones</a>
                          <small>9 min ago</small>
                        </div>
                        <div class="timeline-row">
                          A collaborator was added to a repository.
                        </div>
                      </div>
                    </div>
                    <div class="timeline-item">
                      <div class="timeline-segment">
                        <img class="timeline-media img-circle" width="40" height="40" src="resources/images/0180441436.jpg" alt="Teddy Wilson">
                      </div>
                      <div class="timeline-content">
                        <div class="timeline-row">
                          <a href="#">Teddy Wilson</a>
                          <small>11 min ago</small>
                        </div>
                        <div class="timeline-row">
                          A repository <a href="#">elephant</a> was created.
                        </div>
                      </div>
                    </div>
                  </div>
                  <button class="btn btn-primary btn-sm btn-block" type="button">See all</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="layout-footer">
        <div class="layout-footer-body">
          <small class="version">Version 1.2.0</small>
          <small class="copyright">2016 &copy; Elephant By <a href="http://naksoid.com/">Naksoid</a></small>
        </div>
      </div>
    </div>
    <div class="theme">
      <div class="theme-panel theme-panel-collapsed">
        <div class="theme-panel-controls">
          <button class="theme-panel-toggler" title="Expand theme panel ( ] )" type="button">
            <span class="icon icon-cog icon-spin" aria-hidden="true"></span>
          </button>
        </div>
        <div class="theme-panel-body">
          <div class="custom-scrollbar">
            <div class="custom-scrollbar-inner">
              <h5 class="theme-heading">
                <a href="/elephant-v1.2.0/buy" class="btn btn-primary btn-block">Buy Elephant Now!</a>
              </h5>
              <ul class="theme-settings">
                <li class="theme-settings-heading">
                  <div class="divider">
                    <div class="divider-content">Theme Settings</div>
                  </div>
                </li>
                <li class="theme-settings-item">
                  <div class="theme-settings-label">Header fixed</div>
                  <div class="theme-settings-switch">
                    <label class="switch switch-primary">
                      <input class="switch-input" type="checkbox" name="layout-header-fixed" data-sync="true">
                      <span class="switch-track"></span>
                      <span class="switch-thumb"></span>
                    </label>
                  </div>
                </li>
                <li class="theme-settings-item">
                  <div class="theme-settings-label">Sidebar fixed</div>
                  <div class="theme-settings-switch">
                    <label class="switch switch-primary">
                      <input class="switch-input" type="checkbox" name="layout-sidebar-fixed" data-sync="true">
                      <span class="switch-track"></span>
                      <span class="switch-thumb"></span>
                    </label>
                  </div>
                </li>
                <li class="theme-settings-item">
                  <div class="theme-settings-label">Sidebar sticky*</div>
                  <div class="theme-settings-switch">
                    <label class="switch switch-primary">
                      <input class="switch-input" type="checkbox" name="layout-sidebar-sticky" data-sync="true">
                      <span class="switch-track"></span>
                      <span class="switch-thumb"></span>
                    </label>
                  </div>
                </li>
                <li class="theme-settings-item">
                  <div class="theme-settings-label">Sidebar collapsed</div>
                  <div class="theme-settings-switch">
                    <label class="switch switch-primary">
                      <input class="switch-input" type="checkbox" name="layout-sidebar-collapsed" data-sync="false">
                      <span class="switch-track"></span>
                      <span class="switch-thumb"></span>
                    </label>
                  </div>
                </li>
                <li class="theme-settings-item">
                  <div class="theme-settings-label">Footer fixed</div>
                  <div class="theme-settings-switch">
                    <label class="switch switch-primary">
                      <input class="switch-input" type="checkbox" name="layout-footer-fixed" data-sync="true">
                      <span class="switch-track"></span>
                      <span class="switch-thumb"></span>
                    </label>
                  </div>
                </li>
                <li class="theme-settings-description">
                  <span>
                    <strong>Sidebar sticky*</strong> - by scrolling up and down the page, the menu placed on the sidebar moves along with the content until the bottom of the menu is reached. <a href="page-layouts.html">Learn more</a></span>
                </li>
              </ul>
              <hr class="theme-divider">
              <ul class="theme-variants">
                <li class="theme-variants-item">
                  <a class="theme-variants-link" href="/elephant-v1.2.0/theme-1/" title="Flaming Red (default)" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">
                    <img class="img-responsive" src="resources/images/9722110524.jpg" alt="Flaming Red Theme">
                  </a>
                  <a class="theme-variants-alt" href="/elephant-v1.2.0/theme-1-rounded/" title="Rounded Corners Version" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">Rounded</a>
                </li>
                <li class="theme-variants-item">
                  <a class="theme-variants-link" href="/elephant-v1.2.0/theme-1-inverse/" title="Flaming Red (inverse)" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">
                    <img class="img-responsive" src="resources/images/9870681590.jpg" alt="Flaming Red Theme">
                  </a>
                  <a class="theme-variants-alt" href="/elephant-v1.2.0/theme-1-inverse-rounded/" title="Rounded Corners Version" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">Rounded</a>
                </li>
                <li class="theme-variants-item">
                  <a class="theme-variants-link" href="/elephant-v1.2.0/theme-4/" title="Flatistic Green (default)" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">
                    <img class="img-responsive" src="resources/images/9964167452.jpg" alt="Flatistic Green Theme">
                  </a>
                  <a class="theme-variants-alt" href="/elephant-v1.2.0/theme-4-rounded/" title="Rounded Corners Version" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">Rounded</a>
                </li>
                <li class="theme-variants-item">
                  <a class="theme-variants-link" href="/elephant-v1.2.0/theme-4-inverse/" title="Flatistic Green (inverse)" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">
                    <img class="img-responsive" src="resources/images/1007517980.jpg" alt="Flatistic Green Theme">
                  </a>
                  <a class="theme-variants-alt" href="/elephant-v1.2.0/theme-4-inverse-rounded/" title="Rounded Corners Version" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">Rounded</a>
                </li>
                <li class="theme-variants-item">
                  <a class="theme-variants-link" href="/elephant-v1.2.0/theme-3/" title="Midnight Blue (default)" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">
                    <img class="img-responsive" src="resources/images/1015664515.jpg" alt="Midnight Blue Theme">
                  </a>
                  <a class="theme-variants-alt" href="/elephant-v1.2.0/theme-3-rounded/" title="Rounded Corners Version" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">Rounded</a>
                </li>
                <li class="theme-variants-item">
                  <a class="theme-variants-link" href="/elephant-v1.2.0/theme-3-inverse/" title="Midnight Blue (inverse)" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">
                    <img class="img-responsive" src="resources/images/1025453682.jpg" alt="Midnight Blue Theme">
                  </a>
                  <a class="theme-variants-alt" href="/elephant-v1.2.0/theme-3-inverse-rounded/" title="Rounded Corners Version" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">Rounded</a>
                </li>
                <li class="theme-variants-item">
                  <a class="theme-variants-link" href="/elephant-v1.2.0/theme-5/" title="Materialistic Blue (default)" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">
                    <img class="img-responsive" src="resources/images/1033422797.jpg" alt="Materialistic Blue Theme">
                  </a>
                  <a class="theme-variants-alt" href="/elephant-v1.2.0/theme-5-rounded/" title="Rounded Corners Version" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">Rounded</a>
                </li>
                <li class="theme-variants-item">
                  <a class="theme-variants-link" href="/elephant-v1.2.0/theme-5-inverse/" title="Materialistic Blue (inverse)" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">
                    <img class="img-responsive" src="resources/images/1044368407.jpg" alt="Materialistic Blue Theme">
                  </a>
                  <a class="theme-variants-alt" href="/elephant-v1.2.0/theme-5-inverse-rounded/" title="Rounded Corners Version" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">Rounded</a>
                </li>
                <li class="theme-variants-item">
                  <a class="theme-variants-link" href="/elephant-v1.2.0/theme-6/" title="Eerie Black (default)" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">
                    <img class="img-responsive" src="resources/images/1050099119.jpg" alt="Eerie Black Theme">
                  </a>
                  <a class="theme-variants-alt" href="/elephant-v1.2.0/theme-6-rounded/" title="Rounded Corners Version" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">Rounded</a>
                </li>
                <li class="theme-variants-item">
                  <a class="theme-variants-link" href="/elephant-v1.2.0/theme-6-inverse/" title="Eerie Black (inverse)" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">
                    <img class="img-responsive" src="resources/images/1067123558.jpg" alt="Eerie Black Theme">
                  </a>
                  <a class="theme-variants-alt" href="/elephant-v1.2.0/theme-6-inverse-rounded/" title="Rounded Corners Version" data-container="body" data-trigger="hover" data-placement="top" data-toggle="tooltip">Rounded</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="theme-panel-footer">
          <a class="rounded sq-36 bg-facebook" href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fdemo.naksoid.com%2Felephant&t=The%20fastest%20way%20to%20build%20modern%20admin%20site%20for%20any%20platform%2C%20browser%2C%20or%20device" title="Share on Facebook" target="_blank">
            <span class="icon icon-facebook"></span>
          </a>
          <a class="rounded sq-36 bg-twitter" href="https://twitter.com/intent/tweet?source=http%3A%2F%2Fdemo.naksoid.com%2Felephant&text=The%20fastest%20way%20to%20build%20modern%20admin%20site%20for%20any%20platform%2C%20browser%2C%20or%20device:%20http%3A%2F%2Fdemo.naksoid.com%2Felephant&via=naksoid" title="Tweet" target="_blank">
            <span class="icon icon-twitter"></span>
          </a>
          <a class="rounded sq-36 bg-googleplus" href="https://plus.google.com/share?url=http%3A%2F%2Fdemo.naksoid.com%2Felephant" title="Share on Google+" target="_blank">
            <span class="icon icon-google-plus"></span>
          </a>
          <a class="rounded sq-36 bg-linkedin" href="http://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fdemo.naksoid.com%2Felephant&title=The%20fastest%20way%20to%20build%20modern%20admin%20site%20for%20any%20platform%2C%20browser%2C%20or%20device&summary=Elephant%20is%20a%20front-end%20template%20created%20to%20help%20you%20build%20modern%20web%20applications%2C%20fast%20and%20in%20a%20professional%20manner.&source=http%3A%2F%2Fdemo.naksoid.com%2Felephant" title="Share on LinkedIn" target="_blank">
            <span class="icon icon-linkedin"></span>
          </a>
          <a class="rounded sq-36 bg-pinterest" href="images/ae165ef33d137d3f18b7707466aa774d.jpg&description=Elephant%20is%20a%20front-end%20template%20created%20to%20help%20you%20build%20modern%20web%20applications%2C%20fast%20and%20in%20a%20professional%20manner." title="Pin it" target="_blank">
            <span class="icon icon-pinterest-p"></span>
          </a>
          <a class="rounded sq-36 bg-default" href="mailto:?subject=The%20fastest%20way%20to%20build%20modern%20admin%20site%20for%20any%20platform%2C%20browser%2C%20or%20device&body=Elephant%20is%20a%20front-end%20template%20created%20to%20help%20you%20build%20modern%20web%20applications%2C%20fast%20and%20in%20a%20professional%20manner.:%20http%3A%2F%2Fdemo.naksoid.com%2Felephant" title="Send email" target="_blank">
            <span class="icon icon-envelope-o"></span>
          </a>
        </div>
      </div>
    </div>
    <script src="resources/js/vendor.min.js"></script>
    <script src="resources/js/elephant.min.js"></script>
    <script src="resources/js/application.min.js"></script>
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','resources/js/analytics.js','ga');
      ga('create', 'UA-83990101-1', 'auto');
      ga('send', 'pageview');
    </script>
  </body>
</html>