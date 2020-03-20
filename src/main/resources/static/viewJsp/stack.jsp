<!DOCTYPE html>


<html class="html__responsive">

<head>

    <title>html - Thymeleaf: How to use #numbers.sequence() with a variable limit? - Stack Overflow</title>
    <link rel="shortcut icon" href="https://cdn.sstatic.net/Sites/stackoverflow/img/favicon.ico?v=4f32ecc8f43d">
    <link rel="apple-touch-icon" href="https://cdn.sstatic.net/Sites/stackoverflow/img/apple-touch-icon.png?v=c78bd457575a">
    <link rel="image_src" href="https://cdn.sstatic.net/Sites/stackoverflow/img/apple-touch-icon.png?v=c78bd457575a">
    <link rel="search" type="application/opensearchdescription+xml" title="Stack Overflow" href="/opensearch.xml">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, minimum-scale=1.0">


    <meta property="og:type" content= "website" />
    <meta property="og:url" content="https://stackoverflow.com/questions/41149380/thymeleaf-how-to-use-numbers-sequence-with-a-variable-limit"/>
    <meta property="og:site_name" content="Stack Overflow" />
    <meta property="og:image" itemprop="image primaryImageOfPage" content="https://cdn.sstatic.net/Sites/stackoverflow/img/apple-touch-icon@2.png?v=73d79a89bded" />
    <meta name="twitter:card" content="summary"/>
    <meta name="twitter:domain" content="stackoverflow.com"/>
    <meta name="twitter:title" property="og:title" itemprop="name" content="Thymeleaf: How to use #numbers.sequence() with a variable limit?" />
    <meta name="twitter:description" property="og:description" itemprop="description" content="I&#39;m calling an int value from a database to determine the number of stars that should be displayed in my html using thymeleaf and Spring Boot, but using ${#numbers.sequence(1,obj.stars)} doesn&#39;t se..." />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.sstatic.net/Js/stub.en.js?v=9f169562160d"></script>

    <link rel="stylesheet" type="text/css" href="https://cdn.sstatic.net/Shared/stacks.css?v=d0797a2dd6f2" >
    <link rel="stylesheet" type="text/css" href="https://cdn.sstatic.net/Sites/stackoverflow/primary.css?v=b556f32ececa" >


    <link rel="alternate" type="application/atom+xml" title="Feed for question &#39;Thymeleaf: How to use #numbers.sequence() with a variable limit?&#39;" href="/feeds/question/41149380">
    <meta name="twitter:app:country" content="US" />
    <meta name="twitter:app:name:iphone" content="Stack Exchange iOS" />
    <meta name="twitter:app:id:iphone" content="871299723" />
    <meta name="twitter:app:url:iphone" content="se-zaphod://stackoverflow.com/questions/41149380/thymeleaf-how-to-use-numbers-sequence-with-a-variable-limit" />
    <meta name="twitter:app:name:ipad" content="Stack Exchange iOS" />
    <meta name="twitter:app:id:ipad" content="871299723" />
    <meta name="twitter:app:url:ipad" content="se-zaphod://stackoverflow.com/questions/41149380/thymeleaf-how-to-use-numbers-sequence-with-a-variable-limit" />
    <meta name="twitter:app:name:googleplay" content="Stack Exchange Android">
    <meta name="twitter:app:url:googleplay" content="http://stackoverflow.com/questions/41149380/thymeleaf-how-to-use-numbers-sequence-with-a-variable-limit">
    <meta name="twitter:app:id:googleplay" content="com.stackexchange.marvin">
    <script>
        StackExchange.ready(function () {

            StackExchange.using("snippets", function () {
                StackExchange.snippets.initSnippetRenderer();
            });


            StackExchange.using("postValidation", function () {
                StackExchange.postValidation.initOnBlurAndSubmit($('#post-form'), 2, 'answer');
            });


            StackExchange.question.init({votesCast:[],autoShowCommentHelp:true,showAnswerHelp:true,totalCommentCount:5,shownCommentCount:5,highlightColor:'#F4A83D',backgroundColor:'#FFF',questionId:41149380});

            styleCode();

            StackExchange.realtime.subscribeToQuestion('1', '41149380');
            StackExchange.using("gps", function () { StackExchange.gps.trackOutboundClicks('#content', '.post-text'); });

        });
    </script>









    <script>
        StackExchange.ready(function () {
            var d = 100;
            $.ajax({url:"https://cdn.sstatic.net/WinterBash/js/wb-qa1.min.js?v=2",cache:true,dataType:"script"}).done(function tryInit() {
                if (window.WinterBash) {
                    WinterBash.core.init('winterbash2019.stackexchange.com', 'https://cdn.sstatic.net/WinterBash/', '6', false);
                } else {
                    if (d <= 800)
                        setTimeout(tryInit, d);
                    d *= 2;
                }
            });
        });
        document.write('<style id="wb-snowflake-placeholder" type="text/css">.site-switcher-item { margin-left: 38px; } @media screen and (max-width: 640px) { html.html__responsive .site-switcher-item { margin-left: 34px; } }</style>');
    </script>

    <script>
        StackExchange.init({"locale":"en","serverTime":1576938416,"routeName":"Questions/Show","stackAuthUrl":"https://stackauth.com","networkMetaHostname":"meta.stackexchange.com","site":{"name":"Stack Overflow","description":"Q&A for professional and enthusiast programmers","isNoticesTabEnabled":true,"enableNewTagCreationWarning":true,"insertSpaceAfterNameTabCompletion":false,"id":1,"childUrl":"https://meta.stackoverflow.com","negativeVoteScoreFloor":null,"enableSocialMediaInSharePopup":true,"protocol":"https"},"user":{"fkey":"182dc591e463004f2a1049206e30e04d038b611f96d685d1fa7003d5ecf1424f","tid":"168d6ce8-c29a-d5c1-f16e-38b4cf487d0e","rep":26,"isRegistered":true,"userType":3,"userId":7997517,"accountId":10877520,"gravatar":"<div class=\"gravatar-wrapper-32\"><img src=\"https://lh6.googleusercontent.com/-bVT8RW2HI54/AAAAAAAAAAI/AAAAAAAAAHQ/xtdQjFyXpLk/photo.jpg?sz=32\" alt=\"\" width=\"32\" height=\"32\" class=\"bar-sm\"></div>","profileUrl":"https://stackoverflow.com/users/7997517/abhishek-kumar","canSeeDeletedPosts":false},"events":{"postType":{"question":1},"postEditionSection":{"title":1,"body":2,"tags":3}},"story":{"minCompleteBodyLength":75,"likedTagsMaxLength":300,"dislikedTagsMaxLength":300},"jobPreferences":{"maxNumDeveloperRoles":2,"maxNumIndustries":4},"svgIconPath":"https://cdn.sstatic.net/Img/svg-icons","svgIconHash":"53ac0f6119d0"}, {"userProfile":{"openGraphAPIKey":"4a307e43-b625-49bb-af15-ffadf2bda017"},"userMessaging":{},"tags":{},"snippets":{"renderDomain":"stacksnippets.net","snippetsEnabled":true},"slack":{"sidebarAdDismissCookie":"slack-sidebar-ad"},"site":{"allowImageUploads":true,"enableImgurHttps":true,"enableUserHovercards":true,"forceHttpsImages":true,"styleCode":true},"questions":{"showPostNoticesV2":true},"paths":{},"monitoring":{"clientTimingsAbsoluteTimeout":30000,"clientTimingsDebounceTimeout":1000},"mentions":{"maxNumUsersInDropdown":50},"markdown":{"asteriskIntraWordEmphasis":true},"flags":{"allowRetractingCommentFlags":true,"allowRetractingFlags":true},"comments":{},"accounts":{"currentPasswordRequiredForChangingStackIdPassword":true}});
        StackExchange.using.setCacheBreakers({"js/prettify-full.en.js":"69d436760fac","js/moderator.en.js":"125735135d93","js/full-anon.en.js":"a247a68df165","js/full.en.js":"68bef5b3498f","js/wmd.en.js":"4312fbdfa73e","js/mobile.en.js":"a168d277c579","js/help.en.js":"333a277c90d9","js/tageditor.en.js":"37097f75c372","js/tageditornew.en.js":"cd3a42239063","js/inline-tag-editing.en.js":"b5436857e5dd","js/revisions.en.js":"afe2d907a369","js/review.en.js":"81797aa05021","js/tagsuggestions.en.js":"9b2c5d9791d2","js/post-validation.en.js":"b091e61add6d","js/explore-qlist.en.js":"d046fe5d0680","js/events.en.js":"0583c0e7df59","js/keyboard-shortcuts.en.js":"092ae1f2ac26","js/adops.en.js":"6b9883f0531e","js/begin-edit-event.en.js":"8f05bb4ed432","js/ask.en.js":"2f9e47b8ff03","js/question-editor.en.js":"","js/snippet-javascript-codemirror.en.js":"abb4525ee49a"});
        StackExchange.using("gps", function() {
            StackExchange.gps.init(true);
        });
    </script>
    <noscript id="noscript-css"><style>body,.top-bar{margin-top:1.9em}</style></noscript>
</head>
<body class="question-page unified-theme">
<div id="notify-container"></div>
<div id="custom-header"></div>




<header class="top-bar js-top-bar top-bar__network _fixed">
    <div class="wmx12 mx-auto grid ai-center h100" role="menubar">
        <div class="-main grid--cell">
            <a href="#" class="left-sidebar-toggle p0 ai-center jc-center js-left-sidebar-toggle" role="menuitem" aria-haspopup="true" aria-controls="left-sidebar" aria-expanded="false"><span class="ps-relative"></span></a>
            <div class="topbar-dialog leftnav-dialog js-leftnav-dialog dno">
                <div class="left-sidebar js-unpinned-left-sidebar" data-can-be="left-sidebar" data-is-here-when="sm"></div>
            </div>
            <a href="https://stackoverflow.com" class="-logo js-gps-track"
               data-gps-track="top_nav.click({is_current:false, location:2, destination:8})">
                <span class="-img _glyph">Stack Overflow</span>
            </a>



        </div>

        <ol class="list-reset grid gs4" role="presentation">
            <li class="grid--cell">
                <a href="#"
                   class="-marketing-link js-gps-track js-products-menu"
                   aria-controls="products-popover"
                   data-controller="s-popover"
                   data-action="s-popover#toggle"
                   data-s-popover-placement="bottom"
                   data-gps-track="top_nav.products.click({location:2, destination:1})"
                   data-ga="[&quot;top navigation&quot;,&quot;products menu click&quot;,null,null,null]">
                    Products
                </a>
            </li>

        </ol>
        <div class="s-popover ws2 p6"
             id="products-popover"
             role="menu"
             aria-hidden="true">
            <div class="s-popover--arrow"></div>
            <ol class="list-reset s-anchors s-anchors__inherit">
                <li>
                    <a href="/" class="d-block py6 px6 bar-sm h:bg-orange-500 h:fc-white js-gps-track"
                       data-gps-track="top_nav.products.click({location:2, destination:2})"
                       data-ga="[&quot;top navigation&quot;,&quot;public qa submenu click&quot;,null,null,null]">
                        <span class="fs-body1 d-block">Stack Overflow</span>
                        <span class="fs-caption d-block o70">Public questions and answers</span>
                    </a>
                </li>
                <li>
                    <a href="/teams" class="d-block py6 px6 bar-sm h:bg-orange-500 h:fc-white js-gps-track"
                       data-gps-track="top_nav.products.click({location:2, destination:3})"
                       data-ga="[&quot;top navigation&quot;,&quot;teams submenu click&quot;,null,null,null]">
                        <span class="fs-body1 d-block">Teams</span>
                        <span class="fs-caption d-block o70">Private questions and answers for your team</span>
                    </a>
                </li>
                <li>
                    <a href="/enterprise" class="d-block py6 px6 bar-sm h:bg-orange-500 h:fc-white js-gps-track"
                       data-gps-track="top_nav.products.click({location:2, destination:4})"
                       data-ga="[&quot;top navigation&quot;,&quot;enterprise submenu click&quot;,null,null,null]">
                        <span class="fs-body1 d-block">Enterprise</span>
                        <span class="fs-caption d-block o70">Private self-hosted questions and answers for your enterprise</span>
                    </a>
                </li>
                <li class="bt bc-black-3 mln6 mrn6 mt6 pt6 px6">
                    <a href="https://stackoverflow.com/talent" class="d-block py6 px6 bar-sm h:bg-orange-500 h:fc-white js-gps-track"
                       data-gps-track="top_nav.products.click({location:2, destination:5})"
                       data-ga="[&quot;top navigation&quot;,&quot;talent submenu click&quot;,null,null,null]">
                        <span class="fs-body1 d-block">Talent</span>
                        <span class="fs-caption d-block o70">Hire technical talent</span>
                    </a>
                </li>
                <li>
                    <a href="https://stackoverflow.com/advertising" class="d-block py6 px6 bar-sm h:bg-orange-500 h:fc-white js-gps-track"
                       data-gps-track="top_nav.products.click({location:2, destination:6})"
                       data-ga="[&quot;top navigation&quot;,&quot;advertising submenu click&quot;,null,null,null]">
                        <span class="fs-body1 d-block">Advertising</span>
                        <span class="fs-caption d-block o70">Reach developers worldwide</span>
                    </a>
                </li>

                <li class="bt bc-black-3 mln6 mrn6 mt6 pt6 px6">
                    <a href="/teams/customers" class="fc-light d-block py6 px6 h:fc-orange-500 js-gps-track"
                       data-gps-track="top_nav.products.click({location:2, destination:7})"
                       data-ga="[&quot;top navigation&quot;,&quot;customers submenu click&quot;,null,null,null]">Customers</a>
                </li>
                <li class="">
                    <a href="/teams/use-cases" class="fc-light d-block py6 px6 h:fc-orange-500 js-gps-track"
                       data-gps-track="top_nav.products.click({location:2, destination:8})"
                       data-ga="[&quot;top navigation&quot;,&quot;use cases submenu click&quot;,null,null,null]">Use cases</a>
                </li>
            </ol>
        </div>

        <form id="search" role="search" action=/search method="get" class="grid--cell fl-grow1 searchbar px12 js-searchbar " autocomplete="off">
            <div class="ps-relative">
                <input name="q"
                       type="text"
                       placeholder="Search…"
                       value=""
                       autocomplete="off"
                       maxlength="240"
                       class="s-input s-input__search js-search-field "
                       aria-label="Search"
                       aria-controls="top-search"
                       data-controller="s-popover"
                       data-action="focus->s-popover#show"
                       data-s-popover-placement="bottom-start"/>
                <svg aria-hidden="true" class="svg-icon s-input-icon s-input-icon__search iconSearch" width="18" height="18" viewBox="0 0 18 18"><path d="M18 16.5l-5.14-5.18h-.35a7 7 0 1 0-1.19 1.19v.35L16.5 18l1.5-1.5zM12 7A5 5 0 1 1 2 7a5 5 0 0 1 10 0z"/></svg>
                <div class="s-popover p0 wmx100 wmn4 sm:wmn-initial js-top-search-popover s-popover--arrow__tl" id="top-search" role="menu">
                    <div class="js-spinner p24 grid ai-center jc-center d-none">
                        <div class="s-spinner s-spinner__sm fc-orange-400">
                            <div class="v-visible-sr">Loading…</div>
                        </div>
                    </div>

                    <span class="v-visible-sr js-screen-reader-info"></span>
                    <div class="js-ac-results overflow-y-auto hmx3 d-none"></div>

                    <div class="js-search-hints" aria-describedby="Tips for searching"></div>
                </div>
            </div>
        </form>





        <ol class="overflow-x-auto ml-auto -secondary grid ai-center list-reset h100 user-logged-in" role="presentation">
            <li class="-item searchbar-trigger"><a href="#" class="-link js-searchbar-trigger" role="button" aria-label="Search" aria-haspopup="true" aria-controls="search" title="Click to show search"><svg aria-hidden="true" class="svg-icon iconSearch" width="18" height="18" viewBox="0 0 18 18"><path d="M18 16.5l-5.14-5.18h-.35a7 7 0 1 0-1.19 1.19v.35L16.5 18l1.5-1.5zM12 7A5 5 0 1 1 2 7a5 5 0 0 1 10 0z"/></svg></a></li>
            <li class="-item">
                <a href="/users/7997517/abhishek-kumar" class="my-profile js-gps-track" data-gps-track="profile_summary.click()">
                    <div class="gravatar-wrapper-24" title="ABHISHEK KUMAR"><img src="https://lh6.googleusercontent.com/-bVT8RW2HI54/AAAAAAAAAAI/AAAAAAAAAHQ/xtdQjFyXpLk/photo.jpg?sz=48" alt="" width="24" height="24" class="bar-sm -avatar js-avatar-me"></div>                    <span class="v-visible-sr">ABHISHEK KUMAR</span>

                    <div class="-rep js-header-rep" title="your reputation: 26" aria-hidden="true">26</div>
                    <span class="v-visible-sr">, 26 reputation</span>
                    <div class="-badges">
                        <span title="3 bronze badges" aria-hidden="true"><span class="badge3">&#9679;</span><span class="badgecount">3</span></span><span class="v-visible-sr">3 bronze badges</span>                        </div>
                </a>
            </li>
            <li class="-item inbox-button-item">
                <a href="https://stackexchange.com/users/10877520?tab=inbox" class="-link js-inbox-button"
                   aria-label="Inbox" title="Recent inbox messages" role="menuitem" aria-haspopup="true" aria-expanded="false" data-unread-count="0">
                    <svg aria-hidden="true" class="svg-icon iconInbox" width="20" height="18" viewBox="0 0 20 18"><path d="M4.63 1h10.56a2 2 0 0 1 1.94 1.35L20 10.79V15a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-4.21l2.78-8.44c.25-.8 1-1.36 1.85-1.35zm8.28 12l2-2h2.95l-2.44-7.32a1 1 0 0 0-.95-.68H5.35a1 1 0 0 0-.95.68L1.96 11h2.95l2 2h6z"/></svg>
                    <span class="indicator-badge js-unread-count _important d-none">0</span>
                </a>
            </li>
            <li class="-item achievements-button-item">
                <a href="https://stackexchange.com/users/10877520?tab=reputation" class="-link js-achievements-button" data-unread-class="_highlighted-positive"
                   aria-label="Achievements" title="Recent achievements: reputation, badges, and privileges earned" role="menuitem" aria-haspopup="true" aria-expanded="false" data-unread-count="0" data-lit-up="false">
                    <svg aria-hidden="true" class="svg-icon iconAchievements" width="18" height="18" viewBox="0 0 18 18"><path d="M15 2V1H3v1H0v4c0 1.6 1.4 3 3 3v1c.4 1.5 3 2.6 5 3v2H5s-1 1.5-1 2h10c0-.4-1-2-1-2h-3v-2c2-.4 4.6-1.5 5-3V9c1.6-.2 3-1.4 3-3V2h-3zM3 7c-.5 0-1-.5-1-1V4h1v3zm8.4 2.5L9 8 6.6 9.4l1-2.7L5 5h3l1-2.7L10 5h2.8l-2.3 1.8 1 2.7h-.1zM16 6c0 .5-.5 1-1 1V4h1v2z"/></svg>
                    <span class="indicator-badge js-unread-count _positive d-none">+0</span>
                </a>
            </li>
            <li class="-item help-button-item">
                <a href="#" class="-link js-help-button" title="Help Center and other resources" role="menuitem" aria-haspopup="true" aria-controls="topbar-help-dialog"
                   data-ga="[&quot;top navigation&quot;,&quot;help menu click&quot;,null,null,null]"><svg aria-hidden="true" class="svg-icon iconHelp" width="18" height="18" viewBox="0 0 18 18"><path d="M9 1a8 8 0 1 0 0 16A8 8 0 0 0 9 1zm.81 12.13c-.02.71-.55 1.15-1.24 1.13-.66-.02-1.17-.49-1.15-1.2.02-.72.56-1.18 1.22-1.16.7.03 1.2.51 1.17 1.23zM11.77 8c-.3.34-.65.65-1.02.91l-.53.37c-.26.2-.42.43-.5.69a4 4 0 0 0-.09.75c0 .05-.03.16-.18.16H7.88c-.16 0-.18-.1-.18-.15.03-.66.12-1.21.4-1.66.4-.49.88-.9 1.43-1.22.16-.12.28-.25.38-.39a1.34 1.34 0 0 0 .02-1.71c-.24-.31-.51-.46-1.03-.46-.51 0-.8.26-1.02.6-.21.33-.18.73-.18 1.1H5.75c0-1.38.35-2.25 1.1-2.76.52-.35 1.17-.5 1.93-.5 1 0 1.79.18 2.49.71.64.5.98 1.18.98 2.12 0 .57-.2 1.05-.48 1.44z"/></svg></a>
            </li>
            <div class="topbar-dialog help-dialog js-help-dialog dno" id="topbar-help-dialog" role="menu">
                <div class="modal-content">
                    <ul>
                        <li>
                            <a href="/tour" class="js-gps-track" data-gps-track="help_popup.click({ item_type:1 })"
                               data-ga="[&quot;top navigation&quot;,&quot;tour submenu click&quot;,null,null,null]">
                                Tour
                                <span class="item-summary">
                                Start here for a quick overview of the site
                            </span>
                            </a>
                        </li>
                        <li>
                            <a href="/help" class="js-gps-track"
                               data-gps-track="help_popup.click({ item_type:4 })"
                               data-ga="[&quot;top navigation&quot;,&quot;help center&quot;,null,null,null]">
                                Help Center
                                <span class="item-summary">
                            Detailed answers to any questions you might have
                        </span>
                            </a>
                        </li>
                        <li>
                            <a href="https://meta.stackoverflow.com" class="js-gps-track" data-gps-track="help_popup.click({ item_type:2 })"
                               data-ga="[&quot;top navigation&quot;,&quot;meta submenu click&quot;,null,null,null]">
                                Meta
                                <span class="item-summary">
                                    Discuss the workings and policies of this site
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="https://stackoverflow.com/company/about" class="js-gps-track" data-gps-track="help_popup.click({ item_type:6 })"
                               data-ga="[&quot;top navigation&quot;,&quot;about us submenu click&quot;,null,null,null]">
                                About Us
                                <span class="item-summary">
                                    Learn more about Stack Overflow the company
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="https://stackoverflowbusiness.com/?ref=topbar_help" class="js-gps-track" data-gps-track="help_popup.click({ item_type:7 })"
                               data-ga="[&quot;top navigation&quot;,&quot;business submenu click&quot;,null,null,null]">
                                Business
                                <span class="item-summary">
                                    Learn more about hiring developers or posting ads with us
                                </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <li class="-item site-switcher-item">
                <a href="https://stackexchange.com" class="-link js-site-switcher-button js-gps-track" data-gps-track="site_switcher.show"
                   aria-label="Site switcher"
                   title="A list of all 175 Stack Exchange sites"
                   role="menuitem" aria-haspopup="true" aria-expanded="false"
                   data-ga="[&quot;top navigation&quot;,&quot;stack exchange click&quot;,null,null,null]">
                    <svg aria-hidden="true" class="svg-icon iconStackExchange" width="18" height="18" viewBox="0 0 18 18"><path d="M15 1H3a2 2 0 0 0-2 2v2h16V3a2 2 0 0 0-2-2zM1 13c0 1.1.9 2 2 2h8v3l3-3h1a2 2 0 0 0 2-2v-2H1v2zm16-7H1v4h16V6z"/></svg>
                </a>
            </li>


            <li class="js-topbar-dialog-corral" role="presentation">


                <div class="topbar-dialog siteSwitcher-dialog dno" role="menu">
                    <div class="header">
                        <h3><a href="https://stackoverflow.com">current community</a>
                        </h3>
                    </div>
                    <div class="modal-content current-site-container">
                        <ul class="current-site">
                            <li class="grid">
                                <div class="fl1">
                                    <a href="https://stackoverflow.com"
                                       class="current-site-link site-link js-gps-track grid gs8 gsx"
                                       data-id="1"
                                       data-gps-track="site_switcher.click({ item_type:3 })">
                                        <div class="favicon favicon-stackoverflow site-icon grid--cell" title="Stack Overflow"></div>
                                        <span class="grid--cell fl1">
            Stack Overflow
        </span>
                                    </a>

                                </div>
                                <div class="related-links">
                                    <a href="https://stackoverflow.com/help" class="js-gps-track"     data-gps-track="site_switcher.click({ item_type:14 })"
                                    >help</a>
                                    <a href="https://chat.stackoverflow.com" class="js-gps-track"     data-gps-track="site_switcher.click({ item_type:6 })"
                                    >chat</a>
                                    <a href="https://stackoverflow.com/users/logout" class="js-gps-track"     data-gps-track="site_switcher.click({ item_type:8 })"
                                    >log out</a>
                                </div>

                            </li>
                            <li class="related-site grid">
                                <div class="L-shaped-icon-container">
                                    <span class="L-shaped-icon"></span>
                                </div>

                                <a href="https://meta.stackoverflow.com"
                                   class="site-link js-gps-track grid gs8 gsx"
                                   data-id="552"
                                   data-gps-track="site.switch({ target_site:552, item_type:3 }),site_switcher.click({ item_type:4 })">
                                    <div class="favicon favicon-stackoverflowmeta site-icon grid--cell" title="Meta Stack Overflow"></div>
                                    <span class="grid--cell fl1">
            Meta Stack Overflow
        </span>
                                </a>

                            </li>
                        </ul>
                    </div>

                    <div class="header" id="your-communities-header">
                        <h3>
                            <a href="https://stackexchange.com/users/10877520/?tab=accounts">your communities</a>
                        </h3>

                        <a href="#" id="edit-pinned-sites">edit</a>
                        <a href="#" id="cancel-pinned-sites" style="display: none;">cancel</a>
                    </div>
                    <div class="modal-content" id="your-communities-section">

                        <ul class="my-sites">
                            <li>
                                <a href="https://stackoverflow.com"
                                   class="site-link js-gps-track grid gs8 gsx"
                                   data-id="1"
                                   data-gps-track="site.switch({ target_site:1, item_type:3 }),site_switcher.click({ item_type:1 })">
                                    <div class="favicon favicon-stackoverflow site-icon grid--cell" title="Stack Overflow"></div>
                                    <span class="grid--cell fl1">
            Stack Overflow
        </span>
                                    <span class="rep-score grid--cell">26</span>
                                </a>

                            </li>
                            <li>
                                <a href="https://askubuntu.com"
                                   class="site-link js-gps-track grid gs8 gsx"
                                   data-id="89"
                                   data-gps-track="site.switch({ target_site:89, item_type:3 }),site_switcher.click({ item_type:1 })">
                                    <div class="favicon favicon-askubuntu site-icon grid--cell" title="Ask Ubuntu"></div>
                                    <span class="grid--cell fl1">
            Ask Ubuntu
        </span>
                                    <span class="rep-score grid--cell">1</span>
                                </a>

                            </li>
                        </ul>
                        <div class="pinned-site-editor-container" style="display: none;">
                            <input type="hidden" name="fkey" value="182dc591e463004f2a1049206e30e04d038b611f96d685d1fa7003d5ecf1424f">
                            <input id="js-site-search-txt"
                                   type="text"
                                   class="site-filter-input"
                                   value=""
                                   placeholder="Add a Stack Exchange community"/>
                            <input type="submit" id="pin-site-btn" value="Add" disabled="disabled"/>
                            <ul class="js-found-sites found-sites"></ul>
                            <ul class="pinned-site-list sortable" data-custom-list="False">
                            </ul>
                            <input type="submit" value="Save" id="save-pinned-sites-btn" disabled="disabled"/>
                            <a href="#" id="reset-pinned-sites">reset to default list</a>
                        </div>
                    </div>

                    <div class="header">
                        <h3><a href="https://stackexchange.com/sites">more stack exchange communities</a>
                        </h3>
                        <a href="https://stackoverflow.blog" class="fr">company blog</a>
                    </div>
                    <div class="modal-content">
                        <div class="child-content"></div>
                    </div>
                </div>
            </li>
        </ol>

    </div>
</header>

<script>
    StackExchange.ready(function () { StackExchange.topbar.init(); });
    StackExchange.scrollPadding.setPaddingTop(50, 10);     </script>






<div class="container">






    <div id="left-sidebar" data-is-here-when="md lg" class="left-sidebar js-pinned-left-sidebar ps-relative">
        <div class="left-sidebar--sticky-container js-sticky-leftnav">
            <nav role="navigation">
                <ol class="nav-links">
                    <li>
                        <a
                                href="/"
                                class="pl8 js-gps-track nav-links--link"

                                data-gps-track="top_nav.click({is_current:false, location:2, destination:8})">
                            Home        </a>
                    </li>
                    <li>
                        <ol class="nav-links">
                            <li class="fs-fine tt-uppercase ml8 mt16 mb4 fc-light">Public</li>
                            <li class=" youarehere">
                                <a id="nav-questions"
                                   href="/questions"
                                   class="pl8 js-gps-track nav-links--link -link__with-icon"

                                   data-gps-track="top_nav.click({is_current:true, location:2, destination:1})">
                                    <svg aria-hidden="true" class="svg-icon iconGlobe" width="18" height="18" viewBox="0 0 18 18"><path d="M9 1a8 8 0 1 0 0 16A8 8 0 0 0 9 1zM8 15.32a6.4 6.4 0 0 1-5.23-7.75L7 11.68v.8c0 .88.12 1.32 1 1.32v1.52zm5.72-2c-.2-.66-1-1.32-1.72-1.32h-1v-2c0-.44-.56-1-1-1H6V7h1c.44 0 1-.56 1-1V5h2c.88 0 1.4-.72 1.4-1.6v-.33a6.4 6.4 0 0 1 2.32 10.24v.01z"/></svg>                <span class="-link--channel-name">Stack Overflow</span>
                                </a>
                            </li>

                            <li>
                                <a id="nav-tags"
                                   href="/tags"
                                   class=" js-gps-track nav-links--link"

                                   data-gps-track="top_nav.click({is_current:false, location:2, destination:2})">
                                    Tags        </a>
                            </li>
                            <li>
                                <a id="nav-users"
                                   href="/users"
                                   class=" js-gps-track nav-links--link"

                                   data-gps-track="top_nav.click({is_current:false, location:2, destination:3})">
                                    Users        </a>
                            </li>
                            <li>
                                <a id="nav-jobs"
                                   href="/jobs?so_medium=StackOverflow&amp;so_source=SiteNav"
                                   class=" js-gps-track nav-links--link"

                                   data-gps-track="top_nav.click({is_current:false, location:2, destination:6})">
                                    Jobs        </a>
                            </li>
                        </ol>
                    </li>
                    <li>
                        <ol class="nav-links">
                            <li class="grid ai-center jc-space-between ml8 mt24 mb4">
                                <div class="grid--cell tt-uppercase fs-fine fc-light">Teams</div>
                                <div class="grid--cell fs-fine fc-light mr4">
                                    <a href="javascript:void(0)" class="s-link s-link__inherit js-gps-track"
                                       role="button"
                                       aria-controls="popover-teams-create-cta"
                                       data-controller="s-popover"
                                       data-action="s-popover#toggle"
                                       data-s-popover-placement="bottom-start"
                                       data-s-popover-toggle-class="is-selected"
                                       data-gps-track="teams.create.left-sidenav.click({ Action: ShowInfo })"
                                       data-ga="[&quot;teams left navigation&quot;,&quot;left nav show teams info&quot;,null,null,null]">
                                        What’s this?
                                    </a>

                                </div>
                            </li>
                            <li class="ps-relative">
                                <a href="https://stackoverflow.com/teams"
                                   class="pl8 js-gps-track nav-links--link"
                                   title="Stack Overflow for Teams is a private, secure spot for your organization's questions and answers."
                                   data-gps-track="teams.create.left-sidenav.click({ Action: TeamsClick })"
                                   data-ga="[&quot;teams left navigation&quot;,&quot;left nav team click&quot;,&quot;stackoverflow.com/teams&quot;,null,null]">
                                    <div class="grid ai-center">
                                        <div class="grid--cell s-avatar va-middle bg-orange-400">
                                            <div class="s-avatar--letter mtn1">
                                                <svg aria-hidden="true" class="svg-icon iconBriefcaseSm" width="14" height="14" viewBox="0 0 14 14"><path d="M4 3a1 1 0 0 1 1-1h4a1 1 0 0 1 1 1v1h.5c.83 0 1.5.67 1.5 1.5v5c0 .83-.67 1.5-1.5 1.5h-7A1.5 1.5 0 0 1 2 10.5v-5C2 4.67 2.67 4 3.5 4H4V3zm5 1V3H5v1h4z"/></svg>
                                            </div>
                                            <svg aria-hidden="true" class="svg-icon native s-avatar--badge iconShieldXSm" width="9" height="10" viewBox="0 0 9 10"><path d="M0 1.84L4.5 0 9 1.84v3.17C9 7.53 6.3 10 4.5 10 2.7 10 0 7.53 0 5.01V1.84z" fill="#fff"/><path d="M1 2.5L4.5 1 8 2.5v2.51C8 7.34 5.34 9 4.5 9 3.65 9 1 7.34 1 5.01V2.5zm2.98 3.02L3.2 7h2.6l-.78-1.48a.4.4 0 0 1 .15-.38c.34-.24.73-.7.73-1.14 0-.71-.5-1.23-1.41-1.23-.92 0-1.39.52-1.39 1.23 0 .44.4.9.73 1.14.12.08.18.23.15.38z" fill="#6A7E7C"/></svg>
                                        </div>
                                        <div class="grid--cell pl6">
                                            First 25 Users Free                                            </div>
                                    </div>
                                </a>
                            </li>
                        </ol>
                    </li>
                </ol>
            </nav>
        </div>


        <div class="s-popover w-auto p16"
             id="popover-teams-create-cta"
             role="menu"
             aria-hidden="true">
            <div class="s-popover--arrow"></div>

            <div class="ps-relative overflow-hidden">
                <p class="mb2"><strong>Teams</strong></p>
                <p class="mb16 fs-caption fc-medium">Q&amp;A for Work</p>
                <p class="mb8 fs-caption fc-medium">

                    Stack Overflow for Teams is a private, secure spot for you and
                    your coworkers to find and share information.

                </p>
                <a href="https://stackoverflow.com/teams"
                   class="js-gps-track ws-nowrap d-block"
                   data-gps-track="teams.create.left-sidenav.click({ Action: CtaClick })"
                   data-ga="[&quot;teams left navigation&quot;,&quot;left nav cta&quot;,&quot;stackoverflow.com/teams&quot;,null,null]">
                    Learn more
                </a>
            </div>

            <div class="ps-absolute t8 r8">
                <svg width="53" height="49" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M49 11l.2 31H18.9L9 49v-7H4V8h31" fill="#CCEAFF" /><path d="M44.5 19v-.3l-.2-.1-18-13-.1-.1H.5v33h4V46l.8-.6 9.9-6.9h29.3V19z" stroke="#1060E1" stroke-miterlimit="10" /><path d="M31 2l6-1.5 7 2V38H14.9L5 45v-7H1V6h25l5-4z" fill="#fff" /><path d="M7 16.5h13m-13 6h14m-14 6h18" stroke="#1060E1" stroke-miterlimit="10" /><path d="M39 30a14 14 0 1 0 0-28 14 14 0 0 0 0 28z" fill="#FFB935" /><path d="M50.5 14a13.5 13.5 0 1 1-27 0 13.5 13.5 0 0 1 27 0z" stroke="#F48024" stroke-miterlimit="10" /><path d="M32.5 21.5v-8h9v8h-9zm2-9.5V9.3A2.5 2.5 0 0 1 37 6.8a2.5 2.5 0 0 1 2.5 2.5V12h-5zm2 3v2m1-2v2" stroke="#fff" stroke-miterlimit="10" /></svg>
            </div>
        </div>

    </div>


    <div id="content" class="snippet-hidden">





        <div itemprop="mainEntity" itemscope itemtype="http://schema.org/Question">
            <link itemprop="image" href="https://cdn.sstatic.net/Sites/stackoverflow/img/apple-touch-icon.png?v=c78bd457575a">

            <div class="inner-content clearfix">



                <div id="question-header" class="grid sm:fd-column">
                    <h1 itemprop="name" class="grid--cell fs-headline1 fl1 ow-break-word mb8"><a href="/questions/41149380/thymeleaf-how-to-use-numbers-sequence-with-a-variable-limit" class="question-hyperlink">Thymeleaf: How to use #numbers.sequence() with a variable limit?</a></h1>

                    <div class="ml12 aside-cta grid--cell print:d-none sm:ml0 sm:mb12 sm:order-first sm:as-end">

                        <a href="/questions/ask" class="ws-nowrap s-btn s-btn__primary" >
                            Ask Question
                        </a>

                    </div>
                </div>
                <div class="grid fw-wrap pb8 mb16 bb bc-black-2">
                    <div class="grid--cell ws-nowrap mr16 mb8" title="2016-12-14 18:15:54Z">
                        <span class="fc-light mr2">Asked</span>
                        <time itemprop="dateCreated" datetime="2016-12-14T18:15:54">3 years ago</time>
                    </div>
                    <div class="grid--cell ws-nowrap mr16 mb8">
                        <span class="fc-light mr2">Active</span>
                        <a href="?lastactivity" class="s-link s-link__inherit" title="2016-12-15 16:47:34Z">3 years ago</a>
                    </div>
                    <div class="grid--cell ws-nowrap mb8" title="Viewed 6,892 times">
                        <span class="fc-light mr2">Viewed</span>
                        7k times
                    </div>
                </div>
                <div id="mainbar" role="main" aria-label="question and answers">



                    <div class="question" data-questionid="41149380"  id="question">

                        <style>.everyoneloves__top-leaderboard:empty,.everyoneloves__mid-leaderboard:empty,.everyoneloves__bot-mid-leaderboard:empty{
                            margin-bottom:0;
                        }
                        </style>
                        <div id="dfp-tlb" class="everyonelovesstackoverflow everyoneloves__top-leaderboard"></div>
                        <div class="post-layout">
                            <div class="votecell post-layout--left">


                                <div class="js-voting-container grid fd-column ai-stretch gs4 fc-black-200" data-post-id="41149380">
                                    <button class="js-vote-up-btn grid--cell s-btn s-btn__unset c-pointer" title="This question shows research effort; it is useful and clear (click again to undo)" aria-pressed="false" aria-label="up vote" data-selected-classes="fc-theme-primary"><svg aria-hidden="true" class="svg-icon m0 iconArrowUpLg" width="36" height="36" viewBox="0 0 36 36"><path d="M2 26h32L18 10 2 26z"/></svg></button>
                                    <div class="js-vote-count grid--cell fc-black-500 fs-title grid fd-column ai-center" itemprop="upvoteCount" data-value="1">1</div>
                                    <button class="js-vote-down-btn grid--cell s-btn s-btn__unset c-pointer" title="This question does not show any research effort; it is unclear or not useful (click again to undo)" aria-pressed="false" aria-label="down vote" data-selected-classes="fc-theme-primary"><svg aria-hidden="true" class="svg-icon m0 iconArrowDownLg" width="36" height="36" viewBox="0 0 36 36"><path d="M2 10h32L18 26 2 10z"/></svg></button>

                                    <button class="js-favorite-btn s-btn s-btn__unset c-pointer py4 js-gps-track" aria-pressed="false" aria-label="favorite" data-selected-classes="fc-yellow-600"
                                            data-gps-track="post.click({ item: 1, priv: 4, post_type: 1 })">
                                        <svg aria-hidden="true" class="svg-icon iconStar" width="18" height="18" viewBox="0 0 18 18"><path d="M9 12.65l-5.29 3.63 1.82-6.15L.44 6.22l6.42-.17L9 0l2.14 6.05 6.42.17-5.1 3.9 1.83 6.16L9 12.65z"/></svg>
                                        <div class="js-favorite-count mt4 d-none" data-value=""></div>
                                    </button>



                                </div>

                            </div>




                            <div class="postcell post-layout--right">

                                <div class="post-text" itemprop="text">

                                    <p>I'm calling an int value from a database to determine the number of stars that should be displayed in my html using thymeleaf and Spring Boot, but using ${#numbers.sequence(1,obj.stars)} doesn't seem to work.</p>

                                    <p>this is my html-thymeleaf code:</p>

                                    <pre><code>    &lt;tr th:each="obj : ${allObjs}" class="pointer" th:onclick="'javascript:openobj(\'' + ${obj.id} + '\');'"&gt;
    &lt;td class="text-center" th:text="${obj.id}"&gt;&lt;/td&gt;
    &lt;td class="text-center" th:text="${obj.code}"&gt;&lt;/td&gt;
    &lt;td class="text-center" th:text="${obj.name}"&gt;&lt;/td&gt;
    &lt;td class="text-center" th:text="${obj.contract}"&gt;&lt;/td&gt;
    &lt;td class="text-center" th:text="${obj.difficulty}"&gt;&lt;/td&gt;
    &lt;td class="text-center" th:text="${obj.priority}"&gt;&lt;/td&gt;
    &lt;td class="text-center"&gt;
        &lt;!--this is the line I can't get to work :(--&gt;
        &lt;span class="fa fa-star-o" th:each="star:${#numbers.sequence(1,obj.stars)}"&gt;&lt;/span&gt;
    &lt;/td&gt;
    &lt;td class="text-center" th:text="${obj.state}"&gt;&lt;/td&gt;
    &lt;td class="text-center" th:text="${obj.percent}"&gt;&lt;/td&gt;
    &lt;td class="text-center" th:text="${obj.term}"&gt;&lt;/td&gt;
    &lt;td class="text-center" th:text="${obj.version}"&gt;&lt;/td&gt;
    &lt;td class="text-center" th:text="${obj.price}"&gt;&lt;/td&gt;
&lt;/tr&gt;
</code></pre>

                                    <p>and my controller</p>

                                    <pre><code> @GetMapping("/Obj")
 public ModelAndView index() {
      ModelAndView view = new ModelAndView("/Obj/index");
      view.addObject("title", "Obj");
      List&lt;Obj&gt; allObjs = ObjService.findAll();
      view.addObject("allObjs", allObjs);
      return view;
 }
</code></pre>
                                </div>

                                <div class="post-taglist grid gs4 gsy fd-column">
                                    <div class="grid ps-relative d-block">
                                        <a href="/questions/tagged/html" class="post-tag" title="show questions tagged &#39;html&#39;" rel="tag">html</a> <a href="/questions/tagged/spring" class="post-tag" title="show questions tagged &#39;spring&#39;" rel="tag">spring</a> <a href="/questions/tagged/spring-boot" class="post-tag" title="show questions tagged &#39;spring-boot&#39;" rel="tag">spring-boot</a> <a href="/questions/tagged/thymeleaf" class="post-tag" title="show questions tagged &#39;thymeleaf&#39;" rel="tag">thymeleaf</a>
                                    </div>
                                </div>

                                <div class="mb0 ">
                                    <div class="mt16 grid gs8 gsy fw-wrap jc-end ai-start pt4">
                                        <div class="grid--cell mr16" style="flex: 1 1 100px;">
                                            <div class="post-menu"><a href="/q/41149380/7997517" itemprop="url"
                                                                      class="js-share-link js-gps-track"
                                                                      title="short permalink to this question"
                                                                      data-gps-track="post.click({ item: 2, priv: 4, post_type: 1 })"
                                                                      data-controller="se-share-sheet"
                                                                      data-se-share-sheet-title="Share a link to this question"
                                                                      data-se-share-sheet-subtitle="(includes your user id)"
                                                                      data-se-share-sheet-post-type="question"
                                                                      data-se-share-sheet-social="facebook twitter devto"
                                                                      data-se-share-sheet-location="1"
                                                                      data-s-popover-placement="bottom-start">share</a><span class="lsep">|</span><a href="/posts/41149380/edit" class="suggest-edit-post js-gps-track" data-gps-track="post.click({ item: 6, priv: 4, post_type: 1 })" title="revise and improve this post">edit</a><span class="lsep">|</span><a href="#"
                                                                                                                                                                                                                                                                                                                                                                   class="flag-post-link js-gps-track"
                                                                                                                                                                                                                                                                                                                                                                   data-gps-track="post.click({ item: 5, priv: 4, post_type: 1 })"
                                                                                                                                                                                                                                                                                                                                                                   title="flag this post for serious problems or moderator attention"
                                                                                                                                                                                                                                                                                                                                                                   data-postid="41149380">flag</a></div>
                                        </div>

                                        <div class="post-signature grid--cell">
                                            <div class="user-info user-hover">
                                                <div class="user-action-time">
                                                    <a href="/posts/41149380/revisions" title="show all edits to this post"
                                                       class="js-gps-track"
                                                       data-gps-track="post.click({ item: 4, priv: 4, post_type: 1 })">edited <span title="2016-12-14 18:51:37Z" class="relativetime">Dec 14 '16 at 18:51</span></a>
                                                </div>
                                                <div class="user-gravatar32">
                                                    <a href="/users/3857942/michael-petch"><div class="gravatar-wrapper-32"><img src="https://graph.facebook.com/624827766/picture?type=large" alt="" width="32" height="32" class="bar-sm"></div></a>
                                                </div>
                                                <div class="user-details">
                                                    <a href="/users/3857942/michael-petch">Michael Petch</a>
                                                    <div class="-flair">
                                                        <span class="reputation-score" title="reputation score 33,953" dir="ltr">34k</span><span title="7 gold badges" aria-hidden="true"><span class="badge1"></span><span class="badgecount">7</span></span><span class="v-visible-sr">7 gold badges</span><span title="65 silver badges" aria-hidden="true"><span class="badge2"></span><span class="badgecount">65</span></span><span class="v-visible-sr">65 silver badges</span><span title="128 bronze badges" aria-hidden="true"><span class="badge3"></span><span class="badgecount">128</span></span><span class="v-visible-sr">128 bronze badges</span>
                                                    </div>
                                                </div>
                                            </div>                </div>
                                        <div class="post-signature owner grid--cell">
                                            <div class="user-info ">
                                                <div class="user-action-time">
                                                    asked <span title="2016-12-14 18:15:54Z" class="relativetime">Dec 14 '16 at 18:15</span>
                                                </div>
                                                <div class="user-gravatar32">
                                                    <a href="/users/7142451/sebastian-romero"><div class="gravatar-wrapper-32"><img src="https://i.stack.imgur.com/bbJOc.png?s=32&amp;g=1" alt="" width="32" height="32" class="bar-sm"></div></a>
                                                </div>
                                                <div class="user-details" itemprop="author" itemscope itemtype="http://schema.org/Person">
                                                    <a href="/users/7142451/sebastian-romero">sebastian romero</a><span class="d-none" itemprop="name">sebastian romero</span>
                                                    <div class="-flair">
                                                        <span class="reputation-score" title="reputation score " dir="ltr">116</span><span title="1 silver badge" aria-hidden="true"><span class="badge2"></span><span class="badgecount">1</span></span><span class="v-visible-sr">1 silver badge</span><span title="10 bronze badges" aria-hidden="true"><span class="badge3"></span><span class="badgecount">10</span></span><span class="v-visible-sr">10 bronze badges</span>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="js-post-notices post-layout--full">
                            </div>

                            <div class="post-layout--right">
                                <div id="comments-41149380" class="comments js-comments-container bt bc-black-2 mt12 " data-post-id="41149380" data-min-length="15">
                                    <ul class="comments-list js-comments-list"
                                        data-remaining-comments-count="0"
                                        data-canpost="false"
                                        data-cansee="true"
                                        data-comments-unavailable="false"
                                        data-addlink-disabled="true">


                                        <li id="comment-69504506" class="comment js-comment " data-comment-id="69504506">
                                            <div class="js-comment-actions comment-actions">
                                                <div class="comment-score js-comment-edit-hide">
                    <span title="number of &#39;useful comment&#39; votes received"
                          class="cool">1</span>
                                                </div>
                                                <div class="comment-voting mtn2 js-comment-edit-hide">
                                                    <a tabindex="0" role="button" href="#" class="comment-up comment-up-off" aria-label="Upvote Comment" title="This comment adds something useful to the post">
                                                        <svg aria-hidden="true" class="svg-icon iconArrowUp" width="18" height="18" viewBox="0 0 18 18"><path d="M1 13h16L9 5l-8 8z"/></svg>
                                                    </a>
                                                </div>
                                                <div class="comment-flagging js-comment-edit-hide">
                                                    <button class="js-comment-flag s-btn s-btn__unset bg-transparent c-pointer fc-black-100 h:fc-red-500"
                                                            aria-label="Flag Comment"
                                                            aria-pressed="false"
                                                            title="Flag this comment for serious problems or moderator attention">
                                                        <svg aria-hidden="true" class="svg-icon iconFlag" width="18" height="18" viewBox="0 0 18 18"><path d="M3 2v14h2v-6h3.6l.4 1h6V3H9.5L9 2H3z"/></svg>
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="comment-text js-comment-text-and-form">
                                                <div class="comment-body js-comment-edit-hide">

                                                    <span class="comment-copy">What is the error you&#39;re getting?  That thymeleaf code is correct (just tested it).  Have you verified the view-source, and made sure it isn&#39;t something with your css?</span>

                                                    &ndash;&nbsp;<a href="/users/4126893/metroids"
                                                                    title="10,182 reputation"
                                                                    class="comment-user">Metroids</a>
                                                    <span class="comment-date" dir="ltr"><span title="2016-12-14 20:01:06Z" class="relativetime-clean">Dec 14 '16 at 20:01</span></span>
                                                    <span title="this comment was edited 1 time">
                            <svg aria-hidden="true" class="svg-icon va-text-bottom o50 iconPencilSm" width="14" height="14" viewBox="0 0 14 14"><path d="M11.1 1.71l1.13 1.12c.2.2.2.51 0 .71L11.1 4.7 9.21 2.86l1.17-1.15c.2-.2.51-.2.71 0zM2 10.12l6.37-6.43 1.88 1.88L3.88 12H2v-1.88z"/></svg>
                        </span>
                                                </div>
                                            </div>
                                        </li>
                                        <li id="comment-69531340" class="comment js-comment " data-comment-id="69531340">
                                            <div class="js-comment-actions comment-actions">
                                                <div class="comment-score js-comment-edit-hide">
                                                </div>
                                                <div class="comment-voting mtn2 js-comment-edit-hide">
                                                    <a tabindex="0" role="button" href="#" class="comment-up comment-up-off" aria-label="Upvote Comment" title="This comment adds something useful to the post">
                                                        <svg aria-hidden="true" class="svg-icon iconArrowUp" width="18" height="18" viewBox="0 0 18 18"><path d="M1 13h16L9 5l-8 8z"/></svg>
                                                    </a>
                                                </div>
                                                <div class="comment-flagging js-comment-edit-hide">
                                                    <button class="js-comment-flag s-btn s-btn__unset bg-transparent c-pointer fc-black-100 h:fc-red-500"
                                                            aria-label="Flag Comment"
                                                            aria-pressed="false"
                                                            title="Flag this comment for serious problems or moderator attention">
                                                        <svg aria-hidden="true" class="svg-icon iconFlag" width="18" height="18" viewBox="0 0 18 18"><path d="M3 2v14h2v-6h3.6l.4 1h6V3H9.5L9 2H3z"/></svg>
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="comment-text js-comment-text-and-form">
                                                <div class="comment-body js-comment-edit-hide">

                                                    <span class="comment-copy">the Error is this: There was an unexpected error (type=Internal Server Error, status=500). Exception evaluating SpringEL expression: &quot;#numbers.sequence(1,obj.stars)&quot; (/Obj/index)</span>

                                                    &ndash;&nbsp;<a href="/users/7142451/sebastian-romero"
                                                                    title="116 reputation"
                                                                    class="comment-user owner">sebastian romero</a>
                                                    <span class="comment-date" dir="ltr"><span title="2016-12-15 13:37:12Z" class="relativetime-clean">Dec 15 '16 at 13:37</span></span>
                                                    <span title="this comment was edited 2 times">
                            <svg aria-hidden="true" class="svg-icon va-text-bottom o50 iconPencilSm" width="14" height="14" viewBox="0 0 14 14"><path d="M11.1 1.71l1.13 1.12c.2.2.2.51 0 .71L11.1 4.7 9.21 2.86l1.17-1.15c.2-.2.51-.2.71 0zM2 10.12l6.37-6.43 1.88 1.88L3.88 12H2v-1.88z"/></svg>
                        </span>
                                                </div>
                                            </div>
                                        </li>
                                        <li id="comment-69536386" class="comment js-comment " data-comment-id="69536386">
                                            <div class="js-comment-actions comment-actions">
                                                <div class="comment-score js-comment-edit-hide">
                                                </div>
                                                <div class="comment-voting mtn2 js-comment-edit-hide">
                                                    <a tabindex="0" role="button" href="#" class="comment-up comment-up-off" aria-label="Upvote Comment" title="This comment adds something useful to the post">
                                                        <svg aria-hidden="true" class="svg-icon iconArrowUp" width="18" height="18" viewBox="0 0 18 18"><path d="M1 13h16L9 5l-8 8z"/></svg>
                                                    </a>
                                                </div>
                                                <div class="comment-flagging js-comment-edit-hide">
                                                    <button class="js-comment-flag s-btn s-btn__unset bg-transparent c-pointer fc-black-100 h:fc-red-500"
                                                            aria-label="Flag Comment"
                                                            aria-pressed="false"
                                                            title="Flag this comment for serious problems or moderator attention">
                                                        <svg aria-hidden="true" class="svg-icon iconFlag" width="18" height="18" viewBox="0 0 18 18"><path d="M3 2v14h2v-6h3.6l.4 1h6V3H9.5L9 2H3z"/></svg>
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="comment-text js-comment-text-and-form">
                                                <div class="comment-body js-comment-edit-hide">

                                                    <span class="comment-copy">does obj.stars resolve to an integer?</span>

                                                    &ndash;&nbsp;<a href="/users/4126893/metroids"
                                                                    title="10,182 reputation"
                                                                    class="comment-user">Metroids</a>
                                                    <span class="comment-date" dir="ltr"><span title="2016-12-15 15:41:29Z" class="relativetime-clean">Dec 15 '16 at 15:41</span></span>
                                                </div>
                                            </div>
                                        </li>
                                        <li id="comment-69536771" class="comment js-comment " data-comment-id="69536771">
                                            <div class="js-comment-actions comment-actions">
                                                <div class="comment-score js-comment-edit-hide">
                                                </div>
                                                <div class="comment-voting mtn2 js-comment-edit-hide">
                                                    <a tabindex="0" role="button" href="#" class="comment-up comment-up-off" aria-label="Upvote Comment" title="This comment adds something useful to the post">
                                                        <svg aria-hidden="true" class="svg-icon iconArrowUp" width="18" height="18" viewBox="0 0 18 18"><path d="M1 13h16L9 5l-8 8z"/></svg>
                                                    </a>
                                                </div>
                                                <div class="comment-flagging js-comment-edit-hide">
                                                    <button class="js-comment-flag s-btn s-btn__unset bg-transparent c-pointer fc-black-100 h:fc-red-500"
                                                            aria-label="Flag Comment"
                                                            aria-pressed="false"
                                                            title="Flag this comment for serious problems or moderator attention">
                                                        <svg aria-hidden="true" class="svg-icon iconFlag" width="18" height="18" viewBox="0 0 18 18"><path d="M3 2v14h2v-6h3.6l.4 1h6V3H9.5L9 2H3z"/></svg>
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="comment-text js-comment-text-and-form">
                                                <div class="comment-body js-comment-edit-hide">

                                                    <span class="comment-copy">jum, maybe that&#39;s the problem. I don&#39;t know how to make #numbers.sequence see obj.stars as an integer</span>

                                                    &ndash;&nbsp;<a href="/users/7142451/sebastian-romero"
                                                                    title="116 reputation"
                                                                    class="comment-user owner">sebastian romero</a>
                                                    <span class="comment-date" dir="ltr"><span title="2016-12-15 15:51:35Z" class="relativetime-clean">Dec 15 '16 at 15:51</span></span>
                                                </div>
                                            </div>
                                        </li>
                                        <li id="comment-69536850" class="comment js-comment " data-comment-id="69536850">
                                            <div class="js-comment-actions comment-actions">
                                                <div class="comment-score js-comment-edit-hide">
                                                </div>
                                                <div class="comment-voting mtn2 js-comment-edit-hide">
                                                    <a tabindex="0" role="button" href="#" class="comment-up comment-up-off" aria-label="Upvote Comment" title="This comment adds something useful to the post">
                                                        <svg aria-hidden="true" class="svg-icon iconArrowUp" width="18" height="18" viewBox="0 0 18 18"><path d="M1 13h16L9 5l-8 8z"/></svg>
                                                    </a>
                                                </div>
                                                <div class="comment-flagging js-comment-edit-hide">
                                                    <button class="js-comment-flag s-btn s-btn__unset bg-transparent c-pointer fc-black-100 h:fc-red-500"
                                                            aria-label="Flag Comment"
                                                            aria-pressed="false"
                                                            title="Flag this comment for serious problems or moderator attention">
                                                        <svg aria-hidden="true" class="svg-icon iconFlag" width="18" height="18" viewBox="0 0 18 18"><path d="M3 2v14h2v-6h3.6l.4 1h6V3H9.5L9 2H3z"/></svg>
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="comment-text js-comment-text-and-form">
                                                <div class="comment-body js-comment-edit-hide">

                                                    <span class="comment-copy">stars is defined as private int stars; in the entity</span>

                                                    &ndash;&nbsp;<a href="/users/7142451/sebastian-romero"
                                                                    title="116 reputation"
                                                                    class="comment-user owner">sebastian romero</a>
                                                    <span class="comment-date" dir="ltr"><span title="2016-12-15 15:53:34Z" class="relativetime-clean">Dec 15 '16 at 15:53</span></span>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                                <div id="comments-link-41149380" data-rep=50 data-reg=true>

                                    <a class="js-add-link comments-link disabled-link" title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments." >add a comment</a>
                                    <span class="js-link-separator dno">&nbsp;|&nbsp;</span>
                                    <a class="js-show-link comments-link dno" title="expand to show all comments on this post" href=# onclick=""></a>
                                </div>
                            </div>            </div>
                    </div>


                    <div id="dfp-isb" class="everyonelovesstackoverflow everyoneloves__inline-sidebar"></div>
                    <div id="answers">

                        <a name="tab-top"></a>
                        <div id="answers-header">
                            <div class="subheader answers-subheader">
                                <h2 data-answercount="1">
                                    1 Answer
                                    <span style="display:none;" itemprop="answerCount">1</span>
                                </h2>
                                <div>

                                    <div id="tabs">
                                        <a class="youarehere is-selected " href="/questions/41149380/thymeleaf-how-to-use-numbers-sequence-with-a-variable-limit?answertab=active#tab-top" data-nav-xhref="" title="Answers with the latest activity first" data-value="active" data-shortcut="A">
                                            active</a>
                                        <a href="/questions/41149380/thymeleaf-how-to-use-numbers-sequence-with-a-variable-limit?answertab=oldest#tab-top" data-nav-xhref="" title="Answers in the order they were provided" data-value="oldest" data-shortcut="O">
                                            oldest</a>
                                        <a href="/questions/41149380/thymeleaf-how-to-use-numbers-sequence-with-a-variable-limit?answertab=votes#tab-top" data-nav-xhref="" title="Answers with the highest score first" data-value="votes" data-shortcut="V">
                                            votes</a>
                                    </div>

                                </div>
                            </div>
                        </div>





                        <a name="41169064"></a>
                        <div id="answer-41169064" class="answer accepted-answer" data-answerid="41169064"  itemprop="acceptedAnswer" itemscope itemtype="http://schema.org/Answer">
                            <div class="post-layout">
                                <div class="votecell post-layout--left">


                                    <div class="js-voting-container grid fd-column ai-stretch gs4 fc-black-200" data-post-id="41169064">
                                        <button class="js-vote-up-btn grid--cell s-btn s-btn__unset c-pointer" title="This answer is useful (click again to undo)" aria-pressed="false" aria-label="up vote" data-selected-classes="fc-theme-primary"><svg aria-hidden="true" class="svg-icon m0 iconArrowUpLg" width="36" height="36" viewBox="0 0 36 36"><path d="M2 26h32L18 10 2 26z"/></svg></button>
                                        <div class="js-vote-count grid--cell fc-black-500 fs-title grid fd-column ai-center" itemprop="upvoteCount" data-value="6">6</div>
                                        <button class="js-vote-down-btn grid--cell s-btn s-btn__unset c-pointer" title="This answer is not useful (click again to undo)" aria-pressed="false" aria-label="down vote" data-selected-classes="fc-theme-primary"><svg aria-hidden="true" class="svg-icon m0 iconArrowDownLg" width="36" height="36" viewBox="0 0 36 36"><path d="M2 10h32L18 26 2 10z"/></svg></button>


                                        <div class="js-accepted-answer-indicator grid--cell fc-green-500 ta-center py4" title="loading when this answer was accepted..." tabindex="0" role="note" aria-label="accepted">
                                            <svg aria-hidden="true" class="svg-icon iconCheckmarkLg" width="36" height="36" viewBox="0 0 36 36"><path d="M6 14l8 8L30 6v8L14 30l-8-8v-8z"/></svg>
                                        </div>


                                    </div>

                                </div>




                                <div class="answercell post-layout--right">

                                    <div class="post-text" itemprop="text">
                                        <p>Well, I know it's weird to answer your own question but, thanks to Michael Petch who tested it, I found that the problem was in the sequence. It was starting from 1 when I had values of 0 in obj.stars so the sequence couldn't be created with a step of 1.</p>

                                        <p>Changing it to </p>

                                        <pre><code>&lt;span class="fa fa-star-o" th:each="star:${#numbers.sequence(0,obj.stars)}"&gt;&lt;/span&gt;
</code></pre>

                                        <p>Solved the problem.</p>
                                    </div>
                                    <div class="grid mb0 fw-wrap ai-start jc-end gs8 gsy">
                                        <time itemprop="dateCreated" datetime="2016-12-15T16:35:10"></time>
                                        <div class="grid--cell mr16" style="flex: 1 1 100px;">
                                            <div class="post-menu"><a href="/a/41169064/7997517" itemprop="url"
                                                                      class="js-share-link js-gps-track"
                                                                      title="short permalink to this answer"
                                                                      data-gps-track="post.click({ item: 2, priv: 4, post_type: 2 })"
                                                                      data-controller="se-share-sheet"
                                                                      data-se-share-sheet-title="Share a link to this answer"
                                                                      data-se-share-sheet-subtitle="(includes your user id)"
                                                                      data-se-share-sheet-post-type="answer"
                                                                      data-se-share-sheet-social="facebook twitter devto"
                                                                      data-se-share-sheet-location="2"
                                                                      data-s-popover-placement="bottom-start">share</a><span class="lsep">|</span><a href="/posts/41169064/edit" class="suggest-edit-post js-gps-track" data-gps-track="post.click({ item: 6, priv: 4, post_type: 2 })" title="revise and improve this post">edit</a><span class="lsep">|</span><a href="#"
                                                                                                                                                                                                                                                                                                                                                                   class="flag-post-link js-gps-track"
                                                                                                                                                                                                                                                                                                                                                                   data-gps-track="post.click({ item: 5, priv: 4, post_type: 2 })"
                                                                                                                                                                                                                                                                                                                                                                   title="flag this post for serious problems or moderator attention"
                                                                                                                                                                                                                                                                                                                                                                   data-postid="41169064">flag</a></div>
                                        </div>
                                        <div class="post-signature grid--cell fl0">
                                            <div class="user-info ">
                                                <div class="user-action-time">
                                                    <a href="/posts/41169064/revisions" title="show all edits to this post"
                                                       class="js-gps-track"
                                                       data-gps-track="post.click({ item: 4, priv: 4, post_type: 2 })">edited <span title="2016-12-15 16:47:34Z" class="relativetime">Dec 15 '16 at 16:47</span></a>
                                                </div>
                                                <div class="user-gravatar32">

                                                </div>
                                                <div class="user-details">

                                                    <div class="-flair">

                                                    </div>
                                                </div>
                                            </div>    </div>



                                        <div class="post-signature owner grid--cell fl0">
                                            <div class="user-info ">
                                                <div class="user-action-time">
                                                    answered <span title="2016-12-15 16:35:10Z" class="relativetime">Dec 15 '16 at 16:35</span>
                                                </div>
                                                <div class="user-gravatar32">
                                                    <a href="/users/7142451/sebastian-romero"><div class="gravatar-wrapper-32"><img src="https://i.stack.imgur.com/bbJOc.png?s=32&amp;g=1" alt="" width="32" height="32" class="bar-sm"></div></a>
                                                </div>
                                                <div class="user-details" itemprop="author" itemscope itemtype="http://schema.org/Person">
                                                    <a href="/users/7142451/sebastian-romero">sebastian romero</a><span class="d-none" itemprop="name">sebastian romero</span>
                                                    <div class="-flair">
                                                        <span class="reputation-score" title="reputation score " dir="ltr">116</span><span title="1 silver badge" aria-hidden="true"><span class="badge2"></span><span class="badgecount">1</span></span><span class="v-visible-sr">1 silver badge</span><span title="10 bronze badges" aria-hidden="true"><span class="badge3"></span><span class="badgecount">10</span></span><span class="v-visible-sr">10 bronze badges</span>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                </div>
                                <div class="js-post-notices post-layout--full">
                                </div>

                                <div class="post-layout--right">
                                    <div id="comments-41169064" class="comments js-comments-container bt bc-black-2 mt12  dno" data-post-id="41169064" data-min-length="15">
                                        <ul class="comments-list js-comments-list"
                                            data-remaining-comments-count="0"
                                            data-canpost="false"
                                            data-cansee="true"
                                            data-comments-unavailable="false"
                                            data-addlink-disabled="true">

                                        </ul>
                                    </div>

                                    <div id="comments-link-41169064" data-rep=50 data-reg=true>

                                        <a class="js-add-link comments-link disabled-link" title="Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”." >add a comment</a>
                                        <span class="js-link-separator dno">&nbsp;|&nbsp;</span>
                                        <a class="js-show-link comments-link dno" title="expand to show all comments on this post" href=# onclick=""></a>
                                    </div>
                                </div>    </div>
                        </div>
                        <div id="dfp-bmlb" class="everyonelovesstackoverflow everyoneloves__bot-mid-leaderboard"></div>
                        <a name='new-answer'></a>
                        <form id="post-form" action="/questions/41149380/answer/submit" method="post" class="js-add-answer-component post-form">
                            <input type="hidden" id="post-id" value="41149380" />
                            <input type="hidden" id="qualityBanWarningShown" name="qualityBanWarningShown" value="false" />
                            <input type="hidden" name="referrer" value="https://www.google.com/" />
                            <h2 class="space">
                                Your Answer
                            </h2>



                            <script>
                                StackExchange.ifUsing("editor", function () {
                                    StackExchange.using("externalEditor", function () {
                                        StackExchange.using("snippets", function () {
                                            StackExchange.snippets.init();
                                        });
                                    });
                                }, "code-snippets");
                            </script>


                            <script>
                                StackExchange.ready(function() {
                                    var channelOptions = {
                                        tags: "".split(" "),
                                        id: "1"
                                    };
                                    initTagRenderer("".split(" "), "".split(" "), channelOptions);

                                    StackExchange.using("externalEditor", function() {
                                        // Have to fire editor after snippets, if snippets enabled
                                        if (StackExchange.settings.snippets.snippetsEnabled) {
                                            StackExchange.using("snippets", function() {
                                                createEditor();
                                            });
                                        }
                                        else {
                                            createEditor();
                                        }
                                    });

                                    function createEditor() {
                                        StackExchange.prepareEditor({
                                            heartbeatType: 'answer',
                                            autoActivateHeartbeat: false,
                                            convertImagesToLinks: false,
                                            noModals: true,
                                            showLowRepImageUploadWarning: false,
                                            reputationToPostImages: null,
                                            bindNavPrevention: true,
                                            postfix: "",
                                            imageUploader: {
                                                brandingHtml: "Powered by \u003ca class=\"icon-imgur-white\" href=\"https://imgur.com/\"\u003e\u003c/a\u003e",
                                                contentPolicyHtml: "User contributions licensed under \u003ca href=\"https://creativecommons.org/licenses/by-sa/4.0/\"\u003ecc by-sa 4.0 with attribution required\u003c/a\u003e \u003ca href=\"https://stackoverflow.com/legal/content-policy\"\u003e(content policy)\u003c/a\u003e",
                                                allowUrls: true
                                            },
                                            onDemand: false,
                                            discardSelector: ".discard-answer"
                                            ,immediatelyShowMarkdownHelp:true,userId:7997517
                                        });


                                    }
                                });
                            </script>
                            <div id="post-editor" class="post-editor js-post-editor">

                                <div class="ps-relative">

                                    <div class="wmd-container mb8">
                                        <div id="wmd-button-bar" class="wmd-button-bar btr-sm"></div>
                                        <div class="js-stacks-validation">
                                            <div class="ps-relative">
                    <textarea id="wmd-input"
                              name="post-text"
                              class="wmd-input s-input bar0 js-post-body-field"
                              data-post-type-id="2"
                              cols="92" rows="15"
                              tabindex="101"
                              data-min-length=""></textarea>
                                            </div>
                                            <div class="s-input-message mt4 d-none js-stacks-validation-message"></div>
                                        </div>
                                    </div>
                                </div>

                                <aside class="grid ai-start jc-space-between js-answer-help s-notice s-notice__warning pb0 pr4 pt4 mb8 d-none" role="status" aria-hidden="true">
                                    <div class="grid--cell pt8">
                                        <p>Thanks for contributing an answer to Stack Overflow!</p><ul><li>Please be sure to <em>answer the question</em>. Provide details and share your research!</li></ul><p>But <em>avoid</em> …</p><ul><li>Asking for help, clarification, or responding to other answers.</li><li>Making statements based on opinion; back them up with references or personal experience.</li></ul><p>To learn more, see our <a href="/help/how-to-answer">tips on writing great answers</a>.</p>
                                    </div>
                                    <button class="grid--cell js-answer-help-close-btn s-btn s-btn__muted fc-dark">
                                        <svg aria-hidden="true" class="svg-icon iconClear" width="18" height="18" viewBox="0 0 18 18"><path d="M15 4.41L13.59 3 9 7.59 4.41 3 3 4.41 7.59 9 3 13.59 4.41 15 9 10.41 13.59 15 15 13.59 10.41 9 15 4.41z"/></svg>
                                    </button>
                                </aside>


                                <div id="draft-saved" class="draft-saved community-option fl" style="height:24px; display:none;">draft saved</div>
                                <div id="draft-discarded" class="draft-discarded community-option fl" style="height:24px; display:none;">draft discarded</div>

                                <div class="community-option g-row ai-center f-checkbox">
                                    <div class="g-col -input">
                                        <input id="communitymode" name="communitymode" type="checkbox" >
                                    </div>
                                    <div class="g-col">
                                        <label for="communitymode" class="f-label _small" title="Marking an answer community wiki encourages others to edit it by lowering the reputation barrier required to edit. However, you will not gain any upvote reputation from it. This cannot be undone.">community wiki</label>
                                    </div>
                                </div>


                                <div id="wmd-preview" class="wmd-preview" ></div>
                                <div></div>
                                <div class="edit-block">
                                    <input id="fkey" name="fkey" type="hidden" value="182dc591e463004f2a1049206e30e04d038b611f96d685d1fa7003d5ecf1424f">
                                    <input id="author" name="author" type="text">
                                </div>

                            </div>

                            <div class="ps-relative">


                            </div>

                            <div class="form-submit cbt grid gsx gs4">
                                <button id="submit-button" class="grid--cell s-btn s-btn__primary s-btn__icon" type="submit" tabindex="120" autocomplete="off">
                                    Post Your Answer                                        </button>
                                <button class="grid--cell s-btn s-btn__danger discard-answer dno">
                                    Discard
                                </button>
                            </div>
                            <div class="js-general-error general-error cbt d-none"></div>
                        </form>



                        <h2 class="bottom-notice" data-loc="1">
                            Not the answer you&#39;re looking for?                                Browse other questions tagged <a href="/questions/tagged/html" class="post-tag" title="show questions tagged &#39;html&#39;" rel="tag">html</a> <a href="/questions/tagged/spring" class="post-tag" title="show questions tagged &#39;spring&#39;" rel="tag">spring</a> <a href="/questions/tagged/spring-boot" class="post-tag" title="show questions tagged &#39;spring-boot&#39;" rel="tag">spring-boot</a> <a href="/questions/tagged/thymeleaf" class="post-tag" title="show questions tagged &#39;thymeleaf&#39;" rel="tag">thymeleaf</a>  or <a href="/questions/ask">ask your own question</a>.                            </h2>
                    </div>
                </div>
                <div id="sidebar" class="show-votes" role="complementary" aria-label="sidebar">
                    <div class="s-sidebarwidget s-sidebarwidget__yellow s-anchors s-anchors__default mb16" data-tracker="cb=1">
                        <div class="s-sidebarwidget--header s-sidebarwidget__small-bold-text fc-light">
                            Blog
                        </div>
                        <ul class="s-sidebarwidget--content s-sidebarwidget__items pt0 pr16 pb0 pl16">
                            <li class="s-sidebarwidget--item grid">
                                <div class="grid--cell1 fl-shrink0">
                                    <a href="https://stackoverflow.blog/2019/12/19/what-senior-developers-can-learn-from-beginners/" data-ga="[&quot;community bulletin board&quot;,&quot;Blog&quot;,&quot;https://stackoverflow.blog/2019/12/19/what-senior-developers-can-learn-from-beginners/&quot;,null,null]">
                                        <div class="favicon favicon-stackexchangemeta" title="Meta Stack Exchange"></div>                </a>
                                </div>
                                <div class="grid--cell">
                                    <a href="https://stackoverflow.blog/2019/12/19/what-senior-developers-can-learn-from-beginners/" class="js-gps-track" data-ga="[&quot;community bulletin board&quot;,&quot;Blog&quot;,&quot;https://stackoverflow.blog/2019/12/19/what-senior-developers-can-learn-from-beginners/&quot;,null,null]" data-gps-track="communitybulletin.click({ priority: 1, position: 0 })">What senior developers can learn from beginners</a>
                                </div>
                            </li>
                        </ul>
                        <ul class="s-sidebarwidget--content s-sidebarwidget__items pt0 pr16 pb0 pl16">
                            <li class="s-sidebarwidget--item grid">
                                <div class="grid--cell1 fl-shrink0">
                                    <a href="https://stackoverflow.blog/2019/12/18/websockets-for-fun-and-profit/" data-ga="[&quot;community bulletin board&quot;,&quot;Blog&quot;,&quot;https://stackoverflow.blog/2019/12/18/websockets-for-fun-and-profit/&quot;,null,null]">
                                        <div class="favicon favicon-stackexchangemeta" title="Meta Stack Exchange"></div>                </a>
                                </div>
                                <div class="grid--cell">
                                    <a href="https://stackoverflow.blog/2019/12/18/websockets-for-fun-and-profit/" class="js-gps-track" data-ga="[&quot;community bulletin board&quot;,&quot;Blog&quot;,&quot;https://stackoverflow.blog/2019/12/18/websockets-for-fun-and-profit/&quot;,null,null]" data-gps-track="communitybulletin.click({ priority: 1, position: 1 })">WebSockets for fun and profit</a>
                                </div>
                            </li>
                        </ul>
                        <div class="s-sidebarwidget--header s-sidebarwidget__small-bold-text fc-light">
                            Featured on Meta
                        </div>
                        <ul class="s-sidebarwidget--content s-sidebarwidget__items pt0 pr16 pb0 pl16">
                            <li class="s-sidebarwidget--item grid">
                                <div class="grid--cell1 fl-shrink0">
                                    <a href="https://meta.stackoverflow.com/questions/391832/we-re-lowering-the-close-reopen-vote-threshold-from-5-to-3-for-good" data-ga="[&quot;community bulletin board&quot;,&quot;Featured on Meta&quot;,&quot;https://meta.stackoverflow.com/questions/391832/we-re-lowering-the-close-reopen-vote-threshold-from-5-to-3-for-good&quot;,null,null]">
                                        <div class="favicon favicon-stackoverflowmeta" title="Meta Stack Overflow"></div>                </a>
                                </div>
                                <div class="grid--cell">
                                    <a href="https://meta.stackoverflow.com/questions/391832/we-re-lowering-the-close-reopen-vote-threshold-from-5-to-3-for-good" class="js-gps-track" data-ga="[&quot;community bulletin board&quot;,&quot;Featured on Meta&quot;,&quot;https://meta.stackoverflow.com/questions/391832/we-re-lowering-the-close-reopen-vote-threshold-from-5-to-3-for-good&quot;,null,null]" data-gps-track="communitybulletin.click({ priority: 6, position: 2 })">We’re lowering the close/reopen vote threshold from 5 to 3 for good</a>
                                </div>
                            </li>
                        </ul>
                        <ul class="s-sidebarwidget--content s-sidebarwidget__items pt0 pr16 pb0 pl16">
                            <li class="s-sidebarwidget--item grid">
                                <div class="grid--cell1 fl-shrink0">
                                    <a href="https://meta.stackoverflow.com/questions/392137/why-was-i-just-awarded-a-bunch-of-announcer-badges" data-ga="[&quot;community bulletin board&quot;,&quot;Featured on Meta&quot;,&quot;https://meta.stackoverflow.com/questions/392137/why-was-i-just-awarded-a-bunch-of-announcer-badges&quot;,null,null]">
                                        <div class="favicon favicon-stackoverflowmeta" title="Meta Stack Overflow"></div>                </a>
                                </div>
                                <div class="grid--cell">
                                    <a href="https://meta.stackoverflow.com/questions/392137/why-was-i-just-awarded-a-bunch-of-announcer-badges" class="js-gps-track" data-ga="[&quot;community bulletin board&quot;,&quot;Featured on Meta&quot;,&quot;https://meta.stackoverflow.com/questions/392137/why-was-i-just-awarded-a-bunch-of-announcer-badges&quot;,null,null]" data-gps-track="communitybulletin.click({ priority: 6, position: 3 })">Why was I just awarded a bunch of &ldquo;Announcer&rdquo; badges?</a>
                                </div>
                            </li>
                        </ul>

                    </div>
                    <div id="dfp-tsb" class="everyonelovesstackoverflow everyoneloves__top-sidebar"></div><div id="dfp-msb" class="everyonelovesstackoverflow everyoneloves__mid-sidebar"></div><div id="hireme"></div>


                    <div class="module sidebar-related">
                        <h4 id="h-related">Related</h4>
                        <div class="related js-gps-related-questions" data-tracker="rq=1">
                            <div class="spacer"><a href="/q/391005" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted extra-large">1592</div></a><a href="/questions/391005/convert-html-css-to-pdf-with-php" class="question-hyperlink">Convert HTML + CSS to PDF with PHP?</a></div><div class="spacer"><a href="/q/9943771" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted large">600</div></a><a href="/questions/9943771/adding-a-favicon-to-a-static-html-page" class="question-hyperlink">Adding a favicon to a static HTML page</a></div><div class="spacer"><a href="/q/23531580" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">24</div></a><a href="/questions/23531580/how-do-i-add-a-thymeleaf-dialect-to-spring-boot" class="question-hyperlink">How do I add a thymeleaf dialect to spring boot?</a></div><div class="spacer"><a href="/q/32650536" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">19</div></a><a href="/questions/32650536/using-thymeleaf-variable-in-onclick-attribute" class="question-hyperlink">Using thymeleaf variable in onclick attribute</a></div><div class="spacer"><a href="/q/45897298" title="Vote score (upvotes - downvotes)"><div class="answer-votes default">2</div></a><a href="/questions/45897298/invoke-and-load-spring-mvc-controller-request-method-from-thymeleaf" class="question-hyperlink">Invoke and load Spring MVC controller request method from Thymeleaf</a></div><div class="spacer"><a href="/q/46754705" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">1</div></a><a href="/questions/46754705/spring-boot-thymeleaf-dropdown-list" class="question-hyperlink">Spring Boot Thymeleaf Dropdown List</a></div><div class="spacer"><a href="/q/49924713" title="Vote score (upvotes - downvotes)"><div class="answer-votes default">0</div></a><a href="/questions/49924713/can-not-display-a-svg-graphic-with-thymeleaf" class="question-hyperlink">Can not display a SVG Graphic with Thymeleaf</a></div><div class="spacer"><a href="/q/50080286" title="Vote score (upvotes - downvotes)"><div class="answer-votes default">0</div></a><a href="/questions/50080286/thymeleaf-doesnt-show-values" class="question-hyperlink">Thymeleaf doesn&#39;t show values</a></div><div class="spacer"><a href="/q/51953972" title="Vote score (upvotes - downvotes)"><div class="answer-votes default">1</div></a><a href="/questions/51953972/thymeleaf-spring-boot-input-localdate" class="question-hyperlink">Thymeleaf Spring boot - input Localdate</a></div><div class="spacer"><a href="/q/52447241" title="Vote score (upvotes - downvotes)"><div class="answer-votes answered-accepted default">0</div></a><a href="/questions/52447241/bind-dropdown-value-to-a-bean-in-thymeleaf" class="question-hyperlink">Bind dropdown value to a bean in Thymeleaf</a></div>
                        </div>
                    </div>

                    <div id="hot-network-questions" class="module tex2jax_ignore">
                        <h4>
                            <a href="https://stackexchange.com/questions?tab=hot"
                               class="js-gps-track s-link s-link__inherit"
                               data-gps-track="posts_hot_network.click({ item_type:1, location:11 })">
                                Hot Network Questions
                            </a>
                        </h4>
                        <ul>
                            <li >
                                <div class="favicon favicon-skeptics" title="Skeptics Stack Exchange"></div><a href="https://skeptics.stackexchange.com/questions/45576/was-greta-thunberg-forced-to-ride-on-the-floor-of-an-overcrowded-train" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:212 }); posts_hot_network.click({ item_type:2, location:11 })">
                                Was Greta Thunberg forced to ride on the floor of an overcrowded train?
                            </a>

                            </li>
                            <li >
                                <div class="favicon favicon-codegolf" title="Code Golf Stack Exchange"></div><a href="https://codegolf.stackexchange.com/questions/197210/even-and-odd-numbers" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:200 }); posts_hot_network.click({ item_type:2, location:11 })">
                                Even and Odd Numbers
                            </a>

                            </li>
                            <li >
                                <div class="favicon favicon-stackoverflow" title="Stack Overflow"></div><a href="https://stackoverflow.com/questions/59428993/is-it-safe-to-swap-two-different-vectors-in-c-using-the-stdvectorswap-met" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:1 }); posts_hot_network.click({ item_type:2, location:11 })">
                                Is it safe to swap two different vectors in C++, using the std::vector::swap method?
                            </a>

                            </li>
                            <li >
                                <div class="favicon favicon-codegolf" title="Code Golf Stack Exchange"></div><a href="https://codegolf.stackexchange.com/questions/197200/fill-the-golfeek-gutter" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:200 }); posts_hot_network.click({ item_type:2, location:11 })">
                                Fill the Golfeek gutter
                            </a>

                            </li>
                            <li >
                                <div class="favicon favicon-puzzling" title="Puzzling Stack Exchange"></div><a href="https://puzzling.stackexchange.com/questions/92135/a-geometric-sequence-using-one-digit" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:559 }); posts_hot_network.click({ item_type:2, location:11 })">
                                A geometric sequence using one digit
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-rpg" title="Role-playing Games Stack Exchange"></div><a href="https://rpg.stackexchange.com/questions/161657/is-this-homebrew-warlock-invocation-splinter-casting-balanced" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:122 }); posts_hot_network.click({ item_type:2, location:11 })">
                                Is this homebrew Warlock Invocation, Splinter Casting, balanced?
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-academia" title="Academia Stack Exchange"></div><a href="https://academia.stackexchange.com/questions/141868/quit-a-phd-for-another-phd" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:415 }); posts_hot_network.click({ item_type:2, location:11 })">
                                Quit a PhD for another PhD
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-travel" title="Travel Stack Exchange"></div><a href="https://travel.stackexchange.com/questions/151146/texas-gun-laws-can-an-overseas-visitor-buy-ammunition" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:273 }); posts_hot_network.click({ item_type:2, location:11 })">
                                Texas gun laws - can an overseas visitor buy ammunition?
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-travel" title="Travel Stack Exchange"></div><a href="https://travel.stackexchange.com/questions/151210/how-do-airlines-compute-weight-allowances-for-carry-on-bags" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:273 }); posts_hot_network.click({ item_type:2, location:11 })">
                                How do airlines compute weight allowances for carry-on bags?
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-cooking" title="Seasoned Advice"></div><a href="https://cooking.stackexchange.com/questions/104213/is-it-possible-to-make-taste-of-raw-oily-salmon-less-pronounced" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:49 }); posts_hot_network.click({ item_type:2, location:11 })">
                                Is it possible to make taste of raw oily salmon less pronounced?
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-money" title="Personal Finance &amp; Money Stack Exchange"></div><a href="https://money.stackexchange.com/questions/118286/why-is-5-years-the-magic-number-for-how-long-one-should-live-in-a-home" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:93 }); posts_hot_network.click({ item_type:2, location:11 })">
                                Why is 5 years the &#39;magic number&#39; for how long one should live in a home?
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-physics" title="Physics Stack Exchange"></div><a href="https://physics.stackexchange.com/questions/520488/does-special-relativity-imply-multiple-realities" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:151 }); posts_hot_network.click({ item_type:2, location:11 })">
                                Does Special Relativity Imply Multiple Realities?
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-gaming" title="Arqade"></div><a href="https://gaming.stackexchange.com/questions/361602/what-game-has-this-black-main-menu" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:41 }); posts_hot_network.click({ item_type:2, location:11 })">
                                What game has this black main menu?
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-academia" title="Academia Stack Exchange"></div><a href="https://academia.stackexchange.com/questions/141873/how-to-review-a-manuscript-where-the-software-is-difficult-to-install" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:415 }); posts_hot_network.click({ item_type:2, location:11 })">
                                How to review a manuscript where the software is difficult to install?
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-rpg" title="Role-playing Games Stack Exchange"></div><a href="https://rpg.stackexchange.com/questions/161694/how-can-a-character-discreetly-record-a-conversation-for-later-playback" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:122 }); posts_hot_network.click({ item_type:2, location:11 })">
                                How can a character discreetly record a conversation for later playback?
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-graphicdesign" title="Graphic Design Stack Exchange"></div><a href="https://graphicdesign.stackexchange.com/questions/132192/how-do-i-ensure-a-cmyk-cyan-that-works-in-red-blue-stereoscopic-printing" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:174 }); posts_hot_network.click({ item_type:2, location:11 })">
                                How do I ensure a CMYK cyan that works in Red-Blue stereoscopic printing?
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-travel" title="Travel Stack Exchange"></div><a href="https://travel.stackexchange.com/questions/151167/corridor-seats-on-the-tgv-why-are-seat-reservations-not-always-mandatory" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:273 }); posts_hot_network.click({ item_type:2, location:11 })">
                                Corridor seats on the TGV — why? Are seat reservations not always mandatory?
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-ell" title="English Language Learners Stack Exchange"></div><a href="https://ell.stackexchange.com/questions/232933/affection-vs-affliction" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:481 }); posts_hot_network.click({ item_type:2, location:11 })">
                                Affection vs. Affliction
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-workplace" title="The Workplace Stack Exchange"></div><a href="https://workplace.stackexchange.com/questions/150058/how-to-appropriately-quit-a-bad-unpaid-internship" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:423 }); posts_hot_network.click({ item_type:2, location:11 })">
                                How to appropriately quit a &quot;bad&quot; unpaid internship?
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-politics" title="Politics Stack Exchange"></div><a href="https://politics.stackexchange.com/questions/48885/can-the-u-s-senate-hold-an-impeachment-trial-if-the-house-passes-articles-of" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:475 }); posts_hot_network.click({ item_type:2, location:11 })">
                                Can the U.S. Senate hold an impeachment trial if the House &quot;passes&quot; articles of impeachment but does not &quot;transmit&quot; them to the Senate?
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-mathematica" title="Mathematica Stack Exchange"></div><a href="https://mathematica.stackexchange.com/questions/211722/deletecases-for-once-only" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:387 }); posts_hot_network.click({ item_type:2, location:11 })">
                                DeleteCases for once only
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-english" title="English Language &amp; Usage Stack Exchange"></div><a href="https://english.stackexchange.com/questions/521069/what-is-the-difference-between-become-and-be-become" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:97 }); posts_hot_network.click({ item_type:2, location:11 })">
                                What is the difference between become and be become?
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-photo" title="Photography Stack Exchange"></div><a href="https://photo.stackexchange.com/questions/113645/why-cant-i-shoot-with-a-fast-shutter-speed" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:61 }); posts_hot_network.click({ item_type:2, location:11 })">
                                Why can&#39;t I shoot with a fast shutter speed?
                            </a>

                            </li>
                            <li class="dno js-hidden">
                                <div class="favicon favicon-workplace" title="The Workplace Stack Exchange"></div><a href="https://workplace.stackexchange.com/questions/150182/should-i-tell-the-recruiter-that-they-are-below-the-market-rate" class="js-gps-track question-hyperlink mb0" data-gps-track="site.switch({ item_type:11, target_site:423 }); posts_hot_network.click({ item_type:2, location:11 })">
                                Should I tell the recruiter that they are below the market rate?
                            </a>

                            </li>
                        </ul>

                        <a href="#"
                           class="show-more js-show-more js-gps-track"
                           data-gps-track="posts_hot_network.click({ item_type:3, location:11 })">
                            more hot questions
                        </a>
                    </div>

                    <div id="feed-link" class="js-feed-link">
                        <a href="/feeds/question/41149380" title="Feed of this question and its answers">
                            <svg aria-hidden="true" class="svg-icon fc-orange-400 iconRss" width="18" height="18" viewBox="0 0 18 18"><path d="M1 3c0-1.1.9-2 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V3zm14.5 12C15.5 8.1 9.9 2.5 3 2.5V5a10 10 0 0 1 10 10h2.5zm-5 0A7.5 7.5 0 0 0 3 7.5V10a5 5 0 0 1 5 5h2.5zm-5 0A2.5 2.5 0 0 0 3 12.5V15h2.5z"/></svg>
                            Question feed
                        </a>
                    </div>
                    <aside class="s-modal js-feed-link-modal" tabindex="-1" role="dialog" aria-labelledby="feed-modal-title" aria-describedby="feed-modal-description" aria-hidden="true">
                        <div class="s-modal--dialog js-modal-dialog wmx4" role="document"  data-controller="se-draggable">
                            <h1 class="s-modal--header fw-bold js-first-tabbable" id="feed-modal-title" data-target="se-draggable.handle" tabindex="0">
                                Subscribe to RSS
                            </h1>
                            <div class="grid gs4 gsy fd-column">
                                <div class="grid--cell">
                                    <label class="d-block s-label c-default" for="feed-url">
                                        Question feed
                                        <p class="s-description mt2" id="feed-modal-description">To subscribe to this RSS feed, copy and paste this URL into your RSS reader.</p>
                                    </label>
                                </div>
                                <div class="grid ps-relative">
                                    <input class="s-input" type="text" name="feed-url" id="feed-url" readonly="readonly" value="https://stackoverflow.com/feeds/question/41149380" />
                                    <svg aria-hidden="true" class="svg-icon s-input-icon fc-orange-400 iconRss" width="18" height="18" viewBox="0 0 18 18"><path d="M1 3c0-1.1.9-2 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V3zm14.5 12C15.5 8.1 9.9 2.5 3 2.5V5a10 10 0 0 1 10 10h2.5zm-5 0A7.5 7.5 0 0 0 3 7.5V10a5 5 0 0 1 5 5h2.5zm-5 0A2.5 2.5 0 0 0 3 12.5V15h2.5z"/></svg>
                                </div>
                            </div>
                            <a class="s-modal--close s-btn s-btn__muted js-modal-close js-last-tabbable" href="#" aria-label="Close">
                                <svg aria-hidden="true" class="svg-icon iconClearSm" width="14" height="14" viewBox="0 0 14 14"><path d="M12 3.41L10.59 2 7 5.59 3.41 2 2 3.41 5.59 7 2 10.59 3.41 12 7 8.41 10.59 12 12 10.59 8.41 7 12 3.41z"/></svg>
                            </a>
                        </div>
                    </aside>
                </div>
            </div>
            <script>StackExchange.ready(function(){$.get('/posts/41149380/ivc/e67a');});</script>
            <noscript><div><img src="/posts/41149380/ivc/e67a" class="dno" alt="" width="0" height="0"></div></noscript><div style="display:none" id="prettify-lang">default</div></div>

        <script>
            $('#wmd-input').one("keypress", function () {
                $.ajax({
                    url: '/accounts/email-settings-form',
                    cache: false,
                    success: function (data) {
                        $('#submit-button').parent().prepend(data);
                    }
                });
            });

        </script>

    </div>
</div>


<script>;try{(function(a){function b(a){return'string'==typeof a?document.getElementById(a):a}function c(a){return a=b(a),!!a&&'none'===getComputedStyle(a).display}function d(a){return!c(a)}function e(a){return!!a}function f(a){return /^\s*$/.test(b(a).innerHTML)}function g(a){var b=a.style;b.height=b.maxHeight=b.minHeight='auto',b.display='none',[].forEach.call(a.children,g)}function h(a,b){var c;return function(){return a&&(c=a.call(b||this,arguments),a=null),c}}function i(a){var b=document.createElement('script');b.src=a,document.body.appendChild(b)}function j(a){return k([],a)}function k(a,b){return a.push=function(a){return b(),delete this.push,this.push(a)},a}function l(){try{return!new Function('return async()=>{};')}catch(a){return!0}}function m(){return'undefined'!=typeof googletag&&!!googletag.apiReady}function n(){m()||(googletag={cmd:j(A)})}function o(){var a=document.createElement('div');a.className='adsbox',a.id='clc-abd',a.style.position='absolute',a.style.pointerEvents='none',a.innerHTML='&nbsp;',document.body.appendChild(a)}function p(a){var b=a.serviceName,c=a.slot,d=a.lineItemId;try{var e=c.getSlotElementId(),f=[];e||f.push('id=0');var h=document.getElementById(e);if(!e||h?h.hasAttribute('data-clc-stalled')&&f.push('st=1'):f.push('el=0'),0!==f.length)return void B(f.join('&'));if(-1!==x.dh.indexOf(d))g(h);else if(d&&(h.setAttribute('data-clc-prefilled','true'),'dfp-msb'==e)){var i=document.getElementById('hireme');g(i)}h.setAttribute('data-clc-ready','true')}catch(a){var j=document.querySelector('#dfp-tsb, #dfp-isb, #clc-tsb');j&&j.setAttribute('data-clc-ready','true'),B('e=1')}}function q(){return Object.keys(F.ids)}function r(a){var b=F.ids[a],c=F.slots[b];'function'==typeof c&&(c=c(a));return{path:'/'+C+'/'+E+'/'+b+'/'+D,sizes:c,zone:b}}function s(a){return!(clc.collapse&&void 0!==clc.collapse[a])||!!clc.collapse[a]}function t(a,b){'dfp-isb'===a&&b.setTargeting('Sidebar',['Inline']),'dfp-tsb'===a&&b.setTargeting('Sidebar',['Right']);var c=r(a),d=c.path,e=c.sizes,f=c.zone,g=googletag.defineSlot(d,e,a);s(f)&&g.setCollapseEmptyDiv(!0,!0),g.addService(b),!1}function u(b){var c=a.dfp&&a.dfp.targeting||{};Object.keys(c).forEach(function(a){b.setTargeting(a,c[a])})}function v(a){var g=a.map(b).filter(e);return{eligible:g.filter(f).filter(d),ineligible:g.filter(c)}}function w(b){if(void 0===b&&(b=q()),!m())return n(),void googletag.cmd.push(function(){return w(b)});var c=v(b),d=c.eligible,e=c.ineligible;if(e.forEach(g),0!==d.length){x.abd&&o(),googletag.destroySlots();var f=googletag.pubads();x.sf&&(f.setForceSafeFrame(!0),f.setSafeFrameConfig({allowOverlayExpansion:!0,allowPushExpansion:!0,sandbox:!0})),f.enableSingleRequest(),a.sreEvent||(f.addEventListener('slotRenderEnded',p),a.sreEvent=!0),u(f),d.forEach(function(a){t(a.id,f),a.setAttribute('data-dfp-zone','true')}),googletag.enableServices(),d.forEach(function(a){googletag.display(a.id)})}}var x=function(a){for(var b=[],c=1;c<arguments.length;c++)b[c-1]=arguments[c];for(var d,e=0,f=b;e<f.length;e++)for(var g in d=f[e],d)a[g]=d[g];return a}({"lib":"https://cdn.sstatic.net/clc/clc.min.js?v=d86ede4e666e","style":"https://cdn.sstatic.net/clc/styles/clc.min.css?v=308d7ccd0858","u":"https://clc.stackoverflow.com/markup.js","wa":true,"kt":2000,"tto":true,"h":"clc.stackoverflow.com","allowed":"^(((talent\\.)?stackoverflow)|(blog\\.codinghorror)|(serverfault|askubuntu)|([^\\.]+\\.stackexchange))\\.com$","wv":true,"al":false,"dh":[5171832659],"abd":true},a.options||{}),y=h(function(){var a=x.lib;l()&&(a=a.replace(/(\.min)?\.js(\?v=[0-9a-fA-F]+)?$/,'.ie$1.js$2')),i(a)}),z=a.cmd||[];Array.isArray(z)&&(0<z.length?y():k(z,y));var A=h(function(){i('https://www.googletagservices.com/tag/js/gpt.js')}),B=function(a){new Image().src='https://'+x.h+'/stalled.gif?'+a},C='248424177',D=/^\/tags\//.test(location.pathname)||/^\/questions\/tagged\//.test(location.pathname)?'tag-pages':/^\/$/.test(location.pathname)||/^\/home/.test(location.pathname)?'home-page':'question-pages',E=location.hostname;var F={slots:{lb:[[728,90]],mlb:[[728,90]],smlb:[[728,90]],bmlb:[[728,90]],sb:function(a){return'dfp-tsb'===a?[[300,250],[300,600]]:[[300,250]]},"tag-sponsorship":[[730,135]],"mobile-below-question":[[320,50],[300,250]],msb:[[300,250],[300,600]]},ids:{"dfp-tlb":'lb',"dfp-mlb":'mlb',"dfp-smlb":'smlb',"dfp-bmlb":'bmlb',"dfp-tsb":'sb',"dfp-isb":'sb',"dfp-tag":'tag-sponsorship',"dfp-msb":'msb',"dfp-m-aq":'mobile-below-question',"clc-tlb":'lb',"clc-mlb":'mlb',"clc-tsb":'sb'}};(function(){var b=x.al;b&&z.push(function(){return a.load()})})(),n(),a.dfp={load:w},a.options=x,a.cmd=z})(this.clc=this.clc||{})}catch(a){window.console.error(a)}</script>    <script>
    var clc = clc || {};
    clc.collapse = { sb: !0, 'tag-sponsorship': !0, lb:!0, mlb:!0, smlb:!0, bmlb:!0, 'mobile-below-question':!0};
    clc.options = clc.options || {};
    clc.options.sf = !0;
    clc.options.hb = !1;
    clc.cmd = clc.cmd || [];
    clc.cmd.push(function () { window.clc_request='AoKreNUhhtcIUPqlAMTjcwICAAAAAgAAAAMjAAAAfGh0bWx8c3ByaW5nfHNwcmluZy1ib290fHRoeW1lbGVhZnwAjr24A0fmDBhDXw'; clc.load(); });
    clc.dfp = clc.dfp || {};
    clc.dfp.targeting = {Registered:['true'],'so-tag':['html','spring','spring-boot','thymeleaf'],'tag-reportable':['html','spring','spring-boot','thymeleaf'],'tag-non-reportable':['html','spring','spring-boot','thymeleaf'],NumberOfAnswers:['1']};
    var googletag = googletag || {};
    googletag.cmd = googletag.cmd || [];
    googletag.cmd.push(function () { clc.dfp.load(); });
</script>

<footer id="footer" class="site-footer js-footer" role="contentinfo">
    <div class="site-footer--container">
        <div class="site-footer--logo">


            <a href="https://stackoverflow.com"><svg aria-hidden="true" class="svg-icon native iconLogoGlyphMd" width="32" height="37" viewBox="0 0 32 37"><path d="M26 33v-9h4v13H0V24h4v9h22z" fill="#BCBBBB"/><path d="M21.5 0l-2.7 2 9.9 13.3 2.7-2L21.5 0zM26 18.4L13.3 7.8l2.1-2.5 12.7 10.6-2.1 2.5zM9.1 15.2l15 7 1.4-3-15-7-1.4 3zm14 10.79l.68-2.95-16.1-3.35L7 23l16.1 2.99zM23 30H7v-3h16v3z" fill="#F48024"/></svg></a>
        </div>

        <nav class="site-footer--nav">
            <div class="site-footer--col site-footer--col__visible js-footer-col" data-name="default">
                <h5 class="-title"><a href="https://stackoverflow.com" class="js-gps-track" data-gps-track="footer.click({ location: 2, link: 15})">Stack Overflow</a></h5>
                <ul class="-list js-primary-footer-links">
                    <li class="-item"><a href="/questions" class="js-gps-track -link" data-gps-track="footer.click({ location: 2, link: 16})">Questions</a></li>
                    <li class="-item"><a href="https://stackoverflow.com/jobs" class="js-gps-track -link" data-gps-track="footer.click({ location: 2, link: 17})">Jobs</a></li>
                    <li class="-item"><a href="https://stackoverflow.com/jobs/directory/developer-jobs" class="js-gps-track -link" data-gps-track="footer.click({ location: 2, link: 11})">Developer Jobs Directory</a></li>
                    <li class="-item"><a href="https://stackoverflow.com/jobs/salary" class="js-gps-track -link" data-gps-track="footer.click({ location: 2, link: 28})">Salary Calculator</a></li>
                    <li class="-item"><a href="/help" class="js-gps-track -link" data-gps-track="footer.click({ location: 2, link: 3 })">Help</a></li>
                    <li class="-item"><a onclick='StackExchange.switchMobile("on")' class="js-gps-track -link" data-gps-track="footer.click({ location: 2, link: 12 })">Mobile</a></li>
                </ul>
            </div>
            <div class="site-footer--col site-footer--col__visible js-footer-col" data-name="default">
                <h5 class="-title"><a href="https://stackoverflowbusiness.com" class="js-gps-track" data-gps-track="footer.click({ location: 2, link: 19 })">Products</a></h5>
                <ul class="-list">
                    <li class="-item"><a href="https://stackoverflow.com/teams" class="js-gps-track -link"
                                         data-ga="[&quot;teams traffic&quot;,&quot;footer - site nav&quot;,&quot;stackoverflow.com/teams&quot;,null,{&quot;dimension4&quot;:&quot;teams&quot;}]"
                                         data-gps-track="footer.click({ location: 2, link: 29 })">Teams</a></li>
                    <li class="-item"><a href="https://stackoverflow.com/talent" class="js-gps-track -link" data-gps-track="footer.click({ location: 2, link: 20 })">Talent</a></li>
                    <li class="-item"><a href="https://stackoverflow.com/advertising" class="js-gps-track -link" data-gps-track="footer.click({ location: 2, link: 21 })">Advertising</a></li>
                    <li class="-item"><a href="https://stackoverflow.com/enterprise" class="js-gps-track -link" data-gps-track="footer.click({ location: 2, link: 22 })">Enterprise</a></li>
                </ul>
            </div>
            <div class="site-footer--col site-footer--col__visible js-footer-col" data-name="default">
                <h5 class="-title"><a class="js-gps-track" data-gps-track="footer.click({ location: 2, link: 1 })" href="https://stackoverflow.com/company/about">Company</a></h5>
                <ul class="-list">
                    <li class="-item"><a class="js-gps-track -link" data-gps-track="footer.click({ location: 2, link: 1 })" href="https://stackoverflow.com/company/about">About</a></li>
                    <li class="-item"><a class="js-gps-track -link" data-gps-track="footer.click({ location: 2, link: 27 })" href="https://stackoverflow.com/company/press">Press</a></li>
                    <li class="-item"><a class="js-gps-track -link" data-gps-track="footer.click({ location: 2, link: 9 })" href="https://stackoverflow.com/company/work-here">Work Here</a></li>
                    <li class="-item"><a class="js-gps-track -link" data-gps-track="footer.click({ location: 2, link: 7 })" href="https://stackoverflow.com/legal">Legal</a></li>
                    <li class="-item"><a class="js-gps-track -link" data-gps-track="footer.click({ location: 2, link: 8 })" href="https://stackoverflow.com/legal/privacy-policy">Privacy Policy</a></li>
                    <li class="-item"><a class="js-gps-track -link" data-gps-track="footer.click({ location: 2, link: 13 })" href="https://stackoverflow.com/company/contact">Contact Us</a></li>
                </ul>
            </div>
            <div class="site-footer--col site-footer--categories-nav site-footer--col__visible">
                <a href="#" class="site-footer--back js-footer-back"><svg aria-hidden="true" class="svg-icon iconArrowLeftAlt" width="18" height="18" viewBox="0 0 18 18"><path d="M10.58 16L12 14.59 6.4 9 12 3.41 10.57 2l-7 7 7 7z"/></svg></a>
                <div>
                    <h5 class="-title"><a href="https://stackexchange.com" data-gps-track="footer.click({ location: 2, link: 30 })">Stack Exchange<br> Network</a></h5>
                    <ul class="-list">
                        <li class="-item"><a href="#" class="-link _expandable js-footer-category-trigger js-gps-track" data-gps-track="footer.click({ location: 2, link: 24 })" data-target="Technology">Technology</a></li>
                        <li class="-item"><a href="#" class="-link _expandable js-footer-category-trigger js-gps-track" data-gps-track="footer.click({ location: 2, link: 24 })" data-target="Life / Arts">Life / Arts</a></li>
                        <li class="-item"><a href="#" class="-link _expandable js-footer-category-trigger js-gps-track" data-gps-track="footer.click({ location: 2, link: 24 })" data-target="Culture / Recreation">Culture / Recreation</a></li>
                        <li class="-item"><a href="#" class="-link _expandable js-footer-category-trigger js-gps-track" data-gps-track="footer.click({ location: 2, link: 24 })" data-target="Science">Science</a></li>
                        <li class="-item"><a href="#" class="-link _expandable js-footer-category-trigger js-gps-track" data-gps-track="footer.click({ location: 2, link: 24 })" data-target="Other">Other</a></li>

                    </ul>
                </div>
            </div>
            <div class="site-footer--categories">
                <div class="site-footer--col site-footer--category js-footer-col" data-name="Technology">
                    <ul class="-list">
                        <li class="-item"><a href="https://stackoverflow.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="professional and enthusiast programmers">Stack Overflow</a></li>
                        <li class="-item"><a href="https://serverfault.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="system and network administrators">Server Fault</a></li>
                        <li class="-item"><a href="https://superuser.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="computer enthusiasts and power users">Super User</a></li>
                        <li class="-item"><a href="https://webapps.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="power users of web applications">Web Applications</a></li>
                        <li class="-item"><a href="https://askubuntu.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="Ubuntu users and developers">Ask Ubuntu</a></li>
                        <li class="-item"><a href="https://webmasters.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="pro webmasters">Webmasters</a></li>
                        <li class="-item"><a href="https://gamedev.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="professional and independent game developers">Game Development</a></li>
                    </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Technology"><ul class="-list">
                <li class="-item"><a href="https://tex.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="users of TeX, LaTeX, ConTeXt, and related typesetting systems">TeX - LaTeX</a></li>
                <li class="-item"><a href="https://softwareengineering.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="professionals, academics, and students working within the systems development life cycle">Software Engineering</a></li>
                <li class="-item"><a href="https://unix.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="users of Linux, FreeBSD and other Un*x-like operating systems">Unix &amp; Linux</a></li>
                <li class="-item"><a href="https://apple.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="power users of Apple hardware and software">Ask Different (Apple)</a></li>
                <li class="-item"><a href="https://wordpress.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="WordPress developers and administrators">WordPress Development</a></li>
                <li class="-item"><a href="https://gis.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="cartographers, geographers and GIS professionals">Geographic Information Systems</a></li>
                <li class="-item"><a href="https://electronics.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="electronics and electrical engineering professionals, students, and enthusiasts">Electrical Engineering</a></li>
            </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Technology"><ul class="-list">
                <li class="-item"><a href="https://android.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="enthusiasts and power users of the Android operating system">Android Enthusiasts</a></li>
                <li class="-item"><a href="https://security.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="information security professionals">Information Security</a></li>
                <li class="-item"><a href="https://dba.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="database professionals who wish to improve their database skills and learn from others in the community">Database Administrators</a></li>
                <li class="-item"><a href="https://drupal.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="Drupal developers and administrators">Drupal Answers</a></li>
                <li class="-item"><a href="https://sharepoint.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="SharePoint enthusiasts">SharePoint</a></li>
                <li class="-item"><a href="https://ux.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="user experience researchers and experts">User Experience</a></li>
                <li class="-item"><a href="https://mathematica.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="users of Wolfram Mathematica">Mathematica</a></li>
            </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Technology"><ul class="-list">
                <li class="-item"><a href="https://salesforce.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="Salesforce administrators, implementation experts, developers and anybody in-between">Salesforce</a></li>
                <li class="-item"><a href="https://expressionengine.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="administrators, end users, developers and designers for ExpressionEngine&#174; CMS">ExpressionEngine&#174; Answers</a></li>
                <li class="-item"><a href="https://pt.stackoverflow.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="programadores profissionais e entusiastas">Stack Overflow em Portugu&#234;s</a></li>
                <li class="-item"><a href="https://blender.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="people who use Blender to create 3D graphics, animations, or games">Blender</a></li>
                <li class="-item"><a href="https://networkengineering.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="network engineers">Network Engineering</a></li>
                <li class="-item"><a href="https://crypto.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="software developers, mathematicians and others interested in cryptography">Cryptography</a></li>
                <li class="-item"><a href="https://codereview.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="peer programmer code reviews">Code Review</a></li>
            </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Technology"><ul class="-list">
                <li class="-item"><a href="https://magento.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="users of the Magento e-Commerce platform">Magento</a></li>
                <li class="-item"><a href="https://softwarerecs.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="people seeking specific software recommendations">Software Recommendations</a></li>
                <li class="-item"><a href="https://dsp.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="practitioners of the art and science of signal, image and video processing">Signal Processing</a></li>
                <li class="-item"><a href="https://emacs.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="those using, extending or developing Emacs">Emacs</a></li>
                <li class="-item"><a href="https://raspberrypi.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="users and developers of hardware and software for Raspberry Pi">Raspberry Pi</a></li>
                <li class="-item"><a href="https://ru.stackoverflow.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="программистов">Stack Overflow на русском</a></li>
                <li class="-item"><a href="https://codegolf.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="programming puzzle enthusiasts and code golfers">Code Golf</a></li>
            </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Technology"><ul class="-list">
                <li class="-item"><a href="https://es.stackoverflow.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="programadores y profesionales de la inform&#225;tica">Stack Overflow en espa&#241;ol</a></li>
                <li class="-item"><a href="https://ethereum.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="users of Ethereum, the decentralized application platform and smart contract enabled blockchain">Ethereum</a></li>
                <li class="-item"><a href="https://datascience.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="Data science professionals, Machine Learning specialists, and those interested in learning more about the field">Data Science</a></li>
                <li class="-item"><a href="https://arduino.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="developers of open-source hardware and software that is compatible with Arduino">Arduino</a></li>
                <li class="-item"><a href="https://bitcoin.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="Bitcoin crypto-currency enthusiasts">Bitcoin</a></li>
                <li class="-item"><a href="https://sqa.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="software quality control experts, automation engineers, and software testers">Software Quality Assurance &amp; Testing</a></li>
                <li class="-item"><a href="https://sound.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="sound engineers, producers, editors, and enthusiasts">Sound Design</a></li>
            </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Technology"><ul class="-list">
                <li class="-item"><a href="https://windowsphone.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="enthusiasts and power users of Windows Phone OS">Windows Phone</a></li>
                <li class="-item">
                    <a href="https://stackexchange.com/sites#technology" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 26 })">
                        <strong>
                            more (27)
                        </strong>
                    </a>
                </li>
            </ul>
            </div>
                <div class="site-footer--col site-footer--category js-footer-col" data-name="Life / Arts">
                    <ul class="-list">
                        <li class="-item"><a href="https://photo.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="professional, enthusiast and amateur photographers">Photography</a></li>
                        <li class="-item"><a href="https://scifi.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="science fiction and fantasy enthusiasts">Science Fiction &amp; Fantasy</a></li>
                        <li class="-item"><a href="https://graphicdesign.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="Graphic Design professionals, students, and enthusiasts">Graphic Design</a></li>
                        <li class="-item"><a href="https://movies.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="movie and tv enthusiasts">Movies &amp; TV</a></li>
                        <li class="-item"><a href="https://music.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="musicians, students, and enthusiasts">Music: Practice &amp; Theory</a></li>
                        <li class="-item"><a href="https://worldbuilding.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="writers/artists using science, geography and culture to construct imaginary worlds and settings">Worldbuilding</a></li>
                        <li class="-item"><a href="https://video.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="engineers, producers, editors, and enthusiasts spanning the fields of video, and media creation">Video Production</a></li>
                    </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Life / Arts"><ul class="-list">
                <li class="-item"><a href="https://cooking.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="professional and amateur chefs">Seasoned Advice (cooking)</a></li>
                <li class="-item"><a href="https://diy.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="contractors and serious DIYers">Home Improvement</a></li>
                <li class="-item"><a href="https://money.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="people who want to be financially literate">Personal Finance &amp; Money</a></li>
                <li class="-item"><a href="https://academia.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="academics and those enrolled in higher education">Academia</a></li>
                <li class="-item"><a href="https://law.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="legal professionals, students, and others with experience or interest in law">Law</a></li>
                <li class="-item"><a href="https://fitness.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="physical fitness professionals, athletes, trainers, and those providing health-related needs">Physical Fitness</a></li>
                <li class="-item"><a href="https://gardening.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="gardeners and landscapers">Gardening &amp; Landscaping</a></li>
            </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Life / Arts"><ul class="-list">
                <li class="-item"><a href="https://parenting.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="parents, grandparents, nannies and others with a parenting role">Parenting</a></li>
                <li class="-item">
                    <a href="https://stackexchange.com/sites#lifearts" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 26 })">
                        <strong>
                            more (11)
                        </strong>
                    </a>
                </li>
            </ul>
            </div>
                <div class="site-footer--col site-footer--category js-footer-col" data-name="Culture / Recreation">
                    <ul class="-list">
                        <li class="-item"><a href="https://english.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="linguists, etymologists, and serious English language enthusiasts">English Language &amp; Usage</a></li>
                        <li class="-item"><a href="https://skeptics.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="scientific skepticism">Skeptics</a></li>
                        <li class="-item"><a href="https://judaism.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="those who base their lives on Jewish law and tradition and anyone interested in learning more">Mi Yodeya (Judaism)</a></li>
                        <li class="-item"><a href="https://travel.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="road warriors and seasoned travelers">Travel</a></li>
                        <li class="-item"><a href="https://christianity.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="committed Christians, experts in Christianity and those interested in learning more">Christianity</a></li>
                        <li class="-item"><a href="https://ell.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="speakers of other languages learning English">English Language Learners</a></li>
                        <li class="-item"><a href="https://japanese.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="students, teachers, and linguists wanting to discuss the finer points of the Japanese language">Japanese Language</a></li>
                    </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Culture / Recreation"><ul class="-list">
                <li class="-item"><a href="https://chinese.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="students, teachers, and linguists wanting to discuss the finer points of the Chinese language">Chinese Language</a></li>
                <li class="-item"><a href="https://french.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="students, teachers, and linguists wanting to discuss the finer points of the French language">French Language</a></li>
                <li class="-item"><a href="https://german.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="speakers of German wanting to discuss the finer points of the language and translation">German Language</a></li>
                <li class="-item"><a href="https://hermeneutics.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="professors, theologians, and those interested in exegetical analysis of biblical texts">Biblical Hermeneutics</a></li>
                <li class="-item"><a href="https://history.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="historians and history buffs">History</a></li>
                <li class="-item"><a href="https://spanish.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="linguists, teachers, students and Spanish language enthusiasts in general wanting to discuss the finer points of the language">Spanish Language</a></li>
                <li class="-item"><a href="https://islam.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="Muslims, experts in Islam, and those interested in learning more about Islam">Islam</a></li>
            </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Culture / Recreation"><ul class="-list">
                <li class="-item"><a href="https://rus.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="лингвистов и энтузиастов русского языка">Русский язык</a></li>
                <li class="-item"><a href="https://russian.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="students, teachers, and linguists wanting to discuss the finer points of the Russian language">Russian Language</a></li>
                <li class="-item"><a href="https://gaming.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="passionate videogamers on all platforms">Arqade (gaming)</a></li>
                <li class="-item"><a href="https://bicycles.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="people who build and repair bicycles, people who train cycling, or commute on bicycles">Bicycles</a></li>
                <li class="-item"><a href="https://rpg.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="gamemasters and players of tabletop, paper-and-pencil role-playing games">Role-playing Games</a></li>
                <li class="-item"><a href="https://anime.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="anime and manga fans">Anime &amp; Manga</a></li>
                <li class="-item"><a href="https://puzzling.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="those who create, solve, and study puzzles">Puzzling</a></li>
            </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Culture / Recreation"><ul class="-list">
                <li class="-item"><a href="https://mechanics.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="mechanics and DIY enthusiast owners of cars, trucks, and motorcycles">Motor Vehicle Maintenance &amp; Repair</a></li>
                <li class="-item"><a href="https://boardgames.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="people who like playing board games, designing board games or modifying the rules of existing board games">Board &amp; Card Games</a></li>
                <li class="-item"><a href="https://bricks.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="LEGO&#174; and building block enthusiasts">Bricks</a></li>
                <li class="-item"><a href="https://homebrew.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="dedicated home brewers and serious enthusiasts">Homebrewing</a></li>
                <li class="-item"><a href="https://martialarts.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="students and teachers of all martial arts">Martial Arts</a></li>
                <li class="-item"><a href="https://outdoors.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="people who love being outdoors enjoying nature and wilderness, and learning about the required skills and equipment">The Great Outdoors</a></li>
                <li class="-item"><a href="https://poker.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="serious players and enthusiasts of poker">Poker</a></li>
            </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Culture / Recreation"><ul class="-list">
                <li class="-item"><a href="https://chess.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="serious players and enthusiasts of chess">Chess</a></li>
                <li class="-item"><a href="https://sports.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="participants in team and individual sport activities">Sports</a></li>
                <li class="-item">
                    <a href="https://stackexchange.com/sites#culturerecreation" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 26 })">
                        <strong>
                            more (16)
                        </strong>
                    </a>
                </li>
            </ul>
            </div>
                <div class="site-footer--col site-footer--category js-footer-col" data-name="Science">
                    <ul class="-list">
                        <li class="-item"><a href="https://mathoverflow.net" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="professional mathematicians">MathOverflow</a></li>
                        <li class="-item"><a href="https://math.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="people studying math at any level and professionals in related fields">Mathematics</a></li>
                        <li class="-item"><a href="https://stats.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="people interested in statistics, machine learning, data analysis, data mining, and data visualization">Cross Validated (stats)</a></li>
                        <li class="-item"><a href="https://cstheory.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="theoretical computer scientists and researchers in related fields">Theoretical Computer Science</a></li>
                        <li class="-item"><a href="https://physics.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="active researchers, academics and students of physics">Physics</a></li>
                        <li class="-item"><a href="https://chemistry.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="scientists, academics, teachers, and students in the field of chemistry">Chemistry</a></li>
                        <li class="-item"><a href="https://biology.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="biology researchers, academics, and students">Biology</a></li>
                    </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Science"><ul class="-list">
                <li class="-item"><a href="https://cs.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="students, researchers and practitioners of computer science">Computer Science</a></li>
                <li class="-item"><a href="https://philosophy.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="those interested in the study of the fundamental nature of knowledge, reality, and existence">Philosophy</a></li>
                <li class="-item"><a href="https://linguistics.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="professional linguists and others with an interest in linguistic research and theory">Linguistics</a></li>
                <li class="-item"><a href="https://psychology.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="practitioners, researchers, and students in cognitive science, psychology, neuroscience, and psychiatry">Psychology &amp; Neuroscience</a></li>
                <li class="-item"><a href="https://scicomp.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="scientists using computers to solve scientific problems">Computational Science</a></li>
                <li class="-item">
                    <a href="https://stackexchange.com/sites#science" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 26 })">
                        <strong>
                            more (8)
                        </strong>
                    </a>
                </li>
            </ul>
            </div>
                <div class="site-footer--col site-footer--category js-footer-col" data-name="Other">
                    <ul class="-list">
                        <li class="-item"><a href="https://meta.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="meta-discussion of the Stack Exchange family of Q&amp;A websites">Meta Stack Exchange</a></li>
                        <li class="-item"><a href="https://stackapps.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="apps, scripts, and development with the Stack Exchange API">Stack Apps</a></li>
                        <li class="-item"><a href="https://api.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="programmatic interaction with Stack Exchange sites">API</a></li>
                        <li class="-item"><a href="https://data.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="querying Stack Exchange data using SQL">Data</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="site-footer--copyright fs-fine">
            <ul class="-list">
                <li class="-item"><a class="js-gps-track -link" data-gps-track="footer.click({ location: 2, link:4 })" href="https://stackoverflow.blog?blb=1">Blog</a></li>
                <li class="-item"><a href="https://www.facebook.com/officialstackoverflow/" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 31 })">Facebook</a></li>
                <li class="-item"><a href="https://twitter.com/stackoverflow" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 32 })">Twitter</a></li>
                <li class="-item"><a href="https://linkedin.com/company/stack-overflow" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 33 })">LinkedIn</a></li>
            </ul>

            <p class="mt-auto mb24">
                site design / logo &#169; 2019 Stack Exchange Inc; user contributions licensed under <a href="https://creativecommons.org/licenses/by-sa/4.0/" class="js-gps-track" data-gps-track="footer.click({ location: 2, link: 34 })" rel="license">cc by-sa 4.0</a>
                with <a href="https://stackoverflow.blog/2009/06/25/attribution-required/"  class="js-gps-track" data-gps-track="footer.click({ location: 2, link:35 })" rel="license">attribution required</a>.
                <span id="svnrev">rev&nbsp;2019.12.20.35703</span>
            </p>
        </div>
    </div>

</footer>
<script>StackExchange.ready(function () { StackExchange.responsiveness.addSwitcher(); })</script>
<noscript>
    <div id="noscript-warning">Stack Overflow works best with JavaScript enabled
        <img src="https://pixel.quantserve.com/pixel/p-c1rF4kxgLUzNc.gif" alt="" class="dno">
    </div>
</noscript>

<script>
    (function(i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function() { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m);
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

    StackExchange.ready(function () {

        StackExchange.ga.init({
            sendTitles: true,
            tracker: window.ga,
            trackingCodes: [
                'UA-108242619-1'
            ],
            checkDimension: 'dimension42'
        });

        StackExchange.ga.setDimension('dimension1', '10877520');

        StackExchange.ga.setDimension('dimension10', 'PassivelyLooking');

        StackExchange.ga.setDimension('dimension2', '|html|spring|spring-boot|thymeleaf|');

        StackExchange.ga.setDimension('dimension3', 'Questions/Show');


        StackExchange.ga.trackPageView();
    });

    /**/

    var _qevents = _qevents || [],
        _comscore = _comscore || [];
    (function() {
        var ssl = 'https:' == document.location.protocol,
            s = document.getElementsByTagName('script')[0],
            qc = document.createElement('script');
        qc.async = true;
        qc.src = (ssl ? 'https://secure' : 'http://edge') + '.quantserve.com/quant.js';
        s.parentNode.insertBefore(qc, s);
        _qevents.push({ qacct: "p-c1rF4kxgLUzNc" });
        /**/
        var sc = document.createElement('script');
        sc.async = true;
        sc.src = (ssl ? 'https://sb' : 'http://b') + '.scorecardresearch.com/beacon.js';
        s.parentNode.insertBefore(sc, s);
        _comscore.push({ c1: "2", c2: "17440561" });
    })();


</script>

</body>
</html>
