defmodule ParserTest do
  use ExUnit.Case
  alias Scrape.Parser

  test "it returns an array of three" do
    top_three = Parser.get_reviews(ten_reviews())

    assert length(top_three) == 3
  end

  test "it returns them in order of fakeness" do
    [head | tail] = Parser.get_reviews(ten_reviews())
    [_next_head | last] = tail

    assert get_username(head) == "- awhite211"
    assert get_username(last) == "- je7255"
  end


  defp get_username(review) do
    Floki.find(review, ".margin-bottom-sm, .line-height-150")
    |> Floki.find("span")
    |> Floki.text()
  end


  def ten_reviews do
    [
      {:comment,
       "[if lt IE 7]>      <html class=\"no-js lt-ie9 lt-ie8 lt-ie7\"> <![endif]"},
      {:comment,
       "[if IE 7]>         <html class=\"no-js lt-ie9 lt-ie8\"> <![endif]"},
      {:comment, "[if IE 8]>         <html class=\"no-js lt-ie9\"> <![endif]"},
      {:comment, "[if gt IE 8]><!"},
      {"html", [{"class", "no-js"}],
       [
         {:comment, "<![endif]"},
         {"head", [{"prefix", "og: http://ogp.me/ns#"}],
          [
            {"meta", [{"charset", "utf-8"}], []},
            {"meta",
             [{"http-equiv", "X-UA-Compatible"}, {"content", "IE=edge,chrome=1"}],
             []},
            {"title", [{"class", "notranslate"}],
             ["McKaig Chevrolet Buick - A Dealer For The People - Chevrolet, Buick, Used Car Dealer, Service Center - Dealership Reviews | Page 164"]},
            {"meta",
             [
               {"name", "description"},
               {"class", "notranslate"},
               {"content",
                "Read 1641 Reviews of McKaig Chevrolet Buick - A Dealer For The People - Chevrolet, Buick, Used Car Dealer, Service Center dealership reviews written by real people like you. | Page 164"}
             ], []},
            {"meta",
             [
               {"name", "keywords"},
               {"class", "notranslate"},
               {"content",
                "McKaig Chevrolet Buick - A Dealer For The People reviews, Chevrolet, Buick, Used Car Dealer, Service Center, Gladewater, TX, 75647, dealer reviews, car dealership reviews"} 
             ], []},
            {"meta",
             [
               {"name", "viewport"},
               {"content",
                "initial-scale=1.0001, minimum-scale=1.0001, maximum-scale=1.0001, user-scalable=no, width=device-width"}
             ], []},
            {"meta",
             [
               {"property", "og:image"},
               {"content",
                "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/locales/en-US/logo_dealerrater_fb_200x200.jpg"}
             ], []},
            {:comment, " Adobe Analytics header "},
            {"script",
             [
               {"src",
                "//assets.adobedtm.com/launch-ENca0e03f0c5ed477c922a5b019999f81d.min.js"},
               {"async", "async"}
             ], [""]},
            {:comment, " Start Optimizely "},
            {"script", [{"type", "text/javascript"}],
             ["\r\n        window.optimizely = window.optimizely || [];\r\n        window.optimizely.push({type: \"holdEvents\"});\r\n    "]},
            {"script", [{"src", "//cdn.optimizely.com/js/11109425851.js"}], [""]},
            {:comment, " End Optimizely "},
            {"link",
             [
               {"href",
                "https://www.dealerrater.com/ncdn/bundle/s/149.20190919.1/ResponsiveStylesBundle.bundle?v=Ae-441o9xDWAryGr_HiRM8dJBrkjdJpqSIvsg6j_ryk1"},
               {"rel", "stylesheet"}
             ], []},
            {"script",
             [
               {"src",
                "https://www.dealerrater.com/ncdn/bundle/s/149.20190919.1/HeadScriptBundle.bundle?v=h3_SfEcl0mU94cCFb4m_sddpIstTBNk8dFcesGUxQ8A1"}
             ], [""]},
            {"script", [{"type", "text/javascript"}],
             ["\n(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){\n(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\nm=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n})(window,document,'script','//www.google-analytics.com/analytics.js','ga');\n\nga('create', 'UA-87014-1', 'dealerrater.com');\nga('set', 'dimension2', '23685');\n\nga('send', 'pageview');\n\nif (window.optimizely && typeof window.optimizely.get === 'function' && window.optimizely.get('custom/gaIntegrator')) {\nwindow.optimizely.push({ type: 'sendEvents'});\nwindow.optimizely.get('custom/gaIntegrator').gaDispatch(window.ga);\n}\n\n  function recordEvent(category, action, label, value, noninteraction) {\n     ga('send', 'event', category, action, label, value, {'nonInteraction' : noninteraction});\n  }\n"]},
            {:comment, " Google Tag Manager "},
            {"script", [],
             ["(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':\r\nnew Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=\r\n'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,'script','dataLayer','GTM-T746MC');"]},
            {:comment, " End Google Tag Manager "},
            {"script", [{"type", "text/javascript"}],
             ["\ndigitalData = {}; \ndigitalData.page ={\npageInfo:{\n \"pageName\" : \"Dealer Reviews Page\", \"siteSection1\" : \"Dealer Reviews\",}}; \n\n"]},
            {:comment,
             "[if lt IE 9]>\r\n    <script src=\"//cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv.min.js\"></script>\r\n    <script src=\"//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js\"></script>\r\n    <![endif]"},
            {"link",
             [
               {"rel", "icon"},
               {"href",
                "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/favicon.ico"}
             ], []},
            {"link",
             [
               {"rel", "canonical"}, 
               {"href",
                "https://www.dealerrater.com/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/page164/"}
             ], []},
            {"link",
             [
               {"rel", "prev"},
               {"href",
                "https://www.dealerrater.com/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/page163/"}
             ], []},
            {"link",
             [
               {"rel", "next"},
               {"href",
                "https://www.dealerrater.com/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/page165/"}
             ], []},
            {"script", [{"type", "text/javascript"}],
             ["\r\n        /* <![CDATA[ */\r\n        var google_conversion_id = 1068898459;\r\n        var google_custom_params = window.google_tag_params;\r\n        var google_remarketing_only = true;\r\n        /* ]]> */\r\n    "]},
            {"script",
             [
               {"type", "text/javascript"},
               {"src", "//www.googleadservices.com/pagead/conversion.js"}
             ], [""]},
            {"script",
             [
               {"src", "https://s.yimg.com/uv/dm/scripts/syndication.js"},
               {"async", "async"}
             ], [""]},
            {"style", [],
             ["\r\n        #ypaAdWrapper-dealrater iframe {\r\n            width: 100%;\r\n        }\r\n    "]},
            {"noscript", [],
             [
               {"div", [{"style", "display:inline;"}],
                [
                  {"img",
                   [
                     {"height", "1"},
                     {"width", "1"},
                     {"style", "border-style:none;"},
                     {"alt", ""},
                     {"src",
                      "//googleads.g.doubleclick.net/pagead/viewthroughconversion/1068898459/?value=0&guid=ON&script=0"}
                   ], []}
                ]}
             ]}
          ]},
         {"body", [],
          [
            {:comment, " Google Tag Manager (noscript) "}, 
            {"noscript", [],
             [
               {"iframe",
                [
                  {"src", "https://www.googletagmanager.com/ns.html?id=GTM-T746MC"},
                  {"height", "0"},
                  {"width", "0"},
                  {"style", "display:none;visibility:hidden"}
                ], []}
             ]},
            {:comment, " End Google Tag Manager (noscript) "},
            {"div", [{"id", "appUI"}],
             [
               {:comment, " LEFT CONTAINER "},
               {"div", [{"id", "leftContainer"}],
                [
                  {"div", [{"class", "text-center margin-top-lg"}],
                   [
                     {"div", [{"class", "text-left inline-block"}],
                      [
                        {"div", [{"class", "mobile-nav-option active"}],
                         [
                           {"a",
                            [
                              {"onclick",
                               "recordEvent('Global-Header', 'dealer-reviews_click', location.href, null, false);"},
                              {"href", "http://www.dealerrater.com/reviews"},
                              {"title", "Dealer Reviews"},
                              {"class", ""}
                            ], ["Dealer Reviews"]},
                           {"p", [], ["Find the best dealership for you."]}
                         ]},
                        {"div", [{"class", "mobile-nav-option "}],
                         [
                           {"a",
                            [
                              {"onclick",
                               "recordEvent('Global-Header', 'service-reviews_click', location.href, null, false);"},
                              {"href", "http://www.dealerrater.com/service"},
                              {"title", "Service Reviews"},
                              {"class", ""}
                            ], ["Service Reviews"]},
                           {"p", [], ["Find good folks to fix your car.  "]}
                         ]},
                        {"div", [{"class", "mobile-nav-option "}],
                         [
                           {"a",
                            [
                              {"onclick",
                               "recordEvent('Global-Header', 'cars-for-sale_click', location.href, null, false);"},
                              {"class", ""},
                              {"href", "http://www.dealerrater.com/classifieds"},
                              {"title", "Cars for Sale"}
                            ], ["Cars for Sale"]},
                           {"p", [], ["Find the right car for you."]}
                         ]},
                        {"div", [{"class", "mobile-nav-option "}],
                         [
                           {"a",
                            [
                              {"onclick", 
                               "recordEvent('Global-Header', 'car-recalls_click', location.href, null, false);"},
                              {"class", ""},
                              {"href", "http://www.dealerrater.com/recalls"},
                              {"title", "Car Recalls"}
                            ], ["Car Recalls"]},
                           {"p", [], ["Make sure your car is safe to drive."]}
                         ]},
                        {"div", [{"class", "margin-bottom-lg pull-left clear-fix"}],
                         [
                           {"a",
                            [
                              {"onclick",
                               "recordEvent('Global-Header', 'write-review_click', location.href, null, false);"},
                              {"class", "primary-button teal"},
                              {"href", "/consumer/writereviews/search"},
                              {"title", "Write a Review"}
                            ], ["Write a Review"]}
                         ]}
                      ]}
                   ]},
                  {"div",
                   [
                     {"class",
                      "col-xs-12 bg-grey-md pad-top-lg pad-bottom-lg text-center margin-top-sm mobile-nav-bottom"}
                   ],
                   [
                     {"a",
                      [
                        {"class",
                         "font-14 uppercase white pad-right-lg border-right"},
                        {"href",
                         "https://www.dealerrater.com/register/?ReturnUrl=https%3a%2f%2fwww.dealerrater.com%2fconsumer%2fdealer%2f23685%2freviewsnew%3fpage%3d164%26filter%3dALL_REVIEWS"},
                        {"title", "Join"}
                      ], ["Join"]},
                     {"a",
                      [
                        {"class",
                         "font-14 uppercase white pad-left-lg pad-right-lg"},
                        {"href",
                         "https://www.dealerrater.com/login/?ReturnUrl=https%3a%2f%2fwww.dealerrater.com%2fconsumer%2fdealer%2f23685%2freviewsnew%3fpage%3d164%26filter%3dALL_REVIEWS"},
                        {"title", "Sign In"}
                      ], ["Sign In"]},
                     {"a",
                      [
                        {"class", "font-14 uppercase white pad-left-lg border-left"},
                        {"href", "/dealers"},
                        {"title", "Dealer Panel"}
                      ], ["Dealer Panel"]}
                   ]}
                ]},
               {:comment, " MAIN CONTAINER "},
               {"div", [{"id", "mainContainer"}, {"class", "bg-grey-lt"}],
                [
                  {:comment, " PUSH DOWN NOTICE "},
                  {"div", [{"id", "locationAlertBar"}, {"class", "display-none"}],
                   [
                     {"div",
                      [
                        {"id", "pushdownNotice"},
                        {"class",
                         "hidden-xs bg-lt-blue text-center font-16 box-shadow-bottom"}
                      ],
                      [
                        {"p",
                         [
                           {"id", "locationPromptText"},
                           {"class", "pad-lg margin-none"}
                         ], []},
                        {"a",
                         [
                           {"id", "pushdownNoticeClose"},
                           {"class", "absolute-right top-5 pointer"},
                           {"role", "button"}
                         ],
                         [
                           {"img",
                            [
                              {"alt", "Close"},
                              {"height", "26"},
                              {"src",
                               "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_close_x.png"},
                              {"width", "31"}
                            ], []}
                         ]}
                      ]},
                     {:comment,
                      " Place holder div to push the remaining contents below the localization prompt "},
                     {"div",
                      [
                        {"id", "pushDownNoticePlaceHolder"},
                        {"style", "height: 60px;"}
                      ], []}
                   ]},
                  {:comment, " HEADER "},
                  {"header", [{"class", "fill-width margin-none pad-none "}],
                   [
                     {:comment, " mobile nav "},
                     {"div",
                      [
                        {"id", "mobileNavContainer"},
                        {"class", "col-xs-12 margin-none pad-none fill-height"}
                      ],
                      [
                        {:comment, " Progress Tracker "},
                        {:comment, " mobile nav toggle "},
                        {"div",
                         [{"id", "mobileNavHeader"}, {"class", "fill-height"}],
                         [
                           {"div", [{"class", "table width-100 fill-height"}],
                            [
                              {"div",
                               [
                                 {"class",
                                  "td valign-middle mobile-nav-td text-right"}
                               ],
                               [
                                 {"span",
                                  [
                                    {"id", "hamburgerButton"},
                                    {"class",
                                     " glyphicon hamburgerWrapper header-icon pointer"}
                                  ],
                                  [ 
                                    {"button",
                                     [
                                       {"id", "hamburger"},
                                       {"class",
                                        "hamburger hamburger--spring orange-lt"},
                                       {"type", "button"}
                                     ],
                                     [
                                       {"span", [{"class", "hamburger-box"}],
                                        [
                                          {"span", [{"class", "hamburger-inner"}],
                                           []}
                                        ]}
                                     ]}
                                  ]},
                                 {"span",
                                  [
                                    {"id", "mobile-back"},
                                    {"class",
                                     "header-icon glyphicon glyphicon-arrow-left orange-lt font-24 pointer"}
                                  ], []}
                               ]},
                              {"div", [{"class", "td valign-middle text-center"}],
                               [
                                 {:comment, " logo "},
                                 {"a", [{"href", "http://www.dealerrater.com/"}],
                                  [
                                    {"img",
                                     [
                                       {"class", "logo-sm"},
                                       {"height", "20"},
                                       {"src",
                                        "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/dr-logo-horizontal.png"}
                                     ], []}
                                  ]}
                               ]},
                              {"div",
                               [
                                 {"class",
                                  "td valign-middle mobile-nav-td text-left"},
                                 {"id", "searchContainer"}
                               ],
                               [
                                 {"img",
                                  [
                                    {"class", "pointer header-search-icon"},
                                    {"id", "searchToggle"},
                                    {"src",
                                     "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-search-orange.png"}
                                  ], []}
                               ]}
                            ]}
                         ]}
                      ]},
                     {:comment, " primary nav "},
                     {"div", [{"id", "primaryNavContainer"}, {"class", ""}],
                      [
                        {"div",
                         [{"id", "userHeader"}, {"class", "col-xs-12 margin-none "}],
                         [
                           {"div", [{"class", "header-wrapper relative"}],
                            [
                              {"div",
                               [{"class", "pull-right"}, {"id", "userHeaderRight"}],
                               [
                                 {"div", [{"id", "userHeaderRightContent"}],
                                  [
                                    {"a", [{"href", "/dealers"}], ["Dealer Panel"]},
                                    {"div", [{"class", "pull-right text-right"}],
                                     [
                                       {"a",
                                        [
                                          {"title", "Sign In"},
                                          {"href",
                                           "https://www.dealerrater.com/login/?ReturnUrl=https%3a%2f%2fwww.dealerrater.com%2fconsumer%2fdealer%2f23685%2freviewsnew%3fpage%3d164%26filter%3dALL_REVIEWS"}
                                        ],
                                        [
                                          {"img",
                                           [
                                             {"class", "margin -right-sm"},
                                             {"src",
                                              "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_user_white.png"},
                                             {"width", "20"}
                                           ], []},
                                          " Sign In"
                                        ]},
                                       {"span", [{"class", "link-divider"}], []},
                                       {"a",
                                        [
                                          {"title", "Join"},
                                          {"href",
                                           "https://www.dealerrater.com/register/?ReturnUrl=https%3a%2f%2fwww.dealerrater.com%2fconsumer%2fdealer%2f23685%2freviewsnew%3fpage%3d164%26filter%3dALL_REVIEWS"}
                                        ], ["Join"]}
                                     ]}
                                  ]}
                               ]},
                              {"div",
                               [
                                 {"id", "userHeaderMenu"},
                                 {"class",
                                  "hidden text-left pad-left-lg pad-top-md pad-bottom-md"}
                               ],
                               [
                                 {"a",
                                  [
                                    {"title", "Reviews"},
                                    {"href", "/consumer/account/reviews"},
                                    {"class", "block"}
                                  ], ["Reviews"]},
                                 {"a",
                                  [
                                    {"title", "Profile"},
                                    {"href", "/consumer/account/profile"},
                                    {"class", "block"}
                                  ], ["Profile"]},
                                 {"a",
                                  [
                                    {"title", "Settings"},
                                    {"href", "/consumer/account/profile"},
                                    {"class", "block"}
                                  ], ["Settings"]},
                                 {"a",
                                  [
                                    {"title", "Sign Out"},
                                    {"href",
                                     "https://www.dealerrater.com/logout.aspx?ReturnUrl=https%3a%2f%2fwww.dealerrater.com%2fconsumer%2fdealer%2f23685%2freviewsnew%3fpage%3d164%26filter%3dALL_REVIEWS"},
                                    {"class", "block"}
                                  ], ["Sign Out"]}
                               ]}
                            ]}
                         ]},
                        {:comment, " primary nav "},
                        {"div",
                         [
                           {"id", "navWrapperHeader"},
                           {"class", "col-xs-12 fill-height bg-white"}
                         ],
                         [
                           {"div", [{"class", "header-wrapper"}],
                            [
                              {"div",
                               [
                                 {"class",
                                  "col-xs-12 margin-none padding-none pad-right-none fill-height logo-container pad-left-none"}
                               ],
                               [
                                 {:comment, " logo "},
                                 {"div",
                                  [
                                    {"class", "pull-left pad-sm pad-left-none"},
                                    {"id", "logoWrapper"}
                                  ],
                                  [
                                    {"a",
                                     [
                                       {"href", "http://www.dealerrater.com/"},
                                       {"class", "pad-top-md pad-bottom-md block"}
                                     ],
                                     [
                                       {"img",
                                        [
                                          {"height", "87"},
                                          {"src",
                                           "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/locales/en-US/logo_dealerrater_updated.png"}
                                        ], []}
                                     ]}
                                  ]},
                                 {"div",
                                  [
                                    {"id", "switcherWrapper"},
                                    {"class", "pull-right fill-height relative "}
                                  ],
                                  [
                                    {"div",
                                     [{"class", "table fill-height pad-top-sm"}],
                                     [
                                       {"div", [{"class", "tr "}],
                                        [
                                          {"div",
                                           [
                                             {"class",
                                              "td text-right fill-height nav-text-bar"}
                                           ],
                                           [
                                             {"div",
                                              [
                                                {"class",
                                                 "inline-block pad-left-sm margin-top-mdlg relative"}
                                              ],
                                              [
                                                {"input",
                                                 [
                                                   {"type", "text"},
                                                   {"class",
                                                    "input-sm search-input border header-search-input"},
                                                   {"id", "headerAutoComplete"},
                                                   {"autocomplete", "off"},
                                                   {"placeholder", "Search"}
                                                 ], []},
                                                {"a",
                                                 [
                                                   {"href", "#"},
                                                   {"onclick",
                                                    "location.href = '/search/?q=' + escape($('.header-search-input').val().trim());"}
                                                 ],
                                                 [
                                                   {"img",
                                                    [
                                                      {"alt", "Search"},
                                                      {"class",
                                                       "header-search-submit absolute"},
                                                      {"height", "17"},
                                                      {"src",
                                                       "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_search_gray.png"}
                                                    ], []}
                                                 ]}
                                              ]}
                                           ]}
                                        ]},
                                       {"div", [{"class", "tr"}],
                                        [
                                          {"div",
                                           [
                                             {"id", "primaryNavTabsContainer"},
                                             {"class",
                                              " td text-right fill-height pull-right margin-right-none"}
                                           ],
                                           [
                                             {:comment, " primary nav option "},
                                             {"div",
                                              [
                                                {"class",
                                                 "inline-block primary-nav-option relative"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "quick-menu-tab pad-left-none"}
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "http://www.dealerrater.com/reviews/"},
                                                      {"onclick",
                                                       "recordEvent('Global-Header', 'dealer-reviews_click', location.href, null, false);"},
                                                      {"title", "Dealer Reviews"},
                                                      {"class", "bold active"}
                                                    ], ["Dealer Reviews"]}
                                                 ]}
                                              ]},
                                             {:comment, " primary nav option "},
                                             {"div",
                                              [
                                                {"class",
                                                 "inline-block primary-nav-option relative"}
                                              ],
                                              [
                                                {"div",
                                                 [{"class", "quick-menu-tab"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "http://www.dealerrater.com/service/"},
                                                      {"onclick",
                                                       "recordEvent('Global-Header', 'service-reviews_click', location.href, null, false);"},
                                                      {"title", "Service Reviews"},
                                                      {"class", "bold black"}
                                                    ], ["Service Reviews"]}
                                                 ]}
                                              ]},
                                             {:comment, " primary nav option "},
                                             {"div", 
                                              [
                                                {"class",
                                                 "inline-block primary-nav-option relative"}
                                              ],
                                              [
                                                {"div",
                                                 [{"class", "quick-menu-tab"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"class", "bold black"},
                                                      {"onclick",
                                                       "recordEvent('Global-Header', 'cars-for-sale_click', location.href, null, false);"},
                                                      {"href",
                                                       "http://www.dealerrater.com/classifieds/"},
                                                      {"title", "Cars for Sale"}
                                                    ], ["Cars for Sale"]}
                                                 ]}
                                              ]},
                                             {:comment, " primary nav option "},
                                             {"div",
                                              [
                                                {"class",
                                                 "inline-block primary-nav-option relative"}
                                              ],
                                              [
                                                {"div",
                                                 [{"class", "quick-menu-tab"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"class", "bold black"},
                                                      {"onclick",
                                                       "recordEvent('Global-Header', 'car-recalls_click', location.href, null, false);"},
                                                      {"href",
                                                       "http://www.dealerrater.com/recalls/"},
                                                      {"title", "Car Recalls"}
                                                    ], ["Car Recalls"]}
                                                 ]}
                                              ]},
                                             {"div",
                                              [
                                                {"class",
                                                 "inline-block primary-nav-option war"}
                                              ],
                                              [
                                                {"div",
                                                 [{"class", "quick-menu-tab"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"class", "black boldest"},
                                                      {"onclick",
                                                       "recordEvent('Global-Header', 'write-review_click', location.href, null, false);"},
                                                      {"href",
                                                       "/consumer/writereviews/search"},
                                                      {"title", "Write a Review"}
                                                    ], ["Write a Review"]}
                                                 ]}
                                              ]}
                                           ]}
                                        ]}
                                     ]}
                                  ]}
                               ]}
                            ]}
                         ]}
                      ]}
                   ]},
                  {"div",
                   [
                     {"id", "mobileSearch"},
                     {"class", "col-xs-12 bg-grey-lt border-top border-bottom"}
                   ],
                   [
                     {"input",
                      [
                        {"type", "text"},
                        {"class",
                         "search-input border header-mobile-search-input fill-width pad-sm font-16"},
                        {"id", "mobileAutoComplete"},
                        {"autocomplete", "off"},
                        {"placeholder", "Search"}
                      ], []},
                     {"a",
                      [
                        {"href", "#"},
                        {"onclick",
                         "location.href = '/search/?q=' + escape($('.header-mobile-search-input').val().trim());"}
                      ],
                      [
                        {"img",
                         [
                           {"alt", "Search"},
                           {"class", "header-mobile-search-submit absolute"},
                           {"height", "17"},
                           {"src",
                            "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_search_gray.png"}
                         ], []}
                      ]}
                   ]},
                  {:comment, " CONTENT "},
                  {"content", [{"class", "fill-width fill-height"}],
                   [
                     {"div",
                      [
                        {"id", "contentInner"},
                        {"class", "fill-width bg-grey-lt clear-fix"}
                      ],
                      [
                        {"div",
                         [
                           {"class", "block clear-fix pad-top-lg"},
                           {"id", "pageContainer"}
                         ],
                         [
                           {"div",
                            [
                              {"class",
                               "section-container pad-none pad-bottom-lg clear-fix text-left col-xs-12"},
                              {"id", "reviewsSection"}
                            ],
                            [
                              {"div",
                               [{"id", "overview"}, {"class", "col-xs-12 pad-none"}],
                               [
                                 {"a",
                                  [
                                    {"href", "#"},
                                    {"id", "mobileBack"},
                                    {"class",
                                     "pull-left secondary-button teal margin-top-md margin-bottom-mdlg"},
                                    {"onclick", "toggleMobilePage()"},
                                    {"style", "display: none !important;"}
                                  ],
                                  [
                                    {"span",
                                     [{"class", "glyphicon glyphicon-arrow-left"}],
                                     []},
                                    " Back"
                                  ]},
                                 {:comment, " PERSISTENT NAV "},
                                 {"div",
                                  [
                                    {"class",
                                     "width-100 bg-grey-lt-md box-shadow-bottom-extra-lt display-none"},
                                    {"id", "persistentNav"}
                                  ],
                                  [
                                    {"div", [{"class", "persistentNavWrapper"}],
                                     [
                                       {"div",
                                        [
                                          {"class", "col-xs-12 hidden-xs"},
                                          {"style", "line-height: 64px;"}
                                        ],
                                        [
                                          {"span",
                                           [
                                             {"class",
                                              "font-28 bolder pull-left pad-left-sm line-height-125 pad-top-md notranslate black"}
                                           ],
                                           ["McKaig Chevrolet Buick - A Dealer For The People"]},
                                          {"div",
                                           [
                                             {"class",
                                              "clear-fix wide-layout line-height-1 text-center"}
                                           ],
                                           [
                                             {"div", [],
                                              [
                                                {"a",
                                                 [
                                                   {"href",
                                                    "/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-review-23685/"}, 
                                                   {"onclick",
                                                    "recordEvent('Dealer-Profile', 'Persistent_Overview_click', '23685', null, false);"},
                                                   {"class",
                                                    "black bolder font-14 letter-spacing-1 uppercase margin-right-xl inline-block pad-top-lg pad-left-lg pad-right-lg pad-bottom-md"}
                                                 ], ["Overview"]},
                                                {"a",
                                                 [
                                                   {"href",
                                                    "/sales/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-Employees-23685/#link"},
                                                   {"onclick",
                                                    "recordEvent('Dealer-Profile', 'Persistent_Employees_click', '23685', null, false);"},
                                                   {"class",
                                                    " black bolder font-14 margin-right-xl letter-spacing-1 uppercase inline-block pad-top-lg pad-bottom-md pad-left-lg pad-right-lg"}
                                                 ], ["Employees"]},
                                                {"a",
                                                 [
                                                   {"href",
                                                    "/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/#link"},
                                                   {"onclick",
                                                    "recordEvent('Dealer-Profile', 'Persistent_Reviews_click', '23685', null, false);"},
                                                   {"class",
                                                    "active black bolder font-14 margin-right-xl letter-spacing-1 uppercase inline-block pad-top-lg pad-bottom-md pad-left-lg pad-right-lg"}
                                                 ], ["Reviews (1641)"]},
                                                {"a",
                                                 [
                                                   {"href",
                                                    "/classifieds/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-cars-23685/"},
                                                   {"onclick",
                                                    "recordEvent('Dealer-Profile', 'Persistent_Inventory_click', '23685', null, false);"},
                                                   {"class",
                                                    " black bolder font-14 letter-spacing-1 uppercase inline-block pad-top-lg pad-bottom-md pad-left-lg pad-right-lg"}
                                                 ], ["Inventory (153)"]}
                                              ]}
                                           ]}
                                        ]}
                                     ]}
                                  ]},
                                 {"div",
                                  [
                                    {"class",
                                     "col-xs-12 pad-none mobile-hide text-center"}
                                  ],
                                  [
                                    {"div",
                                     [
                                       {"class",
                                        "col-xs-12 pad-md pad-top-none overview-section"}
                                     ],
                                     [
                                       {"a", 
                                        [
                                          {"href",
                                           "/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-review-23685/"},
                                          {"class",
                                           " no-wrap relative overview-nav-link-teal pull-left ctaLink"},
                                          {"id", "dealerLink"}
                                        ],
                                        [
                                          {"span", [{"class", "notranslate"}],
                                           [
                                             {"img",
                                              [
                                                {"class", "valign-bottom"},
                                                {"src",
                                                 "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-dealer-car-white.png"}
                                              ], []}
                                           ]},
                                          {"span", [], ["Dealership"]}
                                        ]},
                                       {"a",
                                        [
                                          {"href",
                                           "/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-service-23685/"},
                                          {"onclick",
                                           "recordEvent('Dealer-Profile', 'Service-Center-tab_click', '23685', null, false);"},
                                          {"class",
                                           " relative overview-nav-link pull-left ctaLink"},
                                          {"id", "serviceLink"}
                                        ],
                                        [
                                          {"span", [{"class", "notranslate"}],
                                           [
                                             {"img",
                                              [
                                                {"class",
                                                 "wrench-icon valign-bottom"},
                                                {"src",
                                                 "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-service-wrench-teal.png"}
                                              ], []}
                                           ]},
                                          {"span", [{"class", "service-btn-text"}],
                                           [" Service Center"]}
                                        ]},
                                       {"a",
                                        [
                                          {"href",
                                           "/consumer/writereviews/23685?source=drp"},
                                          {"class",
                                           "primary-button orange pull-right ctaLink"}
                                        ],
                                        [
                                          {"span", [{"class", "notranslate"}],
                                           [
                                             {"img",
                                              [
                                                {"class",
                                                 "valign-bottom star-icon display-none"},
                                                {"src",
                                                 "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-star-white.png"}
                                              ], []}
                                           ]},
                                          {"span", [{"class", "review-btn-text"}],
                                           ["Write a review"]}
                                        ]}
                                     ]},
                                    {"div",
                                     [{"class", "col-xs-12 pad-none margin-top-md"}],
                                     [
                                       {"div",
                                        [
                                          {"class",
                                           "col-xs-12 col-sm-9 pad-none pad-bottom-md"}
                                        ],
                                        [
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 text-left pad-left-md"}
                                           ],
                                           [
                                             {:comment,
                                              " certified badge, show nothing if not certified "},
                                             {"div",
                                              [
                                                {"class",
                                                 "pull-left pad-right-mdlg pad-bottom-md relative"},
                                                {"id", "badge"}
                                              ],
                                              [
                                                {"img",
                                                 [
                                                   {"class",
                                                    "badge-tooltip pointer"},
                                                   {"src",
                                                    "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/badge-certified-dealer.png"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "absolute pad-sm font-12 bold display-none"},
                                                   {"id", "badge-tooltip"}
                                                 ],
                                                 ["This dealership is a DealerRater® Certified Dealer and is committed to providing quality customer service."]}
                                              ]},
                                             {:comment, " end badge "},
                                             {"div",
                                              [
                                                {"class",
                                                 "overflow-auto dealer-info"}
                                              ],
                                              [
                                                {"h1",
                                                 [
                                                   {"class",
                                                    "h1-header margin-top-md notranslate"},
                                                   {"id", "dealerName"}
                                                 ],
                                                 ["McKaig Chevrolet Buick - A Dealer For The People"]},
                                                {:comment, " mobile rating"},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "pull-left margin-top-sm margin-bottom-sm visible-xs"}
                                                 ],
                                                 [
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "rating-static rating-49 margin-top-none pull-right margin-right-none"}
                                                    ], []},
                                                   {"span",
                                                    [
                                                      {"class",
                                                       "pull-right font-22 bolder lt-grey pad-right-md border-right margin-right-md line-height-1"}
                                                    ], ["4.9"]}
                                                 ]},
                                                {"p",
                                                 [
                                                   {"class",
                                                    "visible-xs font-16 italic margin-none width-100 pull-left"}
                                                 ], ["1,641 Lifetime Reviews"]},
                                                {:comment, " end mobile rating"},
                                                {"span",
                                                 [
                                                   {"class",
                                                    "black font-16 notranslate"},
                                                   {"id", "dealerAddress"}
                                                 ],
                                                 [ 
                                                   {"span", [],
                                                    ["1110 E Broadway Ave (US 80 @ E Loop 485)"]},
                                                   ", \r\n\r\n                        ",
                                                   {"a",
                                                    [
                                                      {"class", "black"},
                                                      {"title",
                                                       "Chevrolet Dealers near Gladewater, TX"},
                                                      {"href", 
                                                       "/directory/75647/Chevrolet/"}
                                                    ],
                                                    [
                                                      {"span", [], ["Gladewater"]},
                                                      ", ",
                                                      {"span", [], ["Texas"]},
                                                      {"span", [], ["75647"]}
                                                    ]}
                                                 ]},
                                                {"a",
                                                 [
                                                   {"href", "#"},
                                                   {"class",
                                                    "hidden-xs small-text block margin-bottom-mdlg"},
                                                   {"onclick",
                                                    "getDirections(); recordEvent('Dealer-Profile', 'Directions_click', '23685', null, true);"}
                                                 ], ["Directions"]},
                                                {"div", [{"class", "hidden-xs"}],
                                                 [
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "inline-block pad-right-md phone"}
                                                    ],
                                                    [
                                                      {"span",
                                                       [{"class", "small-text"}],
                                                       ["Sales:"]},
                                                      {"span", [],
                                                       ["(903) 374-0469"]}
                                                    ]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "inline-block pad-right-md pad-left-md line-height-1 border-left-orange phone"}
                                                    ],
                                                    [
                                                      {"span",
                                                       [{"class", "small-text"}],
                                                       ["Service:"]},
                                                      {"span", [],
                                                       ["(903) 374-0470"]}
                                                    ]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "inline-block pad-left-md line-height-1 border-left-orange phone"}
                                                    ],
                                                    [
                                                      {"span",
                                                       [{"class", "small-text"}],
                                                       ["Parts:"]},
                                                      {"span", [],
                                                       ["(903) 374-0471"]}
                                                    ]},
                                                   {"br", [], []}
                                                 ]},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "font-16 col-xs-10 margin-none pad-none"}
                                                 ], []},
                                                {:comment, " MOBILE Hours section "},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "visible-xs dealer-hours"}
                                                 ], []}
                                              ]},
                                             {:comment,
                                              " END MOBILE Hours section "},
                                             {:comment, " MOBILE nav section "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 pad-none margin-top-lg visible-xs overview-mobile-nav"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-6 pad-left-none pad-right-sm margin-bottom-mdlg"}
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "/sales/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-Employees-23685/#mobileLink"},
                                                      {"onclick",
                                                       "recordEvent('Dealer-Profile', 'Persistent_Employees_click', '23685', null, false);"},
                                                      {"class",
                                                       " mobile-link primary-button teal width-100"}
                                                    ], ["Employees"]}
                                                 ]},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-6 pad-left-none pad-right-sm margin-bottom-mdlg"}
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/#mobileLink"},
                                                      {"onclick",
                                                       "recordEvent('Dealer-Profile', 'Persistent_Reviews_click', '23685', null, false);"},
                                                      {"class",
                                                       "active mobile-link primary-button teal width-100"}
                                                    ], ["Reviews"]}
                                                 ]},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-6 pad-left-none pad-right-sm margin-bottom-mdlg"}
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "/classifieds/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-cars-23685/#mobileLink"},
                                                      {"onclick",
                                                       "recordEvent('Dealer-Profile', 'Persistent_Inventory_click', '23685', null, false);"},
                                                      {"class",
                                                       " mobile-link primary-button teal width-100"}
                                                    ], ["Inventory"]}
                                                 ]},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-6 pad-left-none pad-right-sm margin-bottom-mdlg"} 
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "http://maps.apple.com/maps?daddr=1110 E Broadway Ave (US 80 @ E Loop 485)+Gladewater+TX"},
                                                      {"onclick",
                                                       "recordEvent('Dealer-Profile', 'Directions_click', '23685', null, true);"},
                                                      {"class",
                                                       "mobile-link primary-button teal width-100"}
                                                    ], ["Directions"]}
                                                 ]},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-6 pad-left-none pad-right-sm margin-bottom-mdlg"}
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "toggleMobilePage('awardsDialog')"},
                                                      {"class",
                                                       "mobile-link primary-button teal width-100"}
                                                    ], ["Awards"]}
                                                 ]},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-6 pad-left-none pad-right-sm margin-bottom-mdlg"}
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-review-23685/#photos"},
                                                      {"class",
                                                       "mobile-link primary-button teal width-100"}
                                                    ], ["Amenities"]}
                                                 ]}
                                              ]},
                                             {:comment, " END MOBILE nav section "},
                                             {"a",
                                              [
                                                {"href", "tel:(903) 374-0469"},
                                                {"class",
                                                 "clear-fix pull-left block visible-xs secondary-button orange width-100 mobile-link margin-top-sm"},
                                                {"onclick", "clickToCallEvent();"}
                                              ], ["Call (903) 374-0469"]}
                                           ]},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 pad-none margin-top-lg text-center visible-xs"}
                                           ],
                                           [
                                             {"div",
                                              [
                                                {"class", "col-xs-12 pad-none"},
                                                {"onclick",
                                                 "recordEvent('Dealer-Profile', 'Ad_click', '23685', null, false); recordAdobeDataLayerBannerClick();"},
                                                {"data-ad-id", "51654"}
                                              ],
                                              [
                                                {"a",
                                                 [
                                                   {"href",
                                                    "http://www.mckaigchevrolet.com/"},
                                                   {"id", "adId51654"},
                                                   {"onclick",
                                                    "window.open(\"http://www.mckaigchevrolet.com/\")"},
                                                   {"target", "_blank"}
                                                 ],
                                                 [
                                                   {"img",
                                                    [
                                                      {"src",
                                                       "https://cdn-user.dealerrater.com/ads/ads/260-542015104508AM.jpg"},
                                                      {"style",
                                                       "border-width: 0px; border-style: none;max-width:300px;max-height:90px;"}
                                                    ], []}
                                                 ]}
                                              ]},
                                             {"a", [{"id", "mobileLink"}], []},
                                             {"a",
                                              [
                                                {"href",
                                                 "https://www.mckaigchevrolet.com/"},
                                                {"onclick",
                                                 "viewDealerWebsiteEvent();"},
                                                {"class",
                                                 "dealer-website clear-fix small-text block pad-top-md text-center"},
                                                {"target", "_blank"}
                                              ], ["Visit Dealership Website"]}
                                           ]}
                                        ]},
                                       {"div",
                                        [
                                          {"class",
                                           "absolute-right text-right pad-top-lg pad-left-none margin-right-lg hidden-xs"}
                                        ],
                                        [
                                          {"h5",
                                           [
                                             {"class",
                                              "no-format small-text margin-none pad-bottom-sm"}
                                           ], ["\r\nExcellent            "]},
                                          {"h5",
                                           [
                                             {"class",
                                              "no-format small-text margin-none margin-bottom-sm"}
                                           ], ["99% Recommended"]},
                                          {"div",
                                           [
                                             {"class",
                                              "pull-right margin-top-sm margin-bottom-sm rating-details"}
                                           ],
                                           [
                                             {"div",
                                              [
                                                {"class",
                                                 "rating-static rating-49 margin-top-none pull-right margin-right-none"}
                                              ], []},
                                             {"span",
                                              [
                                                {"class",
                                                 "pull-right font-22 bolder lt-grey pad-right-md border-right margin-right-md line-height-1"}
                                              ], ["4.9"]}
                                           ]},
                                          {"p",
                                           [
                                             {"class",
                                              "font-16 italic margin-none clear-fix"}
                                           ], ["1,641 Lifetime Reviews"]},
                                          {:comment, " TABLET awards section "},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 pad-none margin-top-md visible-sm"}
                                           ],
                                           [
                                             {"img",
                                              [
                                                {"class", "view-awards pointer"},
                                                {"src",
                                                 "https://cdn-user.dealerrater.com/doty/2019/US/seal2/state/9-TX.png"},
                                                {"width", "95"}
                                              ], []},
                                             {"a",
                                              [
                                                {"href", "#"},
                                                {"class",
                                                 "small-text margin-top-md view-awards"}
                                              ],
                                              [
                                                "View ",
                                                {"span", [{"class", "boldest"}],
                                                 ["9"]},
                                                " Awards"
                                              ]}
                                           ]},
                                          {:comment, " END TABLET awards section "}
                                        ]},
                                       {"div",
                                        [
                                          {"id", "rating-details"},
                                          {"class",
                                           "display-none border-all pad-md bg-white absolute arrow-right"}
                                        ],
                                        [
                                          {"div", [{"class", "clearfix"}],
                                           [
                                             "\r\n                Customer Service\r\n                ",
                                             {"div",
                                              [
                                                {"class",
                                                 "rating-static-indv rating-49 margin-none pull-right"}
                                              ], []}
                                           ]},
                                          {"div", [{"class", "clearfix"}],
                                           [
                                             "\r\n                Quality of Work\r\n                ",
                                             {"div",
                                              [
                                                {"class",
                                                 "rating-static-indv rating-49 margin-none pull-right"}
                                              ], []}
                                           ]},
                                          {"div", [{"class", "clearfix"}],
                                           [
                                             "\r\n                Friendliness\r\n                ",
                                             {"div",
                                              [
                                                {"class",
                                                 "rating-static-indv rating-50 margin-none pull-right"}
                                              ], []}
                                           ]},
                                          {"div", [{"class", "clearfix"}],
                                           [
                                             "\r\n                Pricing\r\n                ",
                                             {"div",
                                              [
                                                {"class",
                                                 "rating-static-indv rating-48 margin-none pull-right"}
                                              ], []}
                                           ]},
                                          {"div", [{"class", "clearfix"}],
                                           [
                                             "\r\n                Overall Experience\r\n                ",
                                             {"div",
                                              [
                                                {"class",
                                                 "rating-static-indv rating-49 margin-none pull-right"}
                                              ], []}
                                           ]},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 pad-none line-height-125 margin-top-md"}
                                           ],
                                           ["\r\n                A dealership's rating is calculated by averaging scores from reviews received in the past 24 months\r\n            "]}
                                        ]}
                                     ]},
                                    {"div",
                                     [{"class", "width-100 table pad-md hidden-xs"}],
                                     [
                                       {"div",
                                        [
                                          {"class",
                                           "td pad-right-lg valign-top ad-column"}
                                        ],
                                        [
                                          {:comment, " === AD SPACE === "},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 text-left pad-none bg-white border-all adspace text-center"},
                                             {"onclick",
                                              "recordEvent('Dealer-Profile', 'Ad_click', '23685', null, false); recordAdobeDataLayerBannerClick();"},
                                             {"data-ad-id", "75431"}
                                           ],
                                           [
                                             {"a",
                                              [
                                                {"href",
                                                 "http://mckaig.net/what-is-for-the-people-video/"},
                                                {"id", "adId75431"},
                                                {"onclick",
                                                 "window.open(\"http://mckaig.net/what-is-for-the-people-video/\")"},
                                                {"target", "_blank"}
                                              ],
                                              [
                                                {"img",
                                                 [
                                                   {"src",
                                                    "https://cdn-user.dealerrater.com/ads/ads/260-523201893951AM.jpg"},
                                                   {"style",
                                                    "border-width: 0px; border-style: none;max-width:300px;max-height:250px;"}
                                                 ], []}
                                              ]}
                                           ]},
                                          {"a",
                                           [
                                             {"href",
                                              "https://www.mckaigchevrolet.com/"},
                                             {"onclick",
                                              "viewDealerWebsiteEvent();"},
                                             {"target", "_blank"},
                                             {"class",
                                              "dealer-website clear-fix small-text block pad-top-md text-center"}
                                           ], ["Visit Dealership Website"]}
                                        ]},
                                       {"div",
                                        [
                                          {"class",
                                           "td pad-right-xxl pad-left-md valign-top pad-top-lg text-left about-us-column"}
                                        ],
                                        [
                                          {"p",
                                           [
                                             {"class",
                                              "font-18 about-us margin-bottom-none"}
                                           ],
                                           ["McKaig Chevrolet Buick is A Dealer \"FOR the People.\"(R) What makes us different? Why are we special?\r\n\"We believe everyone deserves to drive a nicer, newer(R) car today that is safe, reliable and fun to drive for as long as they wish to own it.\"\r\n\r\n\"For The People\"(R) Pledge:\r\nWe are a Dealer FOR The People. That means we put our customers first, before everything else. We believe that everyone deserves to drive a nicer, newer car today. Our business is not selling cars. Our business is finding solutions to the everyday problems that keep most people stuck in a car they hate. We're on a mission to change the world by helping people get the car they want and deserve. Our goal is to make you a customer guest for Life!\r\n Kent & Mark Abernathy, \"Brothers of Savings\" \r\n\r\n FOR The People\r\n\r\nReviewers Rank us #1 in East Texas\r\n\r\nHome of Non-Commissioned Sales Solution Specialists - No Sharks in the Showroom\r\n     This means we don't try to push product or sell you anything not in your best interest as our Solution Specialists make the same thing on whatever you buy. We help you decide what you want to buy!\r\n\r\nSe Habla Espanol\r\n\r\nHome of the Buyer's Bill of Rights!\r\n\r\n-Home of Non-Commission Sales Solution Staff! No Bullies in the Showroom!\r\n-Se Habla Español!\r\n\r\n\"We believe everyone deserves to drive a nicer, newer(R) car that is safe, reliable and fun to drive for as long as they wish to own it.\""]},
                                          {"a",
                                           [
                                             {"href", "#"},
                                             {"class",
                                              "small-text block display-none"},
                                             {"id", "readMoreAbout"}
                                           ], ["Read More"]},
                                          {"a",
                                           [
                                             {"href",
                                              "/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-review-23685/#amenities"},
                                             {"onclick",
                                              "recordEvent('Dealer-Profile', 'View-Photos-Amenities_click', '23685', null, true);"},
                                             {"class",
                                              "small-text block margin-top-lg"}
                                           ],
                                           ["\r\nView Photos & Amenities                    "]},
                                          {"div",
                                           [{"class", "hidden-xs dealer-hours"}],
                                           []}
                                        ]},
                                       {"div",
                                        [
                                          {"class",
                                           "td text-center valign-top awards-column hidden-sm"}
                                        ],
                                        [
                                          {"img",
                                           [
                                             {"class", "view-awards pointer"},
                                             {"src",
                                              "https://cdn-user.dealerrater.com/doty/2019/US/seal2/state/9-TX.png"},
                                             {"width", "160"}
                                           ], []},
                                          {"a",
                                           [
                                             {"href", "#"},
                                             {"onclick",
                                              "recordEvent('Dealer-Profile', 'View-Awards-link_click', '23685', null, true);"},
                                             {"class",
                                              "small-text block margin-top-md view-awards"}
                                           ],
                                           [
                                             "View ",
                                             {"span", [{"class", "boldest"}], ["9"]},
                                             " Awards"
                                           ]}
                                        ]},
                                       {"div", [{"class", "td"}], []}
                                     ]},
                                    {"div",
                                     [
                                       {"id", "link"},
                                       {"class",
                                        "col-xs-12 pad-none bg-grey-lt-md margin-top-lg margin-bottom-lg text-center review-page-nav hidden-xs"}
                                     ],
                                     [
                                       {"a",
                                        [
                                          {"href",
                                           "/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-review-23685/"},
                                          {"onclick",
                                           "recordEvent('Dealer-Profile', 'Persistent_Overview_click', '23685', null, false);"},
                                          {"class",
                                           "black bolder font-14 letter-spacing-1 uppercase margin-right-xl inline-block pad-top-lg pad-left-lg pad-right-lg pad-bottom-md"}
                                        ], ["Overview"]},
                                       {"a",
                                        [
                                          {"href",
                                           "/sales/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-Employees-23685/#link"},
                                          {"onclick",
                                           "recordEvent('Dealer-Profile', 'Persistent_Employees_click', '23685', null, false);"},
                                          {"class",
                                           " black bolder font-14 margin-right-xl letter-spacing-1 uppercase inline-block pad-top-lg pad-bottom-md pad-left-lg pad-right-lg"}
                                        ], ["Employees"]},
                                       {"a",
                                        [
                                          {"href",
                                           "/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/#link"},
                                          {"onclick",
                                           "recordEvent('Dealer-Profile', 'Persistent_Reviews_click', '23685', null, false);"},
                                          {"class",
                                           "active black bolder font-14 letter-spacing-1 uppercase margin-right-xl inline-block pad-top-lg pad-left-lg pad-right-lg pad-bottom-md"}
                                        ], ["Reviews (1641)"]},
                                       {"a",
                                        [
                                          {"href",
                                           "/classifieds/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-cars-23685/#link"},
                                          {"onclick",
                                           "recordEvent('Dealer-Profile', 'Persistent_Inventory_click', '23685', null, false);"},
                                          {"class", 
                                           " black bolder font-14 letter-spacing-1 uppercase inline-block pad-top-lg pad-bottom-md pad-left-lg pad-right-lg"}
                                        ], ["Inventory (153)"]}
                                     ]}
                                  ]},
                                 {:comment, "- AWARDS CONTENT "},
                                 {"div",
                                  [
                                    {"class", "display-none"},
                                    {"id", "awardsDialog"}
                                  ],
                                  [
                                    {"h3", [{"class", "popup-title"}],
                                     [
                                       {"span", [{"class", "hidden-xs hidden-sm"}],
                                        [
                                          {"span", [{"class", "notranslate"}],
                                           ["McKaig Chevrolet Buick - A Dealer For The People"]},
                                          " Awards"
                                        ]},
                                       {"span",
                                        [
                                          {"class",
                                           "visible-xs visible-sm bolder pad-left-lg block pull-left"}
                                        ], ["Awards"]}
                                     ]},
                                    {"a", [{"href", "#"}, {"class", "popup-close"}],
                                     []},
                                    {"div", [{"class", "popup-content-wrapper"}],
                                     [
                                       {"div",
                                        [
                                          {"class", "col-xs-12 pad-none"},
                                          {"id", "awardsWrapper"}
                                        ],
                                        [
                                          {"div", [{"class", "col-xs-12 pad-none"}],
                                           [
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-4 pad-none text-center margin-bottom-lg award"}
                                              ],
                                              [
                                                {"img",
                                                 [
                                                   {"class", "doty-award-image"},
                                                   {"height", "165"},
                                                   {"src",
                                                    "https://cdn-user.dealerrater.com/doty/2019/US/seal2/state/9-TX.png"}
                                                 ], []}
                                              ]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-4 pad-none text-center margin-bottom-lg award"}
                                              ],
                                              [
                                                {"img",
                                                 [
                                                   {"class", "doty-award-image"},
                                                   {"height", "165"},
                                                   {"src",
                                                    "https://cdn-user.dealerrater.com/doty/2018/US/seal2/state/7-TX.png"}
                                                 ], []}
                                              ]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-4 pad-none text-center margin-bottom-lg award"}
                                              ],
                                              [
                                                {"img",
                                                 [
                                                   {"class", "doty-award-image"},
                                                   {"height", "165"},
                                                   {"src",
                                                    "https://cdn-user.dealerrater.com/doty/2017/US/seal2/state/7-TX.png"}
                                                 ], []}
                                              ]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-4 pad-none text-center margin-bottom-lg award"}
                                              ],
                                              [
                                                {"img",
                                                 [
                                                   {"class", "doty-award-image"},
                                                   {"height", "165"},
                                                   {"src",
                                                    "https://cdn-user.dealerrater.com/doty/2015/US/seal2/state/7-TX.png"}
                                                 ], []}
                                              ]}
                                           ]},
                                          {"div", [{"class", "col-xs-12 pad-none"}],
                                           [
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-4 pad-none text-center margin-bottom-lg award"}
                                              ],
                                              [
                                                {"img",
                                                 [
                                                   {"class", "csa-award-image"},
                                                   {"src",
                                                    "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/locales/en-US/csa/2019-seal.png"},
                                                   {"width", "130"}
                                                 ], []}
                                              ]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-4 pad-none text-center margin-bottom-lg award"}
                                              ],
                                              [
                                                {"img",
                                                 [
                                                   {"class", "csa-award-image"},
                                                   {"src",
                                                    "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/locales/en-US/csa/2018-seal.png"},
                                                   {"width", "130"}
                                                 ], []}
                                              ]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-4 pad-none text-center margin-bottom-lg award"}
                                              ],
                                              [
                                                {"img",
                                                 [
                                                   {"class", "csa-award-image"},
                                                   {"src",
                                                    "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/locales/en-US/csa/2017-seal.png"},
                                                   {"width", "130"}
                                                 ], []}
                                              ]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-4 pad-none text-center margin-bottom-lg award"}
                                              ],
                                              [
                                                {"img",
                                                 [
                                                   {"class", "csa-award-image"},
                                                   {"src",
                                                    "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/locales/en-US/csa/2016-seal.png"},
                                                   {"width", "130"}
                                                 ], []}
                                              ]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-4 pad-none text-center margin-bottom-lg award"}
                                              ],
                                              [
                                                {"img",
                                                 [
                                                   {"class", "csa-award-image"},
                                                   {"src",
                                                    "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/locales/en-US/csa/2015-seal.png"},
                                                   {"width", "130"}
                                                 ], []}
                                              ]}
                                           ]}
                                        ]}
                                     ]}
                                  ]},
                                 {:comment, " HOURS CONTENT"},
                                 {"div",
                                  [{"class", "display-none"}, {"id", "hoursDialog"}],
                                  [
                                    {"h3", [{"class", "popup-title"}],
                                     [
                                       {"span", [{"class", "hidden-xs hidden-sm"}],
                                        [
                                          {"span", [{"class", "notranslate"}],
                                           ["McKaig Chevrolet Buick - A Dealer For The People"]},
                                          " Hours"
                                        ]},
                                       {"span",
                                        [
                                          {"class",
                                           "visible-xs visible-sm bolder pad-left-lg block pull-left"}
                                        ], ["Hours"]}
                                     ]},
                                    {"a", [{"href", "#"}, {"class", "popup-close"}],
                                     []},
                                    {"div", [{"class", "popup-content-wrapper"}],
                                     [
                                       {"div",
                                        [
                                          {"class", "col-xs-12 pad-none"},
                                          {"id", "hoursWrapper"}
                                        ],
                                        [
                                          {:comment, " hours "},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-6 hours-section pad-left-none pad-right-lg margin-bottom-md"}
                                           ],
                                           [
                                             {"p",
                                              [
                                                {"class",
                                                 "bold uppercase letter-spacing-1 orange-lt margin-none pad-top-md"}
                                              ], ["Sales/Showroom"]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Monday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                8:00 AM\r\n                                    - 6:00 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Tuesday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                8:00 AM\r\n                                    - 6:00 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Wednesday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                8:00 AM\r\n                                    - 6:00 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Thursday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                8:00 AM\r\n                                    - 6:00 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Friday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                8:00 AM\r\n                                    - 6:00 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Saturday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                9:00 AM\r\n                                    - 6:00 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Sunday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                Closed\r\n                            "]}
                                              ]}
                                           ]},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-6 hours-section pad-left-none pad-right-lg margin-bottom-md"}
                                           ],
                                           [
                                             {"p",
                                              [
                                                {"class",
                                                 "bold uppercase letter-spacing-1 orange-lt margin-none pad-top-md"}
                                              ], ["Service"]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Monday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                7:30 AM\r\n                                    - 5:30 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Tuesday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                7:30 AM\r\n                                    - 5:30 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Wednesday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                7:30 AM\r\n                                    - 5:30 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Thursday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                7:30 AM\r\n                                    - 5:30 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Friday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                7:30 AM\r\n                                    - 5:30 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Saturday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                8:00 AM\r\n                                    - 1:00 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Sunday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                Closed\r\n                            "]}
                                              ]}
                                           ]},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-6 hours-section pad-left-none pad-right-lg margin-bottom-md"}
                                           ],
                                           [
                                             {"p",
                                              [
                                                {"class",
                                                 "bold uppercase letter-spacing-1 orange-lt margin-none pad-top-md"}
                                              ], ["Parts"]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Monday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                7:30 AM\r\n                                    - 5:30 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Tuesday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                7:30 AM\r\n                                    - 5:30 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Wednesday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                7:30 AM\r\n                                    - 5:30 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Thursday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                7:30 AM\r\n                                    - 5:30 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Friday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                7:30 AM\r\n                                    - 5:30 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Saturday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                8:00 AM\r\n                                    - 1:00 PM\r\n                            "]}
                                              ]},
                                             {"p",
                                              [{"class", "margin-none font-16"}],
                                              [
                                                {"span", [{"class", "capitalize"}],
                                                 ["Sunday"]},
                                                {"span", [{"class", "pull-right"}],
                                                 ["\r\n                                Closed\r\n                            "]}
                                              ]}
                                           ]}
                                        ]}
                                     ]}
                                  ]},
                                 {"style", [],
                                  ["\r\n    .ctaLink, .chatLink {\r\n        font-size: 14px !important;\r\n    }\r\n\r\n    .claim-dealer-tablet .td {\r\n        min-width: 250px;\r\n    }\r\n\r\n    #dealerLink {\r\n        -ms-border-bottom-right-radius: 0;\r\n        border-bottom-right-radius: 0;\r\n        -ms-border-top-right-radius: 0;\r\n        border-top-right-radius: 0;\r\n        border: 1px solid #00adc2;\r\n    }\r\n    #serviceLink {\r\n        -ms-border-bottom-left-radius: 0;\r\n        border-bottom-left-radius: 0;\r\n        -ms-border-top-left-radius: 0;\r\n        border-top-left-radius: 0;\r\n    }\r\n    #dealerLink:after {\r\n        content: '';\r\n        position: absolute;\r\n        top: 100%;\r\n        left: 0;\r\n        right: 0;\r\n        margin: 0 auto;\r\n        width: 0;\r\n        height: 0;\r\n        border-left: solid 10px transparent;\r\n        border-right: solid 10px transparent;\r\n        border-top: solid 10px #00adc2;\r\n    }\r\n    #overview h5 {\r\n        font-size: 12px !important;\r\n        text-transform: uppercase !important;\r\n    }\r\n    .rating-static, .rating-static-indv {\r\n        background-image: url(\"https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/bg_star_rating_new_orange_lt.png\");\r\n    }\r\n    #rating-details {\r\n        width: 245px;\r\n        z-index: 2;\r\n        top: 9px;\r\n        right: 190px;\r\n    }\r\n    #badge-tooltip {\r\n        position: absolute;\r\n        background: #ffffff;\r\n        border: 2px solid #00adc2;\r\n        -ms-border-radius: 20px;\r\n        border-radius: 20px;\r\n        padding: 10px;\r\n        width: 190px;\r\n        top: 140px;\r\n        left: -50px;\r\n    }\r\n\r\n    #badge-tooltip:after,  #badge-tooltip:before {\r\n        bottom: 100%;\r\n        left: 50%;\r\n        border: solid transparent;\r\n        content: \" \";\r\n        height: 0;\r\n        width: 0;\r\n        position: absolute;\r\n        pointer-events: none;\r\n    }\r\n    #badge-tooltip:after {\r\n        border-bottom-color: #ffffff;\r\n        border-width: 10px;\r\n        margin-left: -10px;\r\n    }\r\n\r\n    #badge-tooltip:before {\r\n        border-bottom-color: #00adc2;\r\n        border-width: 13px;\r\n        margin-left: -13px;\r\n    }\r\n    .about-us {\r\n        white-space: pre-line;\r\n        max-height: 100px;\r\n        overflow: hidden;\r\n    }\r\n    .awards-column {\r\n        width: 180px;\r\n    }\r\n    .claim-column {\r\n        width: 240px;\r\n    }\r\n    .border-left-orange {\r\n        border-left: 2px solid #fa7412;\r\n    }\r\n   \r\n    #awardsWrapper {\r\n        max-height: 420px;\r\n        overflow-y: auto;\r\n    }\r\n    .review-page-nav a.active, #persistentNav .active {\r\n        border-bottom: 3px solid #00adc2;\r\n    }\r\n    #persistentNav{\r\n        position: fixed;\r\n        top: 0;\r\n        left:0;\r\n        z-index: 1001;\r\n    }\r\n    .persistentNavWrapper{\r\n        margin: auto;\r\n        max-width: 1024px !important;\r\n        clear: both;\r\n    }\r\n    #persistentNav a{\r\n        padding-bottom: 31px !important;\r\n    }\r\n    .wide-layout {\r\n        margin-top: -10px;\r\n    }\r\n    #persistentNav .wide-layout a {\r\n        padding-bottom: 12px !important;\r\n    }\r\n    .ad-column {\r\n        width: 315px;\r\n    }\r\n    .recommend-column {\r\n        width: 425px;\r\n    }\r\n    .overflow-auto.dealer-info {\r\n        padding-bottom: 2px;\r\n    }\r\n    @media (max-width: 1100px) {\r\n        #badge-tooltip {\r\n            left: 0;\r\n        }\r\n        #badge-tooltip:after, #badge-tooltip:before {\r\n            left: 25%;\r\n        }\r\n    }\r\n    @media (max-width: 975px) {\r\n        .phone {\r\n            display: block;\r\n            border: 0;\r\n            padding: 0 !important;\r\n            line-height: 1.5em;\r\n        }\r\n        .about-us-column {\r\n            padding-right: 10px !important;\r\n            padding-top: 50px !important;\r\n        }\r\n        .recommend-tablet-column {\r\n            padding-top: 70px !important;\r\n        }\r\n    }\r\n    @media (max-width: 767px) {\r\n        #pageContainer, .section-container#reviewsSection {\r\n            padding: 0 !important;\r\n        }\r\n        .overview-section {\r\n            padding: 0 !important;\r\n            display: table;\r\n            width: 100%;\r\n        }\r\n        .warLink {\r\n            margin-top: 10px;\r\n            display: inline-block !important;\r\n            float: none !important;\r\n        }\r\n        .ctaLink {\r\n            display: table-cell;\r\n            vertical-align: middle;\r\n            -ms-border-radius: 0;\r\n            border-radius: 0;\r\n            padding: 10px 5px !important;\r\n            font-size: 12px !important;\r\n            border: 1px solid #fff !important;\r\n            float: none !important;\r\n            line-height: 1.25em !important;\r\n            height: 42px;\r\n        }\r\n\r\n        #serviceLink {\r\n            background: #cceff3;\r\n            color: #00adc2;\r\n        }\r\n        .star-icon {\r\n            display: inline !important;\r\n        }\r\n        #badge {\r\n            margin-top: 12px;\r\n        }\r\n        .badge-tooltip {\r\n            width: 65px;\r\n        }\r\n        #dealerName {\r\n            font-size: 20px !important;\r\n        }\r\n        #dealerAddress {\r\n            font-size: 14px !important;\r\n            display: block;\r\n            float: left;\r\n            clear: both;\r\n            margin-top: 10px;\r\n        }\r\n        .mobile-link {\r\n            font-size: 14px !important;\r\n        }\r\n        #awardsDialog {\r\n            padding: 0 !important;\r\n        }\r\n        #awardsWrapper {\r\n            max-height: none;\r\n            overflow: auto;\r\n        }\r\n        .doty-award-image{\r\n            height: 150px;\r\n        }\r\n        .csa-award-image{\r\n            width: 150px;\r\n        }\r\n        #hoursDialog {\r\n            padding: 0 10px !important;\r\n        }\r\n        .claim-dealer-tablet .td {\r\n            width: 100%;\r\n            display: block !important;\r\n        }\r\n        .claim-dealer-tablet .primary-button.teal, .awards-mobile {\r\n            display: inline-block !important;\r\n        }\r\n        .chatLink.war {\r\n            float: none !important;\r\n            display: inline-block !important;\r\n        }\r\n        .overview-mobile-nav a.active {\r\n            background: #107dbf;\r\n            border-color: #cfe5f2;\r\n        }\r\n    }\r\n    @media (max-width: 550px) {\r\n        .ctaLink {\r\n            height: 60px;\r\n        }\r\n        .star-icon {\r\n            display: inline !important;\r\n            float: left;\r\n            padding-right: 2px;\r\n            padding-top: 2px;\r\n        }\r\n        .wrench-icon {\r\n            display: block;\r\n            float: left;\r\n            padding-right: 3px;\r\n            padding-top: 5px;\r\n        }\r\n        .review-btn-text {\r\n            width: 65px;\r\n            float: left;\r\n        }\r\n        .service-btn-text {\r\n            width: 60px;\r\n            float: left;\r\n        }\r\n    }\r\n"]}
                               ]},
                              {:comment, " reviews section "},
                              {"div",
                               [{"id", "reviews"}, {"class", "col-xs-12 pad-none"}],
                               [
                                 {"div",
                                  [
                                    {"class",
                                     "col-xs-12 review-section pad-md pad-bottom-none"}
                                  ],
                                  [
                                    {"div", [{"class", "col-xs-12 pad-none"}],
                                     [
                                       {"h2",
                                        [
                                          {"class",
                                           "h2-header margin-bottom-md reviews-of-emp"}
                                        ],
                                        [
                                          "\n                        1641 Reviews of ",
                                          {"span", [{"class", "notranslate"}],
                                           ["McKaig Chevrolet Buick - A Dealer For The People"]}
                                        ]},
                                       {"div",
                                        [
                                          {"class",
                                           "col-xs-12 pad-none margin-bottom-md dr-form pad-bottom-mdlg border-bottom-light"}
                                        ],
                                        [
                                          {"span", [{"class", "sortByWrapper"}],
                                           [
                                             {"span",
                                              [
                                                {"class",
                                                 "uppercase lt-grey font-14 boldest letter-spacing-1 visible-sm visible-xs pull-left pad-top-md pad-right-sm"}
                                              ], ["Sort by"]},
                                             {"select",
                                              [
                                                {"id", "review-filter"},
                                                {"class", "font-18"}
                                              ],
                                              [
                                                {"option",
                                                 [{"value", "ALL_REVIEWS"}],
                                                 ["All Reviews"]},
                                                {"option",
                                                 [{"value", "ONLY_SALES"}],
                                                 ["Sales Reviews Only"]},
                                                {"option",
                                                 [{"value", "ONLY_POSITIVE"}],
                                                 ["Only Positive"]},
                                                {"option",
                                                 [{"value", "ONLY_NEGATIVE"}],
                                                 ["Only Negative"]}
                                              ]}
                                           ]},
                                          {"a",
                                           [
                                             {"href",
                                              "/consumer/writereviews/23685?service=true&source=drp"},
                                             {"class",
                                              "primary-button orange pull-right war"}
                                           ],
                                           ["\n                            Write a review\n                        "]}
                                        ]},
                                       {"div",
                                        [
                                          {"class",
                                           "review-entry col-xs-12 text-left pad-none pad-top-lg  border-bottom-teal-lt"}
                                        ],
                                        [
                                          {"a", [{"name", "r76896"}], []},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-3 pad-left-none text-center review-date margin-bottom-md"}
                                           ],
                                           [
                                             {"div",
                                              [
                                                {"class",
                                                 "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}
                                              ], ["May 29, 2009"]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-12 pad-none dealership-rating"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static visible-xs pad-none margin-none rating-50 pull-right"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static hidden-xs rating-46 margin-center"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                                                 ], ["SERVICE VISIT"]}
                                              ]}
                                           ]},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-9 pad-none review-wrapper"}
                                           ],
                                           [
                                             {:comment, " REVIEW TITLE, USER"},
                                             {"div",
                                              [
                                                {"class",
                                                 "margin-bottom-sm line-height-150"}
                                              ],
                                              [
                                                {"h3",
                                                 [
                                                   {"class",
                                                    "no-format inline italic-bolder font-20 dark-grey"}
                                                 ],
                                                 ["\"McKaig Chevrolet has been loyal to my family for as long...\""]},
                                                {"span",
                                                 [
                                                   {"class",
                                                    "italic font-18 black notranslate"}
                                                 ], ["- awhite211"]}
                                              ]},
                                             {:comment, " REVIEW BODY "},
                                             {"div",
                                              [{"class", "tr margin-top-md"}],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "td text-left valign-top "}
                                                 ],
                                                 [
                                                   {"p",
                                                    [
                                                      {"class",
                                                       "font-16 review-content margin-bottom-none line-height-25"}
                                                    ],
                                                    ["McKaig Chevrolet has been loyal to my family for as long as I can remember and in return my family has been loyal to them.  Their service is quick and the quality of work is superb.  I recently bought a new vehicle from them and the power steering went out twice within a couple of months of purchasing the vehicle. On the first occasion, I was about 120 miles from them and they arranged for a tow truck and for a dealership in the town I was in to service the problem and due to some convincing by McKaig's, I recieved my vehicle the next day.  A couple of weeks later, the power steering went out again and again I was out of town.  Once again, McKaig's arranged a tow truck and instead had the vehicle towed back to their service department. I haven't had a problem since.  I don't know any other dealership that would go to those lengths to help a customer out.  Having seen their loyalty first hand, I will never purchase a vehicle from another dealership.\r\n\r\nAndy White"]},
                                                   {"a",
                                                    [
                                                      {"id", "76896"},
                                                      {"class",
                                                       "read-more-toggle pointer line-height-25 small-text block margin-bottom-md"}
                                                    ], ["Read More"]}
                                                 ]}
                                              ]},
                                             {:comment, " REVIEW RATINGS - ALL "},
                                             {"div",
                                              [
                                                {"class",
                                                 "pull-left pad-left-md pad-right-md bg-grey-lt margin-bottom-md review-ratings-all review-hide"}
                                              ],
                                              [
                                                {:comment,
                                                 " REVIEW RATING - CUSTOMER SERVICE "},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                                                 ],
                                                 [
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Customer Service"]},
                                                      {"div", 
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-40 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - QUALITY OF WORK "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Quality of Work"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - FRIENDLINESS "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Friendliness"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - PRICING "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Pricing"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-40 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - EXPERIENCE "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td lt-grey small-text"}
                                                       ], ["Overall Experience"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - RECOMMEND DEALER "},
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Recommend Dealer"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td small-text boldest"}
                                                       ],
                                                       ["\r\n                Yes\r\n            "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment, " EMPLOYEE SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "clear-fix  margin-top-sm"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 lt-grey pad-left-none employees-wrapper"}
                                                 ],
                                                 [
                                                   {"div",
                                                    [{"class", "small-text"}],
                                                    ["Employees Worked With "]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 col-sm-6 col-md-4 pad-left-none pad-top-sm pad-bottom-sm review-employee"}
                                                    ],
                                                    [
                                                      {"div", [{"class", "table"}],
                                                       [
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td square-image employee-image"},
                                                            {"style",
                                                             "background-image: url(https://cdn-user.dealerrater.com/images/dealer/23685/employees/a7dcab6d-fbd7-4f2e-bab4-6c23a1c8e625.jpg)"}
                                                          ], []},
                                                         {"div",
                                                          [ 
                                                            {"class",
                                                             "td valign-bottom pad-left-md pad-top-none pad-bottom-lg"}
                                                          ],
                                                          [
                                                            {"a",
                                                             [
                                                               {"class",
                                                                "notranslate pull-left line-height-1 tagged-emp small-text teal   emp-54375"}, 
                                                               {"data-emp-id",
                                                                "54375"},
                                                               {"href",
                                                                "/sales/Mike-Lambert-review-54375/"}
                                                             ],
                                                             ["\r\n                                             Mike Lambert\r\n                                         "]}
                                                          ]}
                                                       ]}
                                                    ]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 pad-none pad-top-sm "}
                                                    ],
                                                    [
                                                      {"span",
                                                       [{"class", "small-text"}],
                                                       ["Other Employees :"]},
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "italic font-13 notranslate"}
                                                       ], ["Mike Lambert "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment,
                                              " SOCIAL MEDIA AND REVIEW ACTIONS "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 pad-none review-hide margin-top-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-left"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76896&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People"},
                                                      {"onclick",
                                                       "window.open('https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76896&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Twitter"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_twitter_sm.png"}
                                                       ], []}
                                                    ]},
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76896"},
                                                      {"onclick", 
                                                       "window.open('http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76896', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Facebook"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_facebook_sm.png"}
                                                       ], []}
                                                    ]}
                                                 ]},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "pull-left margin-left-md"}
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick", 
                                                       "javascript:window.reportReview(76896); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Report"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/dealer/respond.aspx?dealerId=23685&commentId=76896', 'report', 'toolbar=no,scrollbars=yes,location=no,width=575,height=465,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Respond"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/consumer/dealer/23685/review/76896/print', 'report', 'toolbar=no,scrollbars=yes,location=no,width=720,height=400,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Print"]}
                                                 ]}
                                              ]},
                                             {:comment, " PUBLIC MESSAGES "},
                                             {:comment, " WAS HELPFUL SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 margin-bottom-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-right"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"class", "helpful-button"},
                                                      {"onclick",
                                                       "javascript:MarkReviewHelpful(76896, this); return false;"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class",
                                                          "pull-left margin-right-sm"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                                                       ], []},
                                                      " Helpful ",
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "helpful-count display-none"},
                                                         {"id",
                                                          "helpful_count_76896"}
                                                       ], ["0"]}
                                                    ]}
                                                 ]}
                                              ]}
                                           ]}
                                        ]},
                                       {"style", [],
                                        ["\r\n    \r\n    .review-response {\r\n        overflow: hidden;\r\n    }\r\n\r\n    .open .review-response {\r\n        max-height: none;\r\n    }\r\n\r\n     @media (max-width: 767px) {\r\n         .public-messages {\r\n             border-top: none !important;\r\n             margin-left: 0 !important;\r\n             margin-top: 5px !important;\r\n             padding-top: 0 !important;\r\n         }\r\n\r\n         .review-hide {\r\n             display: none !important;\r\n         }\r\n\r\n         .open .review-hide{\r\n             display: block !important;\r\n         }\r\n     }\r\n"]},
                                       {"div",
                                        [
                                          {"class",
                                           "review-entry col-xs-12 text-left pad-none pad-top-lg  border-bottom-teal-lt"}
                                        ], 
                                        [
                                          {"a", [{"name", "r76890"}], []},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-3 pad-left-none text-center review-date margin-bottom-md"}
                                           ],
                                           [
                                             {"div",
                                              [
                                                {"class",
                                                 "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}
                                              ], ["May 29, 2009"]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-12 pad-none dealership-rating"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static visible-xs pad-none margin-none rating-50 pull-right"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static hidden-xs rating-48 margin-center"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                                                 ], ["SALES VISIT - NEW"]}
                                              ]}
                                           ]},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-9 pad-none review-wrapper"}
                                           ],
                                           [
                                             {:comment, " REVIEW TITLE, USER"},
                                             {"div",
                                              [
                                                {"class",
                                                 "margin-bottom-sm line-height-150"}
                                              ],
                                              [
                                                {"h3",
                                                 [
                                                   {"class",
                                                    "no-format inline italic-bolder font-20 dark-grey"}
                                                 ],
                                                 ["\"My family and I have been doing business with McKaigs for...\""]},
                                                {"span",
                                                 [
                                                   {"class",
                                                    "italic font-18 black notranslate"}
                                                 ], ["- je7255"]}
                                              ]},
                                             {:comment, " REVIEW BODY "},
                                             {"div",
                                              [{"class", "tr margin-top-md"}],
                                              [
                                                {"div", 
                                                 [
                                                   {"class",
                                                    "td text-left valign-top "}
                                                 ],
                                                 [
                                                   {"p",
                                                    [
                                                      {"class",
                                                       "font-16 review-content margin-bottom-none line-height-25"}
                                                    ],
                                                    ["My family and I have been doing business with McKaigs for about 20 years..Recently we purchase 4 different vehicles from them in the last 6 months. They are always very friendly during the sales part of our transaction, but they always remember my family after the sale. The service department is always prompt and eager to help us....They have never left my wife stranded whenever I have been out of town and not able to take care of her car issues....I recommend them to everyone that I know looking for new or used car...."]},
                                                   {"a",
                                                    [
                                                      {"id", "76890"},
                                                      {"class",
                                                       "read-more-toggle pointer line-height-25 small-text block margin-bottom-md"}
                                                    ], ["Read More"]}
                                                 ]}
                                              ]},
                                             {:comment, " REVIEW RATINGS - ALL "},
                                             {"div",
                                              [ 
                                                {"class",
                                                 "pull-left pad-left-md pad-right-md bg-grey-lt margin-bottom-md review-ratings-all review-hide"}
                                              ],
                                              [
                                                {:comment,
                                                 " REVIEW RATING - CUSTOMER SERVICE "},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                                                 ],
                                                 [
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Customer Service"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - QUALITY OF WORK "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Quality of Work"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - FRIENDLINESS "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Friendliness"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - PRICING "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Pricing"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-40 margin-top-none td"}
                                                       ], []} 
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - EXPERIENCE "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td lt-grey small-text"}
                                                       ], ["Overall Experience"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]}, 
                                                   {:comment,
                                                    " REVIEW RATING - RECOMMEND DEALER "},
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Recommend Dealer"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td small-text boldest"}
                                                       ],
                                                       ["\r\n                Yes\r\n            "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment, " EMPLOYEE SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "clear-fix  margin-top-sm"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 lt-grey pad-left-none employees-wrapper"}
                                                 ],
                                                 [
                                                   {"div",
                                                    [{"class", "small-text"}],
                                                    ["Employees Worked With "]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 col-sm-6 col-md-4 pad-left-none pad-top-sm pad-bottom-sm review-employee"}
                                                    ],
                                                    [
                                                      {"div", [{"class", "table"}],
                                                       [
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td square-image employee-image"},
                                                            {"style",
                                                             "background-image: url(https://cdn-user.dealerrater.com/images/dealer/23685/employees/a7dcab6d-fbd7-4f2e-bab4-6c23a1c8e625.jpg)"}
                                                          ], []},
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td valign-bottom pad-left-md pad-top-none pad-bottom-lg"}
                                                          ],
                                                          [
                                                            {"a",
                                                             [
                                                               {"class",
                                                                "notranslate pull-left line-height-1 tagged-emp small-text teal  margin-right-sm emp-54375"},
                                                               {"data-emp-id",
                                                                "54375"},
                                                               {"href",
                                                                "/sales/Mike-Lambert-review-54375/"}
                                                             ],
                                                             ["\r\n                                             Mike Lambert\r\n                                         "]}
                                                          ]}
                                                       ]}
                                                    ]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 col-sm-6 col-md-4 pad-left-none pad-top-sm pad-bottom-sm review-employee"}
                                                    ],
                                                    [
                                                      {"div", [{"class", "table"}], 
                                                       [
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td square-image employee-image"},
                                                            {"style",
                                                             "background-image: url(https://cdn-user.dealerrater.com/images/dealer/23685/employees/d3c119d4-6297-43a4-9b38-1a4b992313ac.jpg)"}
                                                          ], []},
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td valign-bottom pad-left-md pad-top-none pad-bottom-lg"}
                                                          ],
                                                          [
                                                            {"a",
                                                             [
                                                               {"class",
                                                                "notranslate pull-left line-height-1 tagged-emp small-text teal   emp-2931"},
                                                               {"data-emp-id",
                                                                "2931"},
                                                               {"href",
                                                                "/sales/Kent-Abernathy-review-2931/"}
                                                             ],
                                                             ["\r\n                                             Kent Abernathy\r\n                                         "]}
                                                          ]}
                                                       ]}
                                                    ]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 pad-none pad-top-sm "}
                                                    ],
                                                    [
                                                      {"span",
                                                       [{"class", "small-text"}],
                                                       ["Other Employees :"]},
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "italic font-13 notranslate"}
                                                       ],
                                                       ["Mike Lambert--Kent Abernathy-Doyle Dougan, Doyle Dougan "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment,
                                              " SOCIAL MEDIA AND REVIEW ACTIONS "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 pad-none review-hide margin-top-lg"} 
                                              ],
                                              [
                                                {"div", [{"class", "pull-left"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76890&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People"},
                                                      {"onclick",
                                                       "window.open('https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76890&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Twitter"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_twitter_sm.png"}
                                                       ], []}
                                                    ]},
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76890"},
                                                      {"onclick",
                                                       "window.open('http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76890', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Facebook"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src", 
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_facebook_sm.png"}
                                                       ], []}
                                                    ]}
                                                 ]},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "pull-left margin-left-md"}
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "javascript:window.reportReview(76890); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Report"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/dealer/respond.aspx?dealerId=23685&commentId=76890', 'report', 'toolbar=no,scrollbars=yes,location=no,width=575,height=465,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Respond"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/consumer/dealer/23685/review/76890/print', 'report', 'toolbar=no,scrollbars=yes,location=no,width=720,height=400,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Print"]}
                                                 ]}
                                              ]}, 
                                             {:comment, " PUBLIC MESSAGES "},
                                             {:comment, " WAS HELPFUL SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 margin-bottom-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-right"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"class", "helpful-button"},
                                                      {"onclick",
                                                       "javascript:MarkReviewHelpful(76890, this); return false;"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class",
                                                          "pull-left margin-right-sm"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                                                       ], []},
                                                      " Helpful ",
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "helpful-count display-none"},
                                                         {"id",
                                                          "helpful_count_76890"}
                                                       ], ["0"]}
                                                    ]}
                                                 ]}
                                              ]}
                                           ]}
                                        ]},
                                       {"style", [],
                                        ["\r\n    \r\n    .review-response {\r\n        overflow: hidden;\r\n    }\r\n\r\n    .open .review-response {\r\n        max-height: none;\r\n    }\r\n\r\n     @media (max-width: 767px) {\r\n         .public-messages {\r\n             border-top: none !important;\r\n             margin-left: 0 !important;\r\n             margin-top: 5px !important;\r\n             padding-top: 0 !important;\r\n         }\r\n\r\n         .review-hide {\r\n             display: none !important;\r\n         }\r\n\r\n         .open .review-hide{\r\n             display: block !important;\r\n         }\r\n     }\r\n"]},
                                       {"div",
                                        [
                                          {"class",
                                           "review-entry col-xs-12 text-left pad-none pad-top-lg  border-bottom-teal-lt"}
                                        ],
                                        [
                                          {"a", [{"name", "r76878"}], []},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-3 pad-left-none text-center review-date margin-bottom-md"}
                                           ],
                                           [
                                             {"div",
                                              [
                                                {"class",
                                                 "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}
                                              ], ["May 29, 2009"]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-12 pad-none dealership-rating"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static visible-xs pad-none margin-none rating-50 pull-right"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static hidden-xs rating-50 margin-center"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                                                 ], ["SALES VISIT - NEW"]}
                                              ]}
                                           ]},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-9 pad-none review-wrapper"}
                                           ],
                                           [
                                             {:comment, " REVIEW TITLE, USER"},
                                             {"div",
                                              [
                                                {"class",
                                                 "margin-bottom-sm line-height-150"}
                                              ],
                                              [
                                                {"h3",
                                                 [
                                                   {"class",
                                                    "no-format inline italic-bolder font-20 dark-grey"}
                                                 ],
                                                 ["\"For the past 35 years, my entire family, including my...\""]},
                                                {"span",
                                                 [
                                                   {"class",
                                                    "italic font-18 black notranslate"}
                                                 ], ["- awhite211"]}
                                              ]},
                                             {:comment, " REVIEW BODY "},
                                             {"div",
                                              [{"class", "tr margin-top-md"}],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "td text-left valign-top "}
                                                 ],
                                                 [
                                                   {"p",
                                                    [
                                                      {"class",
                                                       "font-16 review-content margin-bottom-none line-height-25"}
                                                    ],
                                                    ["For the past 35 years, my entire family, including my son's and grandchildren have purchased all vehicles from McKaig.  We are a GM Family and will continue to drive GM vehicles.  The sales personnel, office personnel and service department are exceptional.  I endorse the entire organization without reservation."]},
                                                   {"a",
                                                    [
                                                      {"id", "76878"},
                                                      {"class",
                                                       "read-more-toggle pointer line-height-25 small-text block margin-bottom-md"}
                                                    ], ["Read More"]}
                                                 ]}
                                              ]}, 
                                             {:comment, " REVIEW RATINGS - ALL "},
                                             {"div",
                                              [
                                                {"class",
                                                 "pull-left pad-left-md pad-right-md bg-grey-lt margin-bottom-md review-ratings-all review-hide"}
                                              ],
                                              [
                                                {:comment,
                                                 " REVIEW RATING - CUSTOMER SERVICE "},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                                                 ],
                                                 [
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Customer Service"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - QUALITY OF WORK "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Quality of Work"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - FRIENDLINESS "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Friendliness"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - PRICING "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class", 
                                                          "lt-grey small-text td"}
                                                       ], ["Pricing"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - EXPERIENCE "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td lt-grey small-text"}
                                                       ], ["Overall Experience"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - RECOMMEND DEALER "},
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Recommend Dealer"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td small-text boldest"}
                                                       ],
                                                       ["\r\n                Yes\r\n            "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment, " EMPLOYEE SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "clear-fix  margin-top-sm"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 lt-grey pad-left-none employees-wrapper"}
                                                 ],
                                                 [
                                                   {"div",
                                                    [{"class", "small-text"}],
                                                    ["Employees Worked With "]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 col-sm-6 col-md-4 pad-left-none pad-top-sm pad-bottom-sm review-employee"}
                                                    ],
                                                    [
                                                      {"div", [{"class", "table"}],
                                                       [
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td square-image employee-image"},
                                                            {"style",
                                                             "background-image: url(https://cdn-user.dealerrater.com/images/dealer/23685/employees/d3c119d4-6297-43a4-9b38-1a4b992313ac.jpg)"}
                                                          ], []},
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td valign-bottom pad-left-md pad-top-none pad-bottom-lg"}
                                                          ],
                                                          [
                                                            {"a",
                                                             [
                                                               {"class",
                                                                "notranslate pull-left line-height-1 tagged-emp small-text teal   emp-2931"},
                                                               {"data-emp-id",
                                                                "2931"},
                                                               {"href",
                                                                "/sales/Kent-Abernathy-review-2931/"}
                                                             ],
                                                             ["\r\n                                             Kent Abernathy\r\n                                         "]}
                                                          ]}
                                                       ]}
                                                    ]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 pad-none pad-top-sm "}
                                                    ],
                                                    [
                                                      {"span",
                                                       [{"class", "small-text"}],
                                                       ["Other Employees :"]},
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "italic font-13 notranslate"}
                                                       ],
                                                       ["Doyle Dougan, Kent Abernathy, Doyle Dougan "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment,
                                              " SOCIAL MEDIA AND REVIEW ACTIONS "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 pad-none review-hide margin-top-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-left"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76878&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People"},
                                                      {"onclick",
                                                       "window.open('https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76878&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Twitter"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_twitter_sm.png"}
                                                       ], []}
                                                    ]},
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76878"},
                                                      {"onclick",
                                                       "window.open('http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76878', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Facebook"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_facebook_sm.png"}
                                                       ], []}
                                                    ]}
                                                 ]},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "pull-left margin-left-md"}
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "javascript:window.reportReview(76878); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Report"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"}, 
                                                      {"onclick",
                                                       "window.open('/dealer/respond.aspx?dealerId=23685&commentId=76878', 'report', 'toolbar=no,scrollbars=yes,location=no,width=575,height=465,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Respond"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/consumer/dealer/23685/review/76878/print', 'report', 'toolbar=no,scrollbars=yes,location=no,width=720,height=400,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Print"]}
                                                 ]}
                                              ]},
                                             {:comment, " PUBLIC MESSAGES "},
                                             {:comment, " WAS HELPFUL SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 margin-bottom-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-right"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"class", "helpful-button"},
                                                      {"onclick",
                                                       "javascript:MarkReviewHelpful(76878, this); return false;"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class",
                                                          "pull-left margin-right-sm"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                                                       ], []},
                                                      " Helpful ",
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "helpful-count display-none"},
                                                         {"id",
                                                          "helpful_count_76878"}
                                                       ], ["0"]}
                                                    ]}
                                                 ]}
                                              ]}
                                           ]}
                                        ]},
                                       {"style", [],
                                        ["\r\n    \r\n    .review-response {\r\n        overflow: hidden;\r\n    }\r\n\r\n    .open .review-response {\r\n        max-height: none;\r\n    }\r\n\r\n     @media (max-width: 767px) {\r\n         .public-messages {\r\n             border-top: none !important;\r\n             margin-left: 0 !important;\r\n             margin-top: 5px !important;\r\n             padding-top: 0 !important;\r\n         }\r\n\r\n         .review-hide {\r\n             display: none !important;\r\n         }\r\n\r\n         .open .review-hide{\r\n             display: block !important;\r\n         }\r\n     }\r\n"]},
                                       {"div",
                                        [
                                          {"class",
                                           "review-entry col-xs-12 text-left pad-none pad-top-lg  border-bottom-teal-lt"}
                                        ],
                                        [
                                          {"a", [{"name", "r76872"}], []},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-3 pad-left-none text-center review-date margin-bottom-md"}
                                           ],
                                           [
                                             {"div",
                                              [
                                                {"class",
                                                 "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}
                                              ], ["May 29, 2009"]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-12 pad-none dealership-rating"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static visible-xs pad-none margin-none rating-50 pull-right"}
                                                 ], []}, 
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static hidden-xs rating-50 margin-center"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                                                 ], ["SALES VISIT - NEW"]}
                                              ]}
                                           ]},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-9 pad-none review-wrapper"}
                                           ],
                                           [
                                             {:comment, " REVIEW TITLE, USER"},
                                             {"div",
                                              [
                                                {"class",
                                                 "margin-bottom-sm line-height-150"}
                                              ],
                                              [
                                                {"h3",
                                                 [
                                                   {"class",
                                                    "no-format inline italic-bolder font-20 dark-grey"}
                                                 ],
                                                 ["\"McKaig is the best car and truck dealer I have ever dealt...\""]},
                                                {"span",
                                                 [
                                                   {"class",
                                                    "italic font-18 black notranslate"}
                                                 ], ["- drumdoc6"]}
                                              ]},
                                             {:comment, " REVIEW BODY "},
                                             {"div",
                                              [{"class", "tr margin-top-md"}],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "td text-left valign-top "}
                                                 ],
                                                 [
                                                   {"p",
                                                    [
                                                      {"class",
                                                       "font-16 review-content margin-bottom-none line-height-25"}
                                                    ],
                                                    ["McKaig is the best car and truck dealer I have ever dealt with, because of their no-nonsense deals and trades and the most friendly service dept. I have seen.  Service is always prompt and loaners are available when needed to run errands! We have switched from imports to Chevrolets primarily because of McKaig."]},
                                                   {"a",
                                                    [
                                                      {"id", "76872"},
                                                      {"class",
                                                       "read-more-toggle pointer line-height-25 small-text block margin-bottom-md"}
                                                    ], ["Read More"]}
                                                 ]}
                                              ]},
                                             {:comment, " REVIEW RATINGS - ALL "},
                                             {"div",
                                              [
                                                {"class",
                                                 "pull-left pad-left-md pad-right-md bg-grey-lt margin-bottom-md review-ratings-all review-hide"}
                                              ],
                                              [
                                                {:comment,
                                                 " REVIEW RATING - CUSTOMER SERVICE "},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                                                 ],
                                                 [
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"} 
                                                       ], ["Customer Service"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - QUALITY OF WORK "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Quality of Work"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - FRIENDLINESS "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Friendliness"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - PRICING "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Pricing"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - EXPERIENCE "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td lt-grey small-text"}
                                                       ], ["Overall Experience"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - RECOMMEND DEALER "},
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Recommend Dealer"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td small-text boldest"} 
                                                       ],
                                                       ["\r\n                Yes\r\n            "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment, " EMPLOYEE SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "clear-fix  margin-top-sm"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 lt-grey pad-left-none employees-wrapper"}
                                                 ],
                                                 [
                                                   {"div",
                                                    [{"class", "small-text"}],
                                                    ["Employees Worked With "]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 col-sm-6 col-md-4 pad-left-none pad-top-sm pad-bottom-sm review-employee"}
                                                    ],
                                                    [
                                                      {"div", [{"class", "table"}],
                                                       [
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td square-image employee-image"},
                                                            {"style",
                                                             "background-image: url(https://cdn-user.dealerrater.com/images/dealer/23685/employees/a7dcab6d-fbd7-4f2e-bab4-6c23a1c8e625.jpg)"}
                                                          ], []},
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td valign-bottom pad-left-md pad-top-none pad-bottom-lg"}
                                                          ],
                                                          [
                                                            {"a",
                                                             [
                                                               {"class",
                                                                "notranslate pull-left line-height-1 tagged-emp small-text teal  margin-right-sm emp-54375"},
                                                               {"data-emp-id",
                                                                "54375"},
                                                               {"href",
                                                                "/sales/Mike-Lambert-review-54375/"}
                                                             ],
                                                             ["\r\n                                             Mike Lambert\r\n                                         "]}
                                                          ]}
                                                       ]}
                                                    ]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 col-sm-6 col-md-4 pad-left-none pad-top-sm pad-bottom-sm review-employee"}
                                                    ],
                                                    [
                                                      {"div", [{"class", "table"}],
                                                       [
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td square-image employee-image"},
                                                            {"style",
                                                             "background-image: url(https://cdn-user.dealerrater.com/images/dealer/23685/employees/d3c119d4-6297-43a4-9b38-1a4b992313ac.jpg)"}
                                                          ], []},
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td valign-bottom pad-left-md pad-top-none pad-bottom-lg"}
                                                          ],
                                                          [
                                                            {"a",
                                                             [
                                                               {"class",
                                                                "notranslate pull-left line-height-1 tagged-emp small-text teal   emp-2931"},
                                                               {"data-emp-id",
                                                                "2931"},
                                                               {"href",
                                                                "/sales/Kent-Abernathy-review-2931/"}
                                                             ],
                                                             ["\r\n                                             Kent Abernathy\r\n                                         "]}
                                                          ]}
                                                       ]}
                                                    ]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 pad-none pad-top-sm "}
                                                    ],
                                                    [
                                                      {"span",
                                                       [{"class", "small-text"}],
                                                       ["Other Employees :"]},
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "italic font-13 notranslate"}
                                                       ],
                                                       ["Kent Abernathy, Doyle Dougan, Mike Lambert, Doyle Dougan "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment,
                                              " SOCIAL MEDIA AND REVIEW ACTIONS "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 pad-none review-hide margin-top-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-left"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76872&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People"},
                                                      {"onclick",
                                                       "window.open('https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76872&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Twitter"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_twitter_sm.png"}
                                                       ], []}
                                                    ]},
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76872"},
                                                      {"onclick",
                                                       "window.open('http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76872', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Facebook"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_facebook_sm.png"}
                                                       ], []}
                                                    ]}
                                                 ]},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "pull-left margin-left-md"}
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "javascript:window.reportReview(76872); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Report"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/dealer/respond.aspx?dealerId=23685&commentId=76872', 'report', 'toolbar=no,scrollbars=yes,location=no,width=575,height=465,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Respond"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/consumer/dealer/23685/review/76872/print', 'report', 'toolbar=no,scrollbars=yes,location=no,width=720,height=400,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Print"]}
                                                 ]}
                                              ]},
                                             {:comment, " PUBLIC MESSAGES "},
                                             {:comment, " WAS HELPFUL SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 margin-bottom-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-right"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"class", "helpful-button"},
                                                      {"onclick",
                                                       "javascript:MarkReviewHelpful(76872, this); return false;"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class",
                                                          "pull-left margin-right-sm"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                                                       ], []},
                                                      " Helpful ",
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "helpful-count display-none"},
                                                         {"id",
                                                          "helpful_count_76872"}
                                                       ], ["0"]}
                                                    ]}
                                                 ]}
                                              ]}
                                           ]}
                                        ]},
                                       {"style", [],
                                        ["\r\n    \r\n    .review-response {\r\n        overflow: hidden;\r\n    }\r\n\r\n    .open .review-response {\r\n        max-height: none;\r\n    }\r\n\r\n     @media (max-width: 767px) {\r\n         .public-messages {\r\n             border-top: none !important;\r\n             margin-left: 0 !important;\r\n             margin-top: 5px !important;\r\n             padding-top: 0 !important;\r\n         }\r\n\r\n         .review-hide {\r\n             display: none !important;\r\n         }\r\n\r\n         .open .review-hide{\r\n             display: block !important;\r\n         }\r\n     }\r\n"]},
                                       {"div",
                                        [
                                          {"class",
                                           "review-entry col-xs-12 text-left pad-none pad-top-lg  border-bottom-teal-lt"}
                                        ],
                                        [
                                          {"a", [{"name", "r76805"}], []},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-3 pad-left-none text-center review-date margin-bottom-md"}
                                           ],
                                           [
                                             {"div",
                                              [
                                                {"class",
                                                 "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}
                                              ], ["May 28, 2009"]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-12 pad-none dealership-rating"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static visible-xs pad-none margin-none rating-50 pull-right"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static hidden-xs rating-48 margin-center"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                                                 ], ["SERVICE VISIT"]}
                                              ]}
                                           ]},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-9 pad-none review-wrapper"}
                                           ],
                                           [
                                             {:comment, " REVIEW TITLE, USER"},
                                             {"div",
                                              [
                                                {"class",
                                                 "margin-bottom-sm line-height-150"}
                                              ],
                                              [
                                                {"h3",
                                                 [
                                                   {"class",
                                                    "no-format inline italic-bolder font-20 dark-grey"}
                                                 ],
                                                 ["\"I have purchased 3 Suburbans & 3 Malibus from McKaig over...\""]},
                                                {"span",
                                                 [
                                                   {"class",
                                                    "italic font-18 black notranslate"}
                                                 ], ["- Paul Folzenlogen"]}
                                              ]},
                                             {:comment, " REVIEW BODY "},
                                             {"div",
                                              [{"class", "tr margin-top-md"}],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "td text-left valign-top "}
                                                 ],
                                                 [
                                                   {"p",
                                                    [
                                                      {"class",
                                                       "font-16 review-content margin-bottom-none line-height-25"}
                                                    ],
                                                    ["I have purchased 3 Suburbans & 3 Malibus from McKaig over the yrs.. They are an excellent dealership to do business with. Much better than other local GM & Ford dealerhips. They sell vehicles at a reasonable price & their service dept headed by Doyle is second to none. If they were ever to go out of business I'd probably buy Ford brands rather than deal with very large dealers like Peters Chevrolet."]},
                                                   {"a",
                                                    [
                                                      {"id", "76805"},
                                                      {"class",
                                                       "read-more-toggle pointer line-height-25 small-text block margin-bottom-md"}
                                                    ], ["Read More"]}
                                                 ]}
                                              ]},
                                             {:comment, " REVIEW RATINGS - ALL "},
                                             {"div", 
                                              [
                                                {"class",
                                                 "pull-left pad-left-md pad-right-md bg-grey-lt margin-bottom-md review-ratings-all review-hide"}
                                              ],
                                              [
                                                {:comment,
                                                 " REVIEW RATING - CUSTOMER SERVICE "},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                                                 ],
                                                 [
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Customer Service"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - QUALITY OF WORK "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Quality of Work"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - FRIENDLINESS "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Friendliness"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - PRICING "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Pricing"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-40 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - EXPERIENCE "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td lt-grey small-text"}
                                                       ], ["Overall Experience"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - RECOMMEND DEALER "},
                                                   {"div", [{"class", "tr"}],
                                                    [ 
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Recommend Dealer"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td small-text boldest"}
                                                       ],
                                                       ["\r\n                Yes\r\n            "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment, " EMPLOYEE SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "clear-fix  margin-top-sm"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 lt-grey pad-left-none employees-wrapper"}
                                                 ],
                                                 [
                                                   {"div",
                                                    [{"class", "small-text"}],
                                                    ["Employees Worked With "]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 col-sm-6 col-md-4 pad-left-none pad-top-sm pad-bottom-sm review-employee"}
                                                    ],
                                                    [
                                                      {"div", [{"class", "table"}],
                                                       [
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td square-image employee-image"},
                                                            {"style",
                                                             "background-image: url(https://cdn-user.dealerrater.com/images/dealer/23685/employees/d3c119d4-6297-43a4-9b38-1a4b992313ac.jpg)"}
                                                          ], []},
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td valign-bottom pad-left-md pad-top-none pad-bottom-lg"}
                                                          ],
                                                          [
                                                            {"a",
                                                             [
                                                               {"class",
                                                                "notranslate pull-left line-height-1 tagged-emp small-text teal   emp-2931"},
                                                               {"data-emp-id",
                                                                "2931"},
                                                               {"href",
                                                                "/sales/Kent-Abernathy-review-2931/"}
                                                             ],
                                                             ["\r\n                                             Kent Abernathy\r\n                                         "]}
                                                          ]}
                                                       ]}
                                                    ]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 pad-none pad-top-sm "}
                                                    ],
                                                    [
                                                      {"span",
                                                       [{"class", "small-text"}],
                                                       ["Other Employees :"]},
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "italic font-13 notranslate"}
                                                       ],
                                                       ["Kent Abernathy, Doyle Doogan, Philip Anderson, Doyle Dougan "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment,
                                              " SOCIAL MEDIA AND REVIEW ACTIONS "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 pad-none review-hide margin-top-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-left"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76805&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People"},
                                                      {"onclick",
                                                       "window.open('https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76805&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Twitter"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_twitter_sm.png"}
                                                       ], []}
                                                    ]},
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76805"},
                                                      {"onclick",
                                                       "window.open('http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76805', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Facebook"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_facebook_sm.png"}
                                                       ], []}
                                                    ]}
                                                 ]},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "pull-left margin-left-md"}
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "javascript:window.reportReview(76805); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Report"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/dealer/respond.aspx?dealerId=23685&commentId=76805', 'report', 'toolbar=no,scrollbars=yes,location=no,width=575,height=465,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Respond"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/consumer/dealer/23685/review/76805/print', 'report', 'toolbar=no,scrollbars=yes,location=no,width=720,height=400,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Print"]}
                                                 ]}
                                              ]},
                                             {:comment, " PUBLIC MESSAGES "},
                                             {:comment, " WAS HELPFUL SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 margin-bottom-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-right"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"class", "helpful-button"},
                                                      {"onclick",
                                                       "javascript:MarkReviewHelpful(76805, this); return false;"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class",
                                                          "pull-left margin-right-sm"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                                                       ], []},
                                                      " Helpful ",
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "helpful-count display-none"},
                                                         {"id",
                                                          "helpful_count_76805"}
                                                       ], ["0"]}
                                                    ]}
                                                 ]}
                                              ]}
                                           ]}
                                        ]},
                                       {"style", [],
                                        ["\r\n    \r\n    .review-response {\r\n        overflow: hidden;\r\n    }\r\n\r\n    .open .review-response {\r\n        max-height: none;\r\n    }\r\n\r\n     @media (max-width: 767px) {\r\n         .public-messages {\r\n             border-top: none !important;\r\n             margin-left: 0 !important;\r\n             margin-top: 5px !important;\r\n             padding-top: 0 !important;\r\n         }\r\n\r\n         .review-hide {\r\n             display: none !important;\r\n         }\r\n\r\n         .open .review-hide{\r\n             display: block !important;\r\n         }\r\n     }\r\n"]},
                                       {"div",
                                        [
                                          {"class",
                                           "review-entry col-xs-12 text-left pad-none pad-top-lg  border-bottom-teal-lt"}
                                        ],
                                        [
                                          {"a", [{"name", "r76785"}], []},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-3 pad-left-none text-center review-date margin-bottom-md"}
                                           ],
                                           [
                                             {"div",
                                              [
                                                {"class",
                                                 "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}
                                              ], ["May 28, 2009"]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-12 pad-none dealership-rating"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static visible-xs pad-none margin-none rating-50 pull-right"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static hidden-xs rating-50 margin-center"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                                                 ], ["SALES VISIT - NEW"]}
                                              ]}
                                           ]},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-9 pad-none review-wrapper"}
                                           ],
                                           [
                                             {:comment, " REVIEW TITLE, USER"},
                                             {"div",
                                              [
                                                {"class",
                                                 "margin-bottom-sm line-height-150"}
                                              ],
                                              [
                                                {"h3",
                                                 [
                                                   {"class",
                                                    "no-format inline italic-bolder font-20 dark-grey"}
                                                 ],
                                                 ["\"We have been McKaig's customers for many, many years. We...\""]},
                                                {"span",
                                                 [
                                                   {"class",
                                                    "italic font-18 black notranslate"}
                                                 ], ["- krnblkmn"]}
                                              ]},
                                             {:comment, " REVIEW BODY "},
                                             {"div",
                                              [{"class", "tr margin-top-md"}],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "td text-left valign-top "}
                                                 ],
                                                 [
                                                   {"p",
                                                    [
                                                      {"class",
                                                       "font-16 review-content margin-bottom-none line-height-25"}
                                                    ],
                                                    ["We have been McKaig's customers for many, many years. We shop at home because it's the right thing to do for our community.  However, we would shop at McKaig's even if we didn't live in Gladewater because of the outstanding service before, during and after the sale.  We feel we've always received a good deal on purchases and gotten prompt, courteous and outstanding service from the service department.  Years ago, when we were young and stupid, we purchased a new vehicle from a huge \"volume\" dealer in a much larger city.  The whole experience was a nightmare from beginning to end.  We vowed then to never make the same mistake, and we haven't.  We've purchased new and used vehicles and even used their service department on a car we inherited.  Every experience has been a pleasant one.  We'd never go anywhere else.\r\n\r\nKaren Blackmon\r\n2101 Hendricks St.\r\nGladewater, TX   75647\r\n903/845-6002"]},
                                                   {"a",
                                                    [
                                                      {"id", "76785"},
                                                      {"class",
                                                       "read-more-toggle pointer line-height-25 small-text block margin-bottom-md"}
                                                    ], ["Read More"]}
                                                 ]}
                                              ]},
                                             {:comment, " REVIEW RATINGS - ALL "},
                                             {"div",
                                              [
                                                {"class",
                                                 "pull-left pad-left-md pad-right-md bg-grey-lt margin-bottom-md review-ratings-all review-hide"} 
                                              ],
                                              [
                                                {:comment,
                                                 " REVIEW RATING - CUSTOMER SERVICE "},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                                                 ],
                                                 [
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Customer Service"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - QUALITY OF WORK "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Quality of Work"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - FRIENDLINESS "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Friendliness"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - PRICING "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Pricing"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - EXPERIENCE "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td lt-grey small-text"}
                                                       ], ["Overall Experience"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - RECOMMEND DEALER "},
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Recommend Dealer"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td small-text boldest"}
                                                       ],
                                                       ["\r\n                Yes\r\n            "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment, " EMPLOYEE SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "clear-fix  margin-top-sm"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 lt-grey pad-left-none employees-wrapper"}
                                                 ],
                                                 [
                                                   {"div",
                                                    [{"class", "small-text"}],
                                                    ["Employees Worked With "]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 col-sm-6 col-md-4 pad-left-none pad-top-sm pad-bottom-sm review-employee"}
                                                    ],
                                                    [
                                                      {"div", [{"class", "table"}],
                                                       [
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td square-image employee-image"},
                                                            {"style",
                                                             "background-image: url(https://cdn-user.dealerrater.com/images/dealer/23685/employees/a7dcab6d-fbd7-4f2e-bab4-6c23a1c8e625.jpg)"}
                                                          ], []},
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td valign-bottom pad-left-md pad-top-none pad-bottom-lg"}
                                                          ],
                                                          [
                                                            {"a",
                                                             [
                                                               {"class",
                                                                "notranslate pull-left line-height-1 tagged-emp small-text teal  margin-right-sm emp-54375"},
                                                               {"data-emp-id",
                                                                "54375"},
                                                               {"href",
                                                                "/sales/Mike-Lambert-review-54375/"}
                                                             ],
                                                             ["\r\n                                             Mike Lambert\r\n                                         "]}
                                                          ]}
                                                       ]}
                                                    ]},
                                                   {"div", 
                                                    [
                                                      {"class",
                                                       "col-xs-12 col-sm-6 col-md-4 pad-left-none pad-top-sm pad-bottom-sm review-employee"}
                                                    ],
                                                    [
                                                      {"div", [{"class", "table"}],
                                                       [
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td square-image employee-image"},
                                                            {"style",
                                                             "background-image: url(https://cdn-user.dealerrater.com/images/dealer/23685/employees/d3c119d4-6297-43a4-9b38-1a4b992313ac.jpg)"}
                                                          ], []},
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td valign-bottom pad-left-md pad-top-none pad-bottom-lg"}
                                                          ],
                                                          [
                                                            {"a",
                                                             [
                                                               {"class",
                                                                "notranslate pull-left line-height-1 tagged-emp small-text teal   emp-2931"},
                                                               {"data-emp-id",
                                                                "2931"},
                                                               {"href",
                                                                "/sales/Kent-Abernathy-review-2931/"}
                                                             ],
                                                             ["\r\n                                             Kent Abernathy\r\n                                         "]}
                                                          ]}
                                                       ]}
                                                    ]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 pad-none pad-top-sm "}
                                                    ],
                                                    [
                                                      {"span",
                                                       [{"class", "small-text"}],
                                                       ["Other Employees :"]},
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "italic font-13 notranslate"}
                                                       ],
                                                       ["Mike Lambert, Kent Abernathy, Doyle Dougan, Doyle Dougan "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment,
                                              " SOCIAL MEDIA AND REVIEW ACTIONS "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 pad-none review-hide margin-top-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-left"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76785&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People"},
                                                      {"onclick",
                                                       "window.open('https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76785&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Twitter"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_twitter_sm.png"}
                                                       ], []}
                                                    ]},
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76785"},
                                                      {"onclick",
                                                       "window.open('http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76785', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Facebook"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_facebook_sm.png"}
                                                       ], []}
                                                    ]}
                                                 ]},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "pull-left margin-left-md"}
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "javascript:window.reportReview(76785); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Report"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/dealer/respond.aspx?dealerId=23685&commentId=76785', 'report', 'toolbar=no,scrollbars=yes,location=no,width=575,height=465,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Respond"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/consumer/dealer/23685/review/76785/print', 'report', 'toolbar=no,scrollbars=yes,location=no,width=720,height=400,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Print"]}
                                                 ]}
                                              ]},
                                             {:comment, " PUBLIC MESSAGES "},
                                             {:comment, " WAS HELPFUL SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 margin-bottom-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-right"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"class", "helpful-button"},
                                                      {"onclick",
                                                       "javascript:MarkReviewHelpful(76785, this); return false;"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class",
                                                          "pull-left margin-right-sm"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                                                       ], []},
                                                      " Helpful ",
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "helpful-count display-none"},
                                                         {"id",
                                                          "helpful_count_76785"}
                                                       ], ["0"]}
                                                    ]}
                                                 ]}
                                              ]}
                                           ]}
                                        ]},
                                       {"style", [],
                                        ["\r\n    \r\n    .review-response {\r\n        overflow: hidden;\r\n    }\r\n\r\n    .open .review-response {\r\n        max-height: none;\r\n    }\r\n\r\n     @media (max-width: 767px) {\r\n         .public-messages {\r\n             border-top: none !important;\r\n             margin-left: 0 !important;\r\n             margin-top: 5px !important;\r\n             padding-top: 0 !important;\r\n         }\r\n\r\n         .review-hide {\r\n             display: none !important;\r\n         }\r\n\r\n         .open .review-hide{\r\n             display: block !important;\r\n         }\r\n     }\r\n"]},
                                       {"div",
                                        [
                                          {"class",
                                           "review-entry col-xs-12 text-left pad-none pad-top-lg  border-bottom-teal-lt"}
                                        ],
                                        [
                                          {"a", [{"name", "r76771"}], []},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-3 pad-left-none text-center review-date margin-bottom-md"}
                                           ],
                                           [
                                             {"div",
                                              [
                                                {"class",
                                                 "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}
                                              ], ["May 28, 2009"]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-12 pad-none dealership-rating"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static visible-xs pad-none margin-none rating-50 pull-right"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static hidden-xs rating-50 margin-center"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                                                 ], ["SALES VISIT - NEW"]}
                                              ]}
                                           ]},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-9 pad-none review-wrapper"}
                                           ],
                                           [
                                             {:comment, " REVIEW TITLE, USER"},
                                             {"div",
                                              [
                                                {"class",
                                                 "margin-bottom-sm line-height-150"}
                                              ],
                                              [
                                                {"h3",
                                                 [
                                                   {"class",
                                                    "no-format inline italic-bolder font-20 dark-grey"}
                                                 ],
                                                 ["\"We have been patronizing McKaig Chevrolet for nearly 40...\""]},
                                                {"span",
                                                 [
                                                   {"class",
                                                    "italic font-18 black notranslate"}
                                                 ], ["- jedpkd"]}
                                              ]},
                                             {:comment, " REVIEW BODY "},
                                             {"div",
                                              [{"class", "tr margin-top-md"}],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "td text-left valign-top "}
                                                 ],
                                                 [
                                                   {"p",
                                                    [
                                                      {"class",
                                                       "font-16 review-content margin-bottom-none line-height-25"}
                                                    ],
                                                    ["We have been patronizing McKaig Chevrolet for nearly 40 years. We bought a few vehicles from other dealerships, but ALWAYS come back to McKaig Chevrolet. Their overall service is above all others. They are outstanding in all departments. We rely on them for all our vehicle needs, and they go above and beyond to take care of us. "]},
                                                   {"a",
                                                    [
                                                      {"id", "76771"},
                                                      {"class",
                                                       "read-more-toggle pointer line-height-25 small-text block margin-bottom-md"}
                                                    ], ["Read More"]}
                                                 ]}
                                              ]},
                                             {:comment, " REVIEW RATINGS - ALL "},
                                             {"div",
                                              [
                                                {"class",
                                                 "pull-left pad-left-md pad-right-md bg-grey-lt margin-bottom-md review-ratings-all review-hide"}
                                              ],
                                              [
                                                {:comment,
                                                 " REVIEW RATING - CUSTOMER SERVICE "},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                                                 ],
                                                 [
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Customer Service"]},
                                                      {"div",
                                                       [
                                                         {"class", 
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - QUALITY OF WORK "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Quality of Work"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - FRIENDLINESS "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Friendliness"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"} 
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - PRICING "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Pricing"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - EXPERIENCE "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td lt-grey small-text"}
                                                       ], ["Overall Experience"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - RECOMMEND DEALER "},
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Recommend Dealer"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td small-text boldest"}
                                                       ],
                                                       ["\r\n                Yes\r\n            "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment, " EMPLOYEE SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "clear-fix  margin-top-sm"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 lt-grey pad-left-none employees-wrapper"}
                                                 ],
                                                 [
                                                   {"div",
                                                    [{"class", "small-text"}],
                                                    ["Employees Worked With "]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 pad-none pad-top-sm "}
                                                    ],
                                                    [
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "italic font-13 notranslate"}
                                                       ],
                                                       ["Mainly:  Phillip Anderson, Doyle Dougan, Doyle Dougan "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment,
                                              " SOCIAL MEDIA AND REVIEW ACTIONS "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 pad-none review-hide margin-top-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-left"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76771&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People"},
                                                      {"onclick",
                                                       "window.open('https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76771&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Twitter"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_twitter_sm.png"} 
                                                       ], []}
                                                    ]},
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76771"},
                                                      {"onclick",
                                                       "window.open('http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76771', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Facebook"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_facebook_sm.png"}
                                                       ], []}
                                                    ]}
                                                 ]},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "pull-left margin-left-md"}
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "javascript:window.reportReview(76771); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Report"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/dealer/respond.aspx?dealerId=23685&commentId=76771', 'report', 'toolbar=no,scrollbars=yes,location=no,width=575,height=465,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Respond"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/consumer/dealer/23685/review/76771/print', 'report', 'toolbar=no,scrollbars=yes,location=no,width=720,height=400,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Print"]}
                                                 ]}
                                              ]},
                                             {:comment, " PUBLIC MESSAGES "},
                                             {:comment, " WAS HELPFUL SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 margin-bottom-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-right"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"class", "helpful-button"},
                                                      {"onclick",
                                                       "javascript:MarkReviewHelpful(76771, this); return false;"} 
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class",
                                                          "pull-left margin-right-sm"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                                                       ], []},
                                                      " Helpful ",
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "helpful-count display-none"},
                                                         {"id",
                                                          "helpful_count_76771"}
                                                       ], ["0"]}
                                                    ]}
                                                 ]}
                                              ]}
                                           ]}
                                        ]},
                                       {"style", [],
                                        ["\r\n    \r\n    .review-response {\r\n        overflow: hidden;\r\n    }\r\n\r\n    .open .review-response {\r\n        max-height: none;\r\n    }\r\n\r\n     @media (max-width: 767px) {\r\n         .public-messages {\r\n             border-top: none !important;\r\n             margin-left: 0 !important;\r\n             margin-top: 5px !important;\r\n             padding-top: 0 !important;\r\n         }\r\n\r\n         .review-hide {\r\n             display: none !important;\r\n         }\r\n\r\n         .open .review-hide{\r\n             display: block !important;\r\n         }\r\n     }\r\n"]},
                                       {"div",
                                        [
                                          {"class",
                                           "review-entry col-xs-12 text-left pad-none pad-top-lg  border-bottom-teal-lt"}
                                        ],
                                        [
                                          {"a", [{"name", "r76761"}], []},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-3 pad-left-none text-center review-date margin-bottom-md"}
                                           ],
                                           [
                                             {"div",
                                              [
                                                {"class",
                                                 "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}
                                              ], ["May 28, 2009"]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-12 pad-none dealership-rating"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class", 
                                                    "rating-static visible-xs pad-none margin-none rating-50 pull-right"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static hidden-xs rating-50 margin-center"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                                                 ], ["SERVICE VISIT"]}
                                              ]}
                                           ]},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-9 pad-none review-wrapper"}
                                           ],
                                           [
                                             {:comment, " REVIEW TITLE, USER"},
                                             {"div",
                                              [
                                                {"class",
                                                 "margin-bottom-sm line-height-150"}
                                              ],
                                              [
                                                {"h3",
                                                 [
                                                   {"class",
                                                    "no-format inline italic-bolder font-20 dark-grey"}
                                                 ],
                                                 ["\"I've bought over eleven vehicles at this dealership in...\""]},
                                                {"span",
                                                 [
                                                   {"class",
                                                    "italic font-18 black notranslate"}
                                                 ], ["- bpriddy"]}
                                              ]},
                                             {:comment, " REVIEW BODY "},
                                             {"div",
                                              [{"class", "tr margin-top-md"}],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "td text-left valign-top "}
                                                 ],
                                                 [
                                                   {"p",
                                                    [
                                                      {"class",
                                                       "font-16 review-content margin-bottom-none line-height-25"}
                                                    ],
                                                    ["I've bought over eleven vehicles at this dealership in the past 5 1/2 years for myself and my company. We continue to have our vehicles serviced on a continual basis. They are a very customer driven organization, and I feel thankful to have them. eryone there remembers you by name, and always has a smile on theirface when you come into the store. "]},
                                                   {"a",
                                                    [
                                                      {"id", "76761"},
                                                      {"class",
                                                       "read-more-toggle pointer line-height-25 small-text block margin-bottom-md"}
                                                    ], ["Read More"]}
                                                 ]}
                                              ]},
                                             {:comment, " REVIEW RATINGS - ALL "},
                                             {"div",
                                              [
                                                {"class",
                                                 "pull-left pad-left-md pad-right-md bg-grey-lt margin-bottom-md review-ratings-all review-hide"}
                                              ],
                                              [
                                                {:comment,
                                                 " REVIEW RATING - CUSTOMER SERVICE "},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                                                 ],
                                                 [
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Customer Service"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - QUALITY OF WORK "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Quality of Work"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - FRIENDLINESS "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Friendliness"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - PRICING "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"} 
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Pricing"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - EXPERIENCE "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td lt-grey small-text"}
                                                       ], ["Overall Experience"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - RECOMMEND DEALER "},
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Recommend Dealer"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td small-text boldest"}
                                                       ],
                                                       ["\r\n                Yes\r\n            "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment, " EMPLOYEE SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "clear-fix  margin-top-sm"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 lt-grey pad-left-none employees-wrapper"}
                                                 ],
                                                 [
                                                   {"div",
                                                    [{"class", "small-text"}],
                                                    ["Employees Worked With "]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 col-sm-6 col-md-4 pad-left-none pad-top-sm pad-bottom-sm review-employee"}
                                                    ],
                                                    [
                                                      {"div", [{"class", "table"}],
                                                       [
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td square-image employee-image"},
                                                            {"style",
                                                             "background-image: url(https://cdn-user.dealerrater.com/images/dealer/23685/employees/d3c119d4-6297-43a4-9b38-1a4b992313ac.jpg)"}
                                                          ], []},
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td valign-bottom pad-left-md pad-top-none pad-bottom-lg"}
                                                          ],
                                                          [
                                                            {"a",
                                                             [
                                                               {"class",
                                                                "notranslate pull-left line-height-1 tagged-emp small-text teal   emp-2931"},
                                                               {"data-emp-id",
                                                                "2931"},
                                                               {"href",
                                                                "/sales/Kent-Abernathy-review-2931/"}
                                                             ],
                                                             ["\r\n                                             Kent Abernathy\r\n                                         "]}
                                                          ]}
                                                       ]}
                                                    ]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 pad-none pad-top-sm "}
                                                    ],
                                                    [
                                                      {"span",
                                                       [{"class", "small-text"}],
                                                       ["Other Employees :"]},
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "italic font-13 notranslate"}
                                                       ],
                                                       ["Kent Abernathy, and Doyle Duoghan, Doyle Dougan "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment,
                                              " SOCIAL MEDIA AND REVIEW ACTIONS "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 pad-none review-hide margin-top-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-left"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76761&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People"},
                                                      {"onclick",
                                                       "window.open('https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76761&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Twitter"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_twitter_sm.png"}
                                                       ], []}
                                                    ]},
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76761"},
                                                      {"onclick",
                                                       "window.open('http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76761', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Facebook"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_facebook_sm.png"}
                                                       ], []}
                                                    ]}
                                                 ]},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "pull-left margin-left-md"}
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "javascript:window.reportReview(76761); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Report"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/dealer/respond.aspx?dealerId=23685&commentId=76761', 'report', 'toolbar=no,scrollbars=yes,location=no,width=575,height=465,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Respond"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"}, 
                                                      {"onclick",
                                                       "window.open('/consumer/dealer/23685/review/76761/print', 'report', 'toolbar=no,scrollbars=yes,location=no,width=720,height=400,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Print"]}
                                                 ]}
                                              ]},
                                             {:comment, " PUBLIC MESSAGES "},
                                             {:comment, " WAS HELPFUL SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 margin-bottom-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-right"}],
                                                 [ 
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"class", "helpful-button"},
                                                      {"onclick",
                                                       "javascript:MarkReviewHelpful(76761, this); return false;"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class",
                                                          "pull-left margin-right-sm"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                                                       ], []},
                                                      " Helpful ",
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "helpful-count display-none"},
                                                         {"id",
                                                          "helpful_count_76761"}
                                                       ], ["0"]}
                                                    ]}
                                                 ]}
                                              ]}
                                           ]}
                                        ]},
                                       {"style", [],
                                        ["\r\n    \r\n    .review-response {\r\n        overflow: hidden;\r\n    }\r\n\r\n    .open .review-response {\r\n        max-height: none;\r\n    }\r\n\r\n     @media (max-width: 767px) {\r\n         .public-messages {\r\n             border-top: none !important;\r\n             margin-left: 0 !important;\r\n             margin-top: 5px !important;\r\n             padding-top: 0 !important;\r\n         }\r\n\r\n         .review-hide {\r\n             display: none !important;\r\n         }\r\n\r\n         .open .review-hide{\r\n             display: block !important;\r\n         }\r\n     }\r\n"]},
                                       {"div",
                                        [
                                          {"class",
                                           "review-entry col-xs-12 text-left pad-none pad-top-lg  border-bottom-teal-lt"}
                                        ],
                                        [
                                          {"a", [{"name", "r76758"}], []},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-3 pad-left-none text-center review-date margin-bottom-md"}
                                           ],
                                           [
                                             {"div",
                                              [
                                                {"class",
                                                 "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}
                                              ], ["May 28, 2009"]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-12 pad-none dealership-rating"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static visible-xs pad-none margin-none rating-40 pull-right"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static hidden-xs rating-50 margin-center"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                                                 ], ["SERVICE VISIT"]}
                                              ]}
                                           ]},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-9 pad-none review-wrapper"}
                                           ],
                                           [
                                             {:comment, " REVIEW TITLE, USER"},
                                             {"div",
                                              [
                                                {"class",
                                                 "margin-bottom-sm line-height-150"}
                                              ],
                                              [
                                                {"h3",
                                                 [
                                                   {"class",
                                                    "no-format inline italic-bolder font-20 dark-grey"}
                                                 ],
                                                 ["\"I have dealt primarily with Kent Abernathy, MIke LAmbert,...\""]},
                                                {"span",
                                                 [
                                                   {"class",
                                                    "italic font-18 black notranslate"}
                                                 ], ["- jkeller"]}
                                              ]},
                                             {:comment, " REVIEW BODY "},
                                             {"div",
                                              [{"class", "tr margin-top-md"}],
                                              [
                                                {"div",
                                                 [ 
                                                   {"class",
                                                    "td text-left valign-top "}
                                                 ],
                                                 [
                                                   {"p",
                                                    [
                                                      {"class",
                                                       "font-16 review-content margin-bottom-none line-height-25"}
                                                    ],
                                                    ["I have dealt primarily with Kent Abernathy, MIke LAmbert, & Doyle Duggan; however all of the staff have been friendly and helpful I prefer to schedule an appointment due to my work but I have had the need to drop in for service work and they have always accomodated my needs. "]},
                                                   {"a",
                                                    [
                                                      {"id", "76758"},
                                                      {"class",
                                                       "read-more-toggle pointer line-height-25 small-text block margin-bottom-md"}
                                                    ], ["Read More"]}
                                                 ]}
                                              ]},
                                             {:comment, " REVIEW RATINGS - ALL "},
                                             {"div",
                                              [
                                                {"class",
                                                 "pull-left pad-left-md pad-right-md bg-grey-lt margin-bottom-md review-ratings-all review-hide"}
                                              ],
                                              [
                                                {:comment,
                                                 " REVIEW RATING - CUSTOMER SERVICE "},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                                                 ],
                                                 [
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Customer Service"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - QUALITY OF WORK "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Quality of Work"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - FRIENDLINESS "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Friendliness"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - PRICING "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Pricing"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - EXPERIENCE "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td lt-grey small-text"}
                                                       ], ["Overall Experience"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - RECOMMEND DEALER "},
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Recommend Dealer"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td small-text boldest"}
                                                       ],
                                                       ["\r\n                Yes\r\n            "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment, " EMPLOYEE SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "clear-fix  margin-top-sm"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 lt-grey pad-left-none employees-wrapper"}
                                                 ],
                                                 [
                                                   {"div",
                                                    [{"class", "small-text"}],
                                                    ["Employees Worked With "]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 col-sm-6 col-md-4 pad-left-none pad-top-sm pad-bottom-sm review-employee"}
                                                    ],
                                                    [
                                                      {"div", [{"class", "table"}],
                                                       [
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td square-image employee-image"},
                                                            {"style",
                                                             "background-image: url(https://cdn-user.dealerrater.com/images/dealer/23685/employees/a7dcab6d-fbd7-4f2e-bab4-6c23a1c8e625.jpg)"}
                                                          ], []},
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td valign-bottom pad-left-md pad-top-none pad-bottom-lg"}
                                                          ],
                                                          [
                                                            {"a",
                                                             [
                                                               {"class",
                                                                "notranslate pull-left line-height-1 tagged-emp small-text teal  margin-right-sm emp-54375"},
                                                               {"data-emp-id",
                                                                "54375"},
                                                               {"href",
                                                                "/sales/Mike-Lambert-review-54375/"}
                                                             ],
                                                             ["\r\n                                             Mike Lambert\r\n                                         "]}
                                                          ]}
                                                       ]}
                                                    ]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 col-sm-6 col-md-4 pad-left-none pad-top-sm pad-bottom-sm review-employee"}
                                                    ],
                                                    [
                                                      {"div", [{"class", "table"}],
                                                       [
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td square-image employee-image"},
                                                            {"style",
                                                             "background-image: url(https://cdn-user.dealerrater.com/images/dealer/23685/employees/d3c119d4-6297-43a4-9b38-1a4b992313ac.jpg)"}
                                                          ], []},
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td valign-bottom pad-left-md pad-top-none pad-bottom-lg"}
                                                          ],
                                                          [
                                                            {"a",
                                                             [
                                                               {"class",
                                                                "notranslate pull-left line-height-1 tagged-emp small-text teal   emp-2931"},
                                                               {"data-emp-id",
                                                                "2931"},
                                                               {"href",
                                                                "/sales/Kent-Abernathy-review-2931/"}
                                                             ],
                                                             ["\r\n                                             Kent Abernathy\r\n                                         "]}
                                                          ]}
                                                       ]}
                                                    ]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 pad-none pad-top-sm "}
                                                    ],
                                                    [
                                                      {"span",
                                                       [{"class", "small-text"}],
                                                       ["Other Employees :"]},
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "italic font-13 notranslate"}
                                                       ],
                                                       ["Kent Abernathy, Mike Lambert, & Doyle Duggan, Doyle Dougan "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment,
                                              " SOCIAL MEDIA AND REVIEW ACTIONS "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 pad-none review-hide margin-top-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-left"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76758&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People"},
                                                      {"onclick",
                                                       "window.open('https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76758&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Twitter"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_twitter_sm.png"}
                                                       ], []}
                                                    ]},
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76758"},
                                                      {"onclick",
                                                       "window.open('http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76758', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Facebook"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_facebook_sm.png"}
                                                       ], []}
                                                    ]}
                                                 ]},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "pull-left margin-left-md"}
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "javascript:window.reportReview(76758); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Report"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/dealer/respond.aspx?dealerId=23685&commentId=76758', 'report', 'toolbar=no,scrollbars=yes,location=no,width=575,height=465,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Respond"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/consumer/dealer/23685/review/76758/print', 'report', 'toolbar=no,scrollbars=yes,location=no,width=720,height=400,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Print"]}
                                                 ]}
                                              ]},
                                             {:comment, " PUBLIC MESSAGES "},
                                             {:comment, " WAS HELPFUL SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 margin-bottom-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-right"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"class", "helpful-button"},
                                                      {"onclick",
                                                       "javascript:MarkReviewHelpful(76758, this); return false;"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class",
                                                          "pull-left margin-right-sm"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                                                       ], []},
                                                      " Helpful ",
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "helpful-count display-none"},
                                                         {"id",
                                                          "helpful_count_76758"}
                                                       ], ["0"]}
                                                    ]}
                                                 ]}
                                              ]}
                                           ]}
                                        ]},
                                       {"style", [],
                                        ["\r\n    \r\n    .review-response {\r\n        overflow: hidden;\r\n    }\r\n\r\n    .open .review-response {\r\n        max-height: none;\r\n    }\r\n\r\n     @media (max-width: 767px) {\r\n         .public-messages {\r\n             border-top: none !important;\r\n             margin-left: 0 !important;\r\n             margin-top: 5px !important;\r\n             padding-top: 0 !important;\r\n         }\r\n\r\n         .review-hide {\r\n             display: none !important;\r\n         }\r\n\r\n         .open .review-hide{\r\n             display: block !important;\r\n         }\r\n     }\r\n"]},
                                       {"div",
                                        [
                                          {"class",
                                           "review-entry col-xs-12 text-left pad-none pad-top-lg  border-bottom-teal-lt"}
                                        ],
                                        [
                                          {"a", [{"name", "r76757"}], []},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-3 pad-left-none text-center review-date margin-bottom-md"}
                                           ],
                                           [
                                             {"div",
                                              [
                                                {"class",
                                                 "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}
                                              ], ["May 28, 2009"]},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-6 col-sm-12 pad-none dealership-rating"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static visible-xs pad-none margin-none rating-45 pull-right"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "rating-static hidden-xs rating-50 margin-center"}
                                                 ], []},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                                                 ], ["SALES VISIT - NEW"]}
                                              ]}
                                           ]},
                                          {"div",
                                           [
                                             {"class",
                                              "col-xs-12 col-sm-9 pad-none review-wrapper"}
                                           ],
                                           [
                                             {:comment, " REVIEW TITLE, USER"},
                                             {"div",
                                              [
                                                {"class",
                                                 "margin-bottom-sm line-height-150"}
                                              ],
                                              [
                                                {"h3",
                                                 [
                                                   {"class",
                                                    "no-format inline italic-bolder font-20 dark-grey"}
                                                 ],
                                                 ["\"this is the best automobile dealer that I have ever dealt...\""]},
                                                {"span",
                                                 [
                                                   {"class",
                                                    "italic font-18 black notranslate"}
                                                 ], ["- sshore"]}
                                              ]},
                                             {:comment, " REVIEW BODY "},
                                             {"div",
                                              [{"class", "tr margin-top-md"}],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "td text-left valign-top "}
                                                 ],
                                                 [
                                                   {"p",
                                                    [
                                                      {"class",
                                                       "font-16 review-content margin-bottom-none line-height-25"}
                                                    ],
                                                    ["this is the best automobile dealer that I have ever dealt with.  During \"normal\" times, I buy 10-12 vehicles per year for my business.  This is a very professional and detail oriented dealer.  This dealer makes the selling and servicing of my vehicles a pleasure."]},
                                                   {"a",
                                                    [
                                                      {"id", "76757"},
                                                      {"class",
                                                       "read-more-toggle pointer line-height-25 small-text block margin-bottom-md"}
                                                    ], ["Read More"]}
                                                 ]}
                                              ]},
                                             {:comment, " REVIEW RATINGS - ALL "},
                                             {"div",
                                              [
                                                {"class",
                                                 "pull-left pad-left-md pad-right-md bg-grey-lt margin-bottom-md review-ratings-all review-hide"}
                                              ],
                                              [
                                                {:comment,
                                                 " REVIEW RATING - CUSTOMER SERVICE "},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                                                 ],
                                                 [
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Customer Service"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - QUALITY OF WORK "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Quality of Work"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - FRIENDLINESS "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Friendliness"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - PRICING "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Pricing"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - EXPERIENCE "},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "tr margin-bottom-md"}
                                                    ],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td lt-grey small-text"}
                                                       ], ["Overall Experience"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "rating-static-indv rating-50 margin-top-none td"}
                                                       ], []}
                                                    ]},
                                                   {:comment,
                                                    " REVIEW RATING - RECOMMEND DEALER "},
                                                   {"div", [{"class", "tr"}],
                                                    [
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "lt-grey small-text td"}
                                                       ], ["Recommend Dealer"]},
                                                      {"div",
                                                       [
                                                         {"class",
                                                          "td small-text boldest"}
                                                       ],
                                                       ["\r\n                Yes\r\n            "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment, " EMPLOYEE SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "clear-fix  margin-top-sm"}
                                              ],
                                              [
                                                {"div",
                                                 [
                                                   {"class",
                                                    "col-xs-12 lt-grey pad-left-none employees-wrapper"}
                                                 ],
                                                 [
                                                   {"div",
                                                    [{"class", "small-text"}],
                                                    ["Employees Worked With "]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 col-sm-6 col-md-4 pad-left-none pad-top-sm pad-bottom-sm review-employee"}
                                                    ],
                                                    [
                                                      {"div", [{"class", "table"}],
                                                       [
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td square-image employee-image"},
                                                            {"style",
                                                             "background-image: url(https://cdn-user.dealerrater.com/images/dealer/23685/employees/d3c119d4-6297-43a4-9b38-1a4b992313ac.jpg)"}
                                                          ], []},
                                                         {"div",
                                                          [
                                                            {"class",
                                                             "td valign-bottom pad-left-md pad-top-none pad-bottom-lg"}
                                                          ],
                                                          [
                                                            {"a",
                                                             [
                                                               {"class",
                                                                "notranslate pull-left line-height-1 tagged-emp small-text teal   emp-2931"},
                                                               {"data-emp-id",
                                                                "2931"},
                                                               {"href",
                                                                "/sales/Kent-Abernathy-review-2931/"}
                                                             ],
                                                             ["\r\n                                             Kent Abernathy\r\n                                         "]}
                                                          ]}
                                                       ]}
                                                    ]},
                                                   {"div",
                                                    [
                                                      {"class",
                                                       "col-xs-12 pad-none pad-top-sm "}
                                                    ],
                                                    [
                                                      {"span",
                                                       [{"class", "small-text"}],
                                                       ["Other Employees :"]},
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "italic font-13 notranslate"}
                                                       ],
                                                       ["Kent Abernathy, Doyle, Doyle Dougan "]}
                                                    ]}
                                                 ]}
                                              ]},
                                             {:comment,
                                              " SOCIAL MEDIA AND REVIEW ACTIONS "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 pad-none review-hide margin-top-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-left"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76757&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People"},
                                                      {"onclick",
                                                       "window.open('https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76757&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Twitter"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_twitter_sm.png"}
                                                       ], []}
                                                    ]},
                                                   {"a",
                                                    [
                                                      {"href",
                                                       "http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76757"},
                                                      {"onclick",
                                                       "window.open('http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76757', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
                                                      {"target", "_blank"},
                                                      {"rel", "nofollow"},
                                                      {"title", "Facebook"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class", "align-bottom"},
                                                         {"height", "20"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_facebook_sm.png"}
                                                       ], []}
                                                    ]}
                                                 ]},
                                                {"div",
                                                 [
                                                   {"class",
                                                    "pull-left margin-left-md"}
                                                 ],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "javascript:window.reportReview(76757); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Report"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/dealer/respond.aspx?dealerId=23685&commentId=76757', 'report', 'toolbar=no,scrollbars=yes,location=no,width=575,height=465,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Respond"]},
                                                   " |\r\n        ",
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"onclick",
                                                       "window.open('/consumer/dealer/23685/review/76757/print', 'report', 'toolbar=no,scrollbars=yes,location=no,width=720,height=400,resizable=yes'); return false;"},
                                                      {"class", "small-text"}
                                                    ], ["Print"]}
                                                 ]}
                                              ]},
                                             {:comment, " PUBLIC MESSAGES "},
                                             {:comment, " WAS HELPFUL SECTION "},
                                             {"div",
                                              [
                                                {"class",
                                                 "col-xs-12 margin-bottom-lg"}
                                              ],
                                              [
                                                {"div", [{"class", "pull-right"}],
                                                 [
                                                   {"a",
                                                    [
                                                      {"href", "#"},
                                                      {"class", "helpful-button"},
                                                      {"onclick",
                                                       "javascript:MarkReviewHelpful(76757, this); return false;"}
                                                    ],
                                                    [
                                                      {"img",
                                                       [
                                                         {"class",
                                                          "pull-left margin-right-sm"},
                                                         {"src",
                                                          "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                                                       ], []},
                                                      " Helpful ",
                                                      {"span",
                                                       [
                                                         {"class",
                                                          "helpful-count display-none"},
                                                         {"id",
                                                          "helpful_count_76757"}
                                                       ], ["0"]}
                                                    ]}
                                                 ]}
                                              ]}
                                           ]}
                                        ]},
                                       {"style", [],
                                        ["\r\n    \r\n    .review-response {\r\n        overflow: hidden;\r\n    }\r\n\r\n    .open .review-response {\r\n        max-height: none;\r\n    }\r\n\r\n     @media (max-width: 767px) {\r\n         .public-messages {\r\n             border-top: none !important;\r\n             margin-left: 0 !important;\r\n             margin-top: 5px !important;\r\n             padding-top: 0 !important;\r\n         }\r\n\r\n         .review-hide {\r\n             display: none !important;\r\n         }\r\n\r\n         .open .review-hide{\r\n             display: block !important;\r\n         }\r\n     }\r\n"]}
                                     ]}
                                  ]}
                               ]},
                              {"div",
                               [
                                 {"class",
                                  "col-xs-12 pad-none text-center pager-section pad-left-md pad-right-md  pad-bottom-lg"}
                               ],
                               [
                                 {"div", [{"class", "sliding_pagination clearfix"}],
                                  [
                                    {"div", [{"class", "page_container"}],
                                     [
                                       {"div",
                                        [
                                          {"class",
                                           "page_active prev page_num_163 page"},
                                          {"onclick",
                                           "javascript:document.location.href='/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/page163/?filter=ALL_REVIEWS#link';"}
                                        ],
                                        [
                                          {"a",
                                           [
                                             {"href",
                                              "/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/page163/?filter=ALL_REVIEWS#link"},
                                             {"rel", "prev page_num_163"}
                                           ], ["< prev"]}
                                        ]},
                                       {"div",
                                        [
                                          {"class", "page_active page_num_1 page"},
                                          {"onclick",
                                           "javascript:document.location.href='/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/page1/?filter=ALL_REVIEWS#link';"}
                                        ],
                                        [
                                          {"a",
                                           [
                                             {"href",
                                              "/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/page1/?filter=ALL_REVIEWS#link"},
                                             {"rel", "page_num_1"}
                                           ], ["1"]}
                                        ]},
                                       {"div", [{"class", "ellipsis"}], ["..."]},
                                       {"div",
                                        [
                                          {"class", "page_active page_num_163 page"},
                                          {"onclick",
                                           "javascript:document.location.href='/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/page163/?filter=ALL_REVIEWS#link';"}
                                        ],
                                        [
                                          {"a",
                                           [
                                             {"href",
                                              "/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/page163/?filter=ALL_REVIEWS#link"},
                                             {"rel", "page_num_163"}
                                           ], ["163"]}
                                        ]},
                                       {"div",
                                        [
                                          {"class",
                                           "page_inactive page_current page"}
                                        ], ["164"]},
                                       {"div",
                                        [
                                          {"class", "page_active page_num_165 page"},
                                          {"onclick",
                                           "javascript:document.location.href='/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/page165/?filter=ALL_REVIEWS#link';"}
                                        ],
                                        [
                                          {"a",
                                           [
                                             {"href",
                                              "/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/page165/?filter=ALL_REVIEWS#link"},
                                             {"rel", "page_num_165"}
                                           ], ["165"]}
                                        ]},
                                       {"div",
                                        [
                                          {"class",
                                           "page_active next page_num_165 page"},
                                          {"onclick",
                                           "javascript:document.location.href='/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/page165/?filter=ALL_REVIEWS#link';"}
                                        ],
                                        [ 
                                          {"a",
                                           [
                                             {"href",
                                              "/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/page165/?filter=ALL_REVIEWS#link"},
                                             {"rel", "next page_num_165"}
                                           ], ["next >"]}
                                        ]}
                                     ]},
                                    {"div", [{"class", "label"}],
                                     ["1,631 - 1,640 of 1,641 results"]}
                                  ]}
                               ]}
                            ]}
                         ]},
                        {"div",
                         [
                           {"id", "dialog-report"},
                           {"class", "dp-dialog-report"},
                           {"style", "display: none"},
                           {"title", "Report Review"}
                         ],
                         [
                           {"form",
                            [
                              {"action", "/json/reviews/report"},
                              {"id", "report_form"},
                              {"method", "post"}
                            ],
                            [
                              {"input",
                               [
                                 {"data-val", "true"},
                                 {"data-val-number",
                                  "The field ReviewId must be a number."},
                                 {"data-val-required", "Review is required."},
                                 {"id", "ReviewId"},
                                 {"name", "ReviewId"},
                                 {"type", "hidden"},
                                 {"value", "0"}
                               ], []},
                              {"input",
                               [
                                 {"data-val", "true"},
                                 {"data-val-required", "Source is required."},
                                 {"id", "Source"},
                                 {"name", "Source"},
                                 {"type", "hidden"},
                                 {"value", "All"}
                               ], []},
                              {"p", [{"class", "margin-top-md"}],
                               [
                                 {"label", [],
                                  ["Reason for reporting the review: "]},
                                 {"select",
                                  [
                                    {"data-val", "true"},
                                    {"data-val-required", "Reason is required."},
                                    {"id", "Reason"},
                                    {"name", "Reason"}
                                  ],
                                  [
                                    {"option", [{"value", ""}], ["Select..."]},
                                    {"option", [{"value", "2"}],
                                     ["Duplicate Review"]},
                                    {"option", [{"value", "3"}],
                                     ["Former Employee"]},
                                    {"option", [{"value", "4"}],
                                     ["Fraudulent Review"]},
                                    {"option", [{"value", "5"}],
                                     ["Incorrect Dealer Page"]},
                                    {"option", [{"value", "7"}],
                                     ["Inappropriate Content"]},
                                    {"option", [{"value", "6"}], ["Other"]}
                                  ]},
                                 {"span",
                                  [
                                    {"class", "field-validation-valid"},
                                    {"data-valmsg-for", "Reason"},
                                    {"data-valmsg-replace", "true"}
                                  ], []}
                               ]},
                              {"label",
                               [
                                 {"name", "-"},
                                 {"class",
                                  "font-15 bold margin-top-lg margin-bottom-sm"}
                               ],
                               [
                                 "\n        Please state your concerns regarding this review.",
                                 {"br", [], []},
                                 "\n        Please be as descriptive as possible.\n      "
                               ]},
                              {"label",
                               [
                                 {"name", "_1"},
                                 {"class",
                                  "font-15 bold margin-top-lg margin-bottom-sm display:none"}
                               ],
                               ["We ask that reviewers read your private response within 5 days. This is a measure put in place to help identify fraudulent posts on the site, and in some cases we may determine that the review is not subject to removal even when the reviewer has not read your response."]},
                              {"label",
                               [
                                 {"name", "_2"},
                                 {"class",
                                  "font-15 bold margin-top-lg margin-bottom-sm display:none"}
                               ],
                               ["Which review do you believe this to be a duplicate of? Please provide the screen name, date, etc."]},
                              {"label",
                               [
                                 {"name", "_3"},
                                 {"class",
                                  "font-15 bold margin-top-lg margin-bottom-sm display:none"}
                               ],
                               ["Please provide any identifying information that you have regarding the former employee that you believe wrote the review – full name, email, social media links, anything that will help us research a connection between the review and that person."]},
                              {"label",
                               [
                                 {"name", "_4"},
                                 {"class",
                                  "font-15 bold margin-top-lg margin-bottom-sm display:none"}
                               ],
                               ["Please let us know what leads you to believe that this review was posted fraudulently."]},
                              {"label",
                               [
                                 {"name", "_5"},
                                 {"class",
                                  "font-15 bold margin-top-lg margin-bottom-sm display:none"}
                               ],
                               ["Which dealership do you believe this review was meant for, and what leads you to believe the review was posted to the incorrect page?"]},
                              {"label",
                               [
                                 {"name", "_6"},
                                 {"class",
                                  "font-15 bold margin-top-lg margin-bottom-sm display:none"}
                               ],
                               ["Please let us know what leads you to believe that this review should be removed from the page."]},
                              {"label",
                               [
                                 {"name", "_7"},
                                 {"class",
                                  "font-15 bold margin-top-lg margin-bottom-sm display:none"}
                               ],
                               ["Please provide the exact content of the review that you feel is inappropriate."]},
                              {"textarea",
                               [
                                 {"class", "width-100 pad-sm regular font-14"},
                                 {"cols", "20"},
                                 {"data-val", "true"},
                                 {"data-val-length",
                                  "The message can be no more than 2000 characters."},
                                 {"data-val-length-max", "2000"},
                                 {"data-val-required", "Message is required."},
                                 {"id", "report-message"},
                                 {"name", "Message"},
                                 {"rows", ""}
                               ], ["\r\n"]},
                              {"span",
                               [
                                 {"class", "field-validation-valid"},
                                 {"data-valmsg-for", "Message"},
                                 {"data-valmsg-replace", "true"}
                               ], []},
                              {"p", [{"class", "margin-top-lg margin-top-none"}],
                               [
                                 {"label", [], ["Your email address: "]},
                                 {"input",
                                  [
                                    {"class", "border-all-light"},
                                    {"data-val", "true"},
                                    {"data-val-email",
                                     "Please input a valid email address."},
                                    {"data-val-required", "Email is required"},
                                    {"id", "EmailAddress"},
                                    {"name", "EmailAddress"},
                                    {"type", "email"},
                                    {"value", ""}
                                  ], []},
                                 {"div", [],
                                  [
                                    {"span",
                                     [
                                       {"class", "field-validation-valid"},
                                       {"data-valmsg-for", "EmailAddress"},
                                       {"data-valmsg-replace", "true"}
                                     ], []}
                                  ]}
                               ]},
                              {"a",
                               [
                                 {"href",
                                  "https://dealerrater.uservoice.com/knowledgebase/articles/916620-reasons-for-reporting-a-review"},
                                 {"target", "_blank"},
                                 {"class",
                                  "pull-left hidden-xs hidden-sm secondary-button orange line-height-150"}
                               ],
                               [
                                 "Need some help ",
                                 {"span",
                                  [
                                    {"class",
                                     "glyphicon glyphicon-question-sign orange-lt font-18 valign-top"}
                                  ], []}
                               ]},
                              {"div", [{"class", "ui-dialog-buttonset pull-right"}],
                               [
                                 {"button",
                                  [
                                    {"onclick", "closeReport();return false;"},
                                    {"class",
                                     "secondary-button orange pull-left margin-right-md"}
                                  ], ["Cancel"]},
                                 {"button",
                                  [
                                    {"onclick", "submitReport(); return false;"},
                                    {"class", 
                                     "submitReport primary-button orange pull-right"}
                                  ], ["Submit"]}
                               ]} 
                            ]}
                         ]},
                        {"div",
                         [
                           {"id", "dialog_reportReview_in_progress"},
                           {"style", "display: none"},
                           {"title", "Please wait..."}
                         ],
                         [
                           {"p",
                            [
                              {"class",
                               "text-center pad-top-lg pad-left-lg pad-right-lg"}
                            ],
                            [
                              {"img",
                               [
                                 {"height", "64"},
                                 {"src",
                                  "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/loaders/spinner_32x32.gif"},
                                 {"width", "64"}
                               ], []}
                            ]}
                         ]},
                        {"style", [],
                         ["\n    #dialog-report{\n        width: 100% !important;\n    }\n\n    #dialog-report label[name^=_] {\n      display: none;\n    }\n\n    .ui-dialog.report-dialog {\n        border: none;\n        -ms-border-radius: 2px;\n        border-radius: 2px;\n        background: #f3f3f3;\n        padding: 0;\n    }\n\n    .ui-dialog.report-dialog .ui-dialog-titlebar {\n        background: #25347B;\n        color: #fff;\n        -ms-border-radius: 0;\n        border-radius: 0;\n        font-size: 16px;\n        font-family: MuseoSans-500 !important;\n        padding: 8px 6px;\n        height: 40px;\n        vertical-align: top;\n    }\n\n\n   \n\n    .ui-dialog.report-dialog .ui-widget-header .ui-icon-closethick {\n        background: url(https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_close_x_white.png) no-repeat;\n        -ms-background-size: cover;\n        background-size: cover;\n    }\n\n    .ui-dialog.report-dialog .ui-dialog-titlebar-close{\n        top: 5px;\n        right: 10px;\n    }\n\n    #report_form label{\n        font-size: 15px;\n        font-family: MuseoSans-500;\n        font-weight: normal;\n    }\n\n     #report_form select, #report_form input{\n         padding: 5px;\n         font-size: 15px;\n         font-family: MuseoSans-300;\n         width: 250px;\n         margin-left: 15px;\n     }\n\n     .ui-dialog.report-dialog .ui-dialog-buttonpane{\n         border-top: none;\n         margin-top: 0;\n         padding-top: 0;\n     }\n\n    #dialog_reportReview_in_progress{\r\n        width: 90% !important;\r\n        height: 100% !important;\r\n        padding-left: 5%;\r\n        padding-right: 5%;\r\n        top: -25px;\r\n        padding-bottom: 0;\r\n        margin: auto;\r\n    }\n\n     @media (max-width: 767px){\n        .ui-dialog.report-dialog {\n            width: 100% !important;\n            left: 0;\n            background: #fff;\n            position: absolute !important;\n            overflow-y: auto !important;\n        }\n        #report_form select, #report_form input{\n            margin-left: 0;\n        }\n\n        #dialog_reportReview_in_progress{\r\n            padding-top: 20px;\r\n        }\n     }\n"]},
                        {"div",
                         [{"id", "dialog_lotshot_popup"}, {"class", "display-none"}],
                         [
                           {"a", [{"href", "#"}, {"class", "popup-close"}], []},
                           {"div", [{"class", "popup-content-wrapper"}],
                            [
                              {"img",
                               [
                                 {"style",
                                  "display: block; margin: 5px auto; max-width: 100%; max-height: 465px;"}
                               ], []}
                            ]}
                         ]},
                        {"div",
                         [
                           {"id", "mobile-lotshot"}, 
                           {"class", "table fill-height text-center"}
                         ],
                         [
                           {"div",
                            [{"class", "td col-xs-12 bg-white border-all pad-none"}],
                            [
                              {"button",
                               [
                                 {"class",
                                  "bolder dark-grey font-14 bg-white pad-sm border-all uppercase pull-left margin-sm pointer"},
                                 {"onclick", "toggleLotShotPage()"}
                               ], ["\r\n            < BACK\r\n        "]},
                              {"div",
                               [
                                 {"id", "mobile-lotshot-image"},
                                 {"class", "margin-top-sm pad-lg"}
                               ], []}
                            ]}
                         ]},
                        {"style", [],
                         ["    \n    .square-image {\n        background-position: 50% 50%;\n        background-repeat: no-repeat;\n        -ms-background-size: cover;\n        background-size: cover;\n        width: 50px;\n        height: 50px;\n        margin: 0 auto;\n    }\n    .review-employee {\n        cursor: pointer\n    }\n    .employee-image {\n        min-width: 51px;\n        border: 1px solid #05aec1;\n    }\n\n    .section-container {\n        display: block;\n    }\n\n    #contentInner {\n        background: #ffffff !important;\n    }\n    footer {\n        clear: both;\n    }\n    #mainContainer {\n        background: #fff !important;\n    }\n    \n    @media (max-width: 975px){\n         .employees-wrapper{\n            max-width: 100%;\n        }\n    }   \n\n    @media (max-width: 767px){\n        #reviews .chatLink {\n        float: right !important;\n        display: inline-block !important;\n        }\n\n        #reviews .war {\n            margin-top: 30px;\n        }\n        .sortByWrapper {\n            float: left;\n            display: block;\n        }\n        .sortByWrapper span {\n            display: block;\n            float: none !important;\n        }\n       \n    }\n        \n    @media (max-width: 430px) {\n        #reviews .war {\n           float: left !important;\r\n            margin-top: 10px;\r\n            clear: both;\r\n            display: block !important;\n        }\n    }\n\n    @media (max-width: 480px) and (orientation: landscape)\n        {\n            #mobile-lotshot\n            {\n                overflow-y: auto;\n            }\n            /* #mobile-lotshot-image{\n                max-height: 180px !important;\n                max-width: 380px;\n                margin-left:auto;\n                margin-right:auto;\n            }*/\n        }\n\n\n        #mobile-lotshot-image\n        {\n            max-height: inherit !important;\n            max-width: 100%;\n            width: auto;\n            height: auto;\n            padding: 10px;\n            background: #fff;\n            margin-top: 10px;\n        }\n\n        #mobile-lotshot\n        {\n            display: none;\n            position: fixed;\n            top: 45px;\n            left: 0;\n            z-index: 2;\n            width: 100%;\n            height: 100% !important;\n            padding: 10px !important;\n            background: #ccc;\n        }\n\n\n"]}
                      ]}
                   ]},
                  {"div", [{"class", "visible-xs"}], []},
                  {:comment,
                   " Leave this here - use to tell if in mobile layout or not "},
                  {:comment, " FOOTER "},
                  {"footer", [{"class", "fill-width bg-footer-grey font-16 "}],
                   [
                     {"div", [{"id", "footerContainer"}],
                      [
                        {"div", [{"class", "col-xs-12 pad-bottom-mdlg text-left "}],
                         [
                           {"div",
                            [
                              {"class",
                               "col-xs-12 pad-none pad-top-md pad-bottom-lg text-center visible-xs"}
                            ],
                            [
                              {"a",
                               [
                                 {"href", "https://www.facebook.com/DealerRater"},
                                 {"class", "footer-social-circle margin-left-none"},
                                 {"target", "_blank"}
                               ],
                               [
                                 {"img",
                                  [
                                    {"src",
                                     "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-facebook-trans.png"}
                                  ], []}
                               ]},
                              {"a",
                               [
                                 {"href",
                                  "https://www.linkedin.com/company/dealerrater?trk=top_nav_home"},
                                 {"class", "footer-social-circle"},
                                 {"target", "_blank"}
                               ],
                               [
                                 {"img",
                                  [
                                    {"src",
                                     "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-linkedin-trans.png"}
                                  ], []}
                               ]},
                              {"a",
                               [
                                 {"href",
                                  "https://www.youtube.com/user/dealerrater"},
                                 {"class", "footer-social-circle"},
                                 {"target", "_blank"}
                               ],
                               [
                                 {"img",
                                  [
                                    {"src",
                                     "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-youtube-trans.png"}
                                  ], []}
                               ]},
                              {"a",
                               [
                                 {"href", "https://twitter.com/dealerrater"},
                                 {"class", "footer-social-circle"},
                                 {"target", "_blank"}
                               ],
                               [
                                 {"img",
                                  [
                                    {"src",
                                     "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-twitter-trans.png"}
                                  ], []}
                               ]}
                            ]},
                           {"div",
                            [{"class", "col-xs-12 col-sm-6 col-md-5 pad-none"}],
                            [
                              {"div", [{"class", "col-xs-6 pad-none"}],
                               [
                                 {"ul", [],
                                  [
                                    {"li", [],
                                     [
                                       {"a",
                                        [
                                          {"href", "https://www.dealerrater.ca"},
                                          {"title", "DealerRater Canada"},
                                          {"class", "black font-12 bold"}
                                        ],
                                        [
                                          "DealerRater Canada ",
                                          {"img",
                                           [
                                             {"class", "pad-left-sm"},
                                             {"src",
                                              "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icn_flag_ca.png"},
                                             {"width", "28"}
                                           ], []}
                                        ]}
                                     ]},
                                    {"li", [],
                                     [
                                       {"a",
                                        [
                                          {"href", "/consumer/company"},
                                          {"title", "About Us"},
                                          {"class", "black font-12 bold"}
                                        ], ["About Us"]}
                                     ]},
                                    {"li", [],
                                     [
                                       {"a",
                                        [
                                          {"href", "/consumer/company/careers"},
                                          {"title", "Careers"},
                                          {"class", "black font-12 bold"}
                                        ], ["Careers"]}
                                     ]},
                                    {"li", [],
                                     [
                                       {"a",
                                        [
                                          {"href", "/consumer/company/contact-us"},
                                          {"title", "Contact Us"},
                                          {"class", "black font-12 bold"}
                                        ], ["Contact Us"]}
                                     ]},
                                    {"li", [],
                                     [
                                       {"a",
                                        [
                                          {"href", "/dealers"},
                                          {"title", "For Dealers"},
                                          {"class", "black font-12 bold"}
                                        ], ["For Dealers"]}
                                     ]},
                                    {"li", [],
                                     [
                                       {"a",
                                        [
                                          {"href",
                                           "https://dealerrater.uservoice.com/"},
                                          {"title", "Help Center"},
                                          {"class", "black font-12 bold"}
                                        ], ["Help Center"]}
                                     ]}
                                  ]}
                               ]},
                              {"div", [{"class", "col-xs-6 pad-none"}],
                               [
                                 {"ul", [],
                                  [
                                    {"li", [],
                                     [
                                       {"a",
                                        [
                                          {"href",
                                           "http://www.dealerrater.com/info/privacy/"},
                                          {"title", "Privacy Policy"},
                                          {"class", "black font-12 bold"}
                                        ], ["Privacy Policy"]}
                                     ]},
                                    {"li", [],
                                     [
                                       {"a",
                                        [
                                          {"href",
                                           "http://www.dealerrater.com/info/tou/"},
                                          {"title", "Terms of Use"},
                                          {"class", "black font-12 bold"}
                                        ], ["Terms of Use"]}
                                     ]},
                                    {"li", [],
                                     [
                                       {"a",
                                        [
                                          {"href",
                                           "http://www.dealerrater.com/info/community/"},
                                          {"title", "Community Guidelines"},
                                          {"class", "black font-12 bold"}
                                        ], ["Community Guidelines"]}
                                     ]},
                                    {"li", [],
                                     [
                                       {"a",
                                        [
                                          {"href",
                                           "https://dealerrater.uservoice.com/knowledgebase/articles/844902-dealerrater-frequently-asked-questions"},
                                          {"title", "FAQ"},
                                          {"class", "black font-12 bold"}
                                        ], ["FAQ"]}
                                     ]},
                                    {"li", [],
                                     [
                                       {"a",
                                        [
                                          {"href", "/common/sitemap"},
                                          {"title", "Sitemap"},
                                          {"class", "black font-12 bold"}
                                        ], ["Sitemap"]}
                                     ]}
                                  ]}
                               ]}
                            ]},
                           {"div",
                            [
                              {"class",
                               "col-xs-12 col-sm-6 col-md-7 pad-none pad-top-mdlg text-right hidden-xs"}
                            ],
                            [
                              {"a",
                               [
                                 {"href", "https://www.facebook.com/DealerRater"},
                                 {"title", "Facebook"},
                                 {"target", "_blank"},
                                 {"class", "footer-social-circle"}
                               ],
                               [
                                 {"img",
                                  [
                                    {"src",
                                     "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-facebook-trans.png"}
                                  ], []}
                               ]},
                              {"a",
                               [
                                 {"href",
                                  "https://www.linkedin.com/company/dealerrater?trk=top_nav_home"},
                                 {"title", "LinkedIn"},
                                 {"target", "_blank"},
                                 {"class", "footer-social-circle"}
                               ],
                               [
                                 {"img",
                                  [
                                    {"src",
                                     "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-linkedin-trans.png"}
                                  ], []}
                               ]},
                              {"a",
                               [
                                 {"href",
                                  "https://www.youtube.com/user/dealerrater"},
                                 {"target", "_blank"},
                                 {"title", "YouTube"},
                                 {"class", "footer-social-circle"}
                               ],
                               [
                                 {"img",
                                  [
                                    {"src",
                                     "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-youtube-trans.png"}
                                  ], []}
                               ]},
                              {"a",
                               [
                                 {"href", "https://twitter.com/dealerrater"},
                                 {"target", "_blank"},
                                 {"title", "Twitter"},
                                 {"class", "footer-social-circle"}
                               ],
                               [
                                 {"img",
                                  [
                                    {"src",
                                     "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-twitter-trans.png"} 
                                  ], []}
                               ]}
                            ]}
                         ]},
                        {"div", [{"class", "col-xs-12 pad-top-md border-top"}],
                         [
                           {"div",
                            [
                              {"class",
                               "grey font-13 bold uppercase letter-spacing-1 footer-copyright"}
                            ], ["© 2019 DR Media Holdings, LLC"]}
                         ]}
                      ]}
                   ]}
                ]}
             ]},
            {"div", [{"id", "dr-notify"}],
             [
               {"div", [{"class", "table width-100 word-break"}],
                [
                  {"div", [{"class", "td td-icon thumbsup display-none text-left"}],
                   [
                     {"img",
                      [
                        {"src",
                         "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup-green.png"},
                        {"width", "68"}
                      ], []}
                   ]},
                  {"div", [{"class", "td td-icon exclaim text-left display-none"}],
                   [
                     {"img",
                      [
                        {"src",
                         "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon_Exclaim .png"},
                        {"width", "68"}
                      ], []}
                   ]},
                  {"div", [{"class", "td text-left"}],
                   [
                     {"p", [],
                      [
                        {"span", [{"class", "bolder notify-title"}], []},
                        {"span", [{"class", "notify-text"}], []}
                      ]}
                   ]},
                  {"div", [{"class", "td text-right"}],
                   [
                     {"img",
                      [
                        {"class",
                         "close-notify pointer margin-left-lg margin-right-md"},
                        {"src",
                         "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-notification-close.png"},
                        {"width", "25"}
                      ], []}
                   ]}
                ]}
             ]},
            {:comment,
             " scripts down here to improve website rendering performance "},
            {"script",
             [
               {"src",
                "https://www.dealerrater.com/ncdn/bundle/s/149.20190919.1/ResponsiveScriptBundle.bundle?v=VtcxZltrTmY40LwvBXHQa_PALEGZTQji5VN4jW-Fbjg1"}
             ], [""]},
            {"script", [{"type", "text/javascript"}],
             ["        \r\n        // after the click of the element, disable the click for 3 seconds.\r\n        function isMultipleClicked(element) {\r\n            //if already clicked return TRUE to indicate this click is not allowed\r\n            if (element.data(\"isclicked\")) return true;\r\n\r\n            //mark as clicked for 3 seconds\r\n            element.data(\"isclicked\", true);\r\n            setTimeout(function () {\r\n                element.removeData(\"isclicked\");\r\n            }, 3000);\r\n\r\n            //return FALSE to indicate this click was allowed\r\n            return false;\r\n        }\r\n\r\n    "]},
            {"style", [{"type", "text/css"}],
             ["\r\n    .dr-captcha-dialog {\r\n        width: 100% !important;\r\n        display: none;\r\n    }\r\n"]},
            {"script",
             [
               {"src",
                "https://www.google.com/recaptcha/api.js?onload=GoogleCaptcha_onCaptchaLoad&render=explicit"},
               {"async", "async"},
               {"defer", "defer"}
             ], ["\r\n"]},
            {"script", [{"type", "text/javascript"}],
             ["\r\n    \r\n    function GoogleCaptchaInstance(siteKey, containerId, onCaptchaResult, theme) {\r\n        \r\n        var options = {\r\n            widgetId: null,\r\n            siteKey: siteKey,\r\n            containerId: containerId,\r\n            onCaptchaResult: onCaptchaResult,\r\n            theme: theme\r\n        };\r\n\r\n        \r\n        options.widgetId = grecaptcha.render(options.containerId, {\r\n            'sitekey': options.siteKey,\r\n            'callback': options.onCaptchaResult,\r\n            'theme': options.theme\r\n        });\r\n\r\n        \r\n\r\n        \r\n        this.reset = function () {\r\n            grecaptcha.reset(options.widgetId);\r\n        };\r\n\r\n        \r\n        this.result = function () {\r\n            return grecaptcha.getResponse(options.widgetId);\r\n        };\r\n    }\r\n\r\n    var GoogleCaptcha_onCaptchaLoad = function () {\r\n        // Widget loaded, call Render operations\r\n        GoogleCaptcha.onReady();\r\n    };\r\n\r\n    // Google Captcha factory for creating instances\r\n    var GoogleCaptcha = (function () {\r\n        // Private members\r\n        var siteKey = \"6LcGWBcTAAAAAGq4Xqv08tUxBU8fhsKYUSBJFHX4\";\r\n        var captchaInstances = {};\r\n\r\n        // Public methods\r\n        return {\r\n            create: function (containerId, onCaptchaResult, theme) {\r\n                \r\n                if (captchaInstances[containerId] == null)\r\n                    captchaInstances[containerId] = new GoogleCaptchaInstance(siteKey, containerId, onCaptchaResult, theme);\r\n                return captchaInstances[containerId];\r\n            },\r\n            onReady: function() {}\r\n        };\r\n    })();\r\n\r\n    \r\n    GoogleCaptcha.ShowCaptchaDialog = function (options) {\r\n        \r\n        options = options || { instanceId: 0, success: function(response) {}, failure: function() {}, title: \"\" };\r\n        \r\n        var dialogId = 'captcha-dialog-'+options.instanceId;\r\n        var containerId = 'captcha-container-'+options.instanceId;\r\n        var $dialogDiv = $('#' + dialogId);\r\n        var $containerDiv = $('#' + containerId);\r\n        \r\n        \r\n        if ($dialogDiv.length === 0) {\r\n            $dialogDiv = $('<div/>');\r\n            $dialogDiv.attr('id', dialogId);\r\n            $dialogDiv.attr('title', options.title);\r\n            $dialogDiv.addClass('dr-captcha-dialog');\r\n\r\n            $('body').append($dialogDiv);\r\n\r\n            \r\n            var $captchaCaption = $('<h2/>');\r\n            $captchaCaption.text(\"One last step! Verify you're a human.\");\r\n            $captchaCaption.addClass('popup-title');\r\n\r\n            $dialogDiv.append($captchaCaption);\r\n\r\n            var $captchaCloseBtn = $('<a/>');\r\n            $captchaCloseBtn.attr(\"href\", \"#\");\r\n            $captchaCloseBtn.addClass(\"popup-close\");\r\n            $dialogDiv.append($captchaCloseBtn);\r\n        }\r\n\r\n        \r\n        if ($containerDiv.length === 0) {\r\n            $containerDiv = $('<div/>').attr('id', containerId);\r\n            $containerDiv.addClass(\"popup-content-wrapper text-center\");\r\n            $dialogDiv.append($containerDiv);\r\n\r\n        }\r\n\r\n        // create captcha & setup callbacks\r\n        var dialogCaptcha = GoogleCaptcha.create(containerId, function(result) {\r\n            $containerDiv.removeClass('input-validation-error');\r\n\r\n            // Invoke callbacks\r\n            if (result != null && $.trim(result).length > 0) {\r\n                options.success(result);\r\n                $dialogDiv.dialog('close');\r\n            } else {\r\n                $containerDiv.addClass('input-validation-error');\r\n            }\r\n        });\r\n\r\n        \r\n        var captchaDialogCloseFunction = function() {\r\n            dialogCaptcha.reset();\r\n        };\r\n        window.setUpDialog($dialogDiv, null, captchaDialogCloseFunction);\r\n        $dialogDiv.dialog(\"open\");\r\n    }\r\n"]},
            {"script", [{"type", "text/javascript"}],
             ["\r\n    // on click of \"read more\", open or close review content\r\n    $(\".read-more-toggle\").click(function () {\r\n        // toggle parent open class\r\n        var reviewWrapperElem = $(this).closest('.review-wrapper');\r\n        $(reviewWrapperElem).toggleClass(\"open\");\r\n\r\n        // change text of read more link\r\n        if ($(reviewWrapperElem).hasClass(\"open\")) {\r\n            $(reviewWrapperElem).find(\".read-more-toggle\").html(\"Read Less\");\r\n\r\n            // show public messages\r\n            $(reviewWrapperElem).find(\"p.review-response\").each(function () {\r\n                $(this).text($(this).data(\"originalText\"));\r\n                $(this).parent().addClass(\"open\");\r\n                $(this).css(\"max-height\", \"none\");\r\n            });\r\n            $(reviewWrapperElem).find(\"a.response-toggle\").html(\"Read Less\");\r\n\r\n        } else {\r\n            $(reviewWrapperElem).find(\".read-more-toggle\").html(\"Read More\");\r\n\r\n            // hide public messages\r\n            $(reviewWrapperElem).find(\"p.review-response\").each(function () {\r\n                $(this).text($(this).data(\"shortText\"));\r\n                $(this).parent().removeClass(\"open\");\r\n                $(this).css(\"max-height\", \"40px\");\r\n            });\r\n            $(reviewWrapperElem).find(\"a.response-toggle\").html(\"Read More\");\r\n\r\n        }\r\n        return false;\r\n    });\r\n\r\n    $(\".review-response\").each(function() {\r\n        var responseHeight = $(this).height();\r\n        $(this).css('max-height', '40px');\r\n        if (responseHeight > 40) {\r\n            $(this).parent().find(\".message-read-more\").removeClass(\"display-none\");\r\n        }\r\n    });\r\n\r\n    /**\r\n* Marks a review as helpful to the viewer.  Site visitors can up-vote a review once per browser\r\n* session, enforced by a cookie.\r\n* @param id The review ID to up vote.\r\n*/\r\n    function MarkReviewHelpful(id, elem) {\r\n        $(elem).removeAttr('onClick');\r\n        // only mark the review as helpful one time...\r\n        if ($.cookie(\"HelpfulReviewIds\") == null ||\r\n            $.inArray(id.toString(), $.cookie('HelpfulReviewIds').split(':')) == -1) {\r\n            // grab the node that has the count, show it (if it isn't visible) and increment the value\r\n            var countNode = $('#helpful_count_' + id);\r\n            countNode.show();\r\n            countNode.text(parseInt(countNode.text()) + 1);\r\n\r\n            // call the AJAX endpoint to audit\r\n            $.getJSON('/json/reviews/helpful?reviewId=' + id);\r\n        }\r\n        $(elem).click(function () {\r\n            return false;\r\n        });\r\n    }\r\n\r\n    // when a tagged employee image or its contents are clicked redirect to the employee details page\r\n    $('.review-employee').click(function () {\r\n        var a = $(this).find('a');\r\n        if (a.length) {\r\n            var link = a.attr(\"href\");\r\n            window.location.href = link;\r\n        }\r\n    });\r\n\r\n    /**\r\n     * Shows the given lotshot image in the popup.\r\n     * @param image The image we're showing in the popup.\r\n     */\r\n    function ShowLotshotImage(image) {\r\n        var imagePath = $(image).attr(\"src\").replace(\"-th\", \"\");        \r\n        /// if lot shot image was clicked on mobile, open in a new window\r\n        if ($(\"#mobileNavContainer .logo-sm\").css(\"height\") == \"35px\") {            \r\n            //window.open($(image).attr(\"src\"));\r\n            var lotShot = '<img src=\"' + imagePath + '\" width=\"100%\"/>';\r\n            $('#mobile-lotshot-image').html(lotShot);\r\n            toggleLotShotPage();\r\n        }\r\n        // else show lotshot dialog\r\n        else {\r\n            // preload image\r\n            var img = new Image();\r\n            img.onload = function () {\r\n                // on image load show the popup (so it places itself in the right spot)\r\n                $(\"#dialog_lotshot_popup img\").attr(\"src\", \"\");                        \r\n                $(\"#dialog_lotshot_popup img\").attr(\"src\", imagePath);\r\n                $(\"#dialog_lotshot_popup\").dialog(\"open\");\r\n                $('.ui-dialog :button').blur();\r\n            };\r\n            img.src = imagePath;     \r\n        }\r\n    }\r\n\r\n    /**\r\n     * Toggles when to show the mobile lotshot image.\r\n     */\r\n    function toggleLotShotPage() {\r\n        $('#mobile-lotshot').toggle();\r\n    }\r\n\r\n    \r\n    window.setUpDialog($(\"#dialog_lotshot_popup\"), null, null);\r\n\r\n"]},
            {"script", [],
             ["\r\n    var pageScrolled = false;\r\n\r\n    function recordAdobeDataLayerBannerClick(isDefault) {\r\n        if (!isDefault) {\r\n            window.digitalData.campaign = {\r\n                bannerClick: true\r\n            };\r\n        }\r\n    }\r\n\r\n    $(document).ready(function () {\r\n        window.digitalData.campaign = {\r\n            dealerId: 23685\r\n        };\r\n        window.digitalData.dealer = {\r\n            dealerId: 23685,\r\n            dealerName: \"McKaig Chevrolet Buick - A Dealer For The People\",\r\n            dealerType: \"dealer\"\r\n        };\r\n\r\n        var jsonUrl = '/json/dealer/hours';\r\n        $.ajax({\r\n            url: jsonUrl,\r\n            type: \"GET\",\r\n            cache: false,\r\n            data: { dealerId: 23685, hoursType: 'SALES' }\r\n        }).done(function(partialViewResult) {\r\n            $(\".dealer-hours\").empty().append(partialViewResult);\r\n        });\r\n\r\n        // on hover of rating, show rating details\r\n        $(\".rating-details\").hover(function () {\r\n            $(\"#rating-details\").toggle();\r\n            return false;\r\n        });\r\n\r\n        // GOOGLE ANALYTICS\r\n        if ($(\"#serviceLink\").length > 0)\r\n        {\r\n            recordEvent('Dealer-Profile', 'Service-Center-tab_display', '23685', null, true);\r\n        }\r\n\r\n        // awards dialog\r\n        // tablet / desktop awards dialog click\r\n        $(\".view-awards\").click(function () {\r\n            var awardWidth = 685;\r\n            if ($(\".award\").length == 1) {\r\n                awardWidth = 300;\r\n            }\r\n            else if ($(\".award\").length == 2) {\r\n                awardWidth = 450;\r\n            }\r\n\r\n            // create and open awards dialog\r\n            var closeAwardsDialogFunction = function() {\r\n                $(\"#awardsDialog\").dialog(\"destroy\");\r\n            };\r\n            window.setUpDialog($(\"#awardsDialog\"), null, closeAwardsDialogFunction);\r\n            $(\"#awardsDialog\").dialog(\"open\");\r\n\r\n            return false;\r\n        });\r\n            recordEvent('Dealer-Profile', 'Certified-Dealer_display', '23685', null, true);\r\n        $(\".tagged-emp\").click(function () {\r\n            var empId = $(this).attr(\"data-emp-id\");\r\n            recordEvent('Dealer-Profile', 'Tagged-Employee_Reviews_click', empId, null, false);\r\n        });\r\n\r\n            \r\n                // on hover of badge image, show tooltip\r\n                $(\".badge-tooltip\").hover(function () {\r\n                    $(\"#badge-tooltip\").toggle();\r\n                    return false;\r\n                });\r\n\r\n                if ($(\".about-us\").height() >= 100) {\r\n                    $(\"#readMoreAbout\").show();\r\n                }\r\n\r\n                $(\"#readMoreAbout\").click(function () {\r\n                    if ($(\".about-us\").css(\"max-height\") == \"none\") {\r\n                        $(\".about-us\").css(\"max-height\", \"100px\");\r\n                        $(\"#readMoreAbout\").html(\"Read More\");\r\n                    } else {\r\n                        $(\".about-us\").css(\"max-height\", \"none\");\r\n                        $(\"#readMoreAbout\").html(\"Read Less\");\r\n                    }\r\n                    recordEvent('Dealer-Profile', 'Description-Read-More_click', '23685', null, true);\r\n                    return false;\r\n                });\r\n\r\n                // desktop / tablet hours dialog\r\n                $(document).on('click', '.hidden-xs .view-hours', function () {\r\n\r\n                    var hoursDialogCloseFunction = function() {\r\n                        $(\"#hoursDialog\").dialog(\"destroy\");\r\n                    };\r\n                    window.setUpDialog($(\"#hoursDialog\"), null, hoursDialogCloseFunction);\r\n\r\n                    $(\"#hoursDialog\").dialog(\"open\");\r\n                    return false;\r\n                });\r\n\r\n                // mobile hours dialog\r\n                $(document).on('click', '.visible-xs .view-hours', function () {\r\n                    toggleMobilePage('hoursDialog');\r\n                    return false;\r\n                });\r\n\r\n            \r\n                    \r\n                // persistent nav\r\n                var reviewPageNavTop = $('.review-page-nav').offset().top + 30;\r\n\r\n                $(window).scroll(function () {\r\n                    if (pageScrolled) {\r\n                        if ($(\".visible-xs\").css(\"display\") != \"block\") {\r\n                            if ($(window).scrollTop() > reviewPageNavTop) {\r\n                                $('#persistentNav').slideDown();\r\n                            } else {\r\n                                $('#persistentNav').slideUp();;\r\n                            }\r\n                        } else {\r\n                            if ($(window).scrollTop() > reviewPageNavTop) {\r\n                                $('#persistentNav').css(\"position\", \"fixed\");\r\n                                $('#persistentNav').css(\"top\", \"0\");\r\n                                $('#persistentNav').css(\"left\", \"0\");\r\n                                $('#persistentNav').css(\"z-index\", \"1001\");\r\n                            } else {\r\n                                $('#persistentNav').css(\"position\", \"relative\");\r\n                                $('#persistentNav').css(\"z-index\", \"auto\");\r\n                            }\r\n                        }\r\n                    }\r\n                    pageScrolled = true;\r\n                });\r\n\r\n    });\r\n\r\n    function toggleMobilePage(divName) {\r\n        $(\".mobile-hide\").toggle();\r\n        $(\"#mobileBack\").toggle();\r\n        if (($(\"#hoursDialog\").css(\"display\") == \"block\") || (divName == \"hoursDialog\")) {\r\n            $(\"#hoursDialog\").toggle();\r\n        }\r\n        else if (($(\"#awardsDialog\").css(\"display\") == \"block\") || (divName == \"awardsDialog\")) {\r\n            $(\"#awardsDialog\").toggle();\r\n        }\r\n    }\r\n\r\n    function clickToCallEvent() {\r\n        window.recordEvent('Click_to_Call', 'Dealer_Profile_Sales_click', '23685', 1, false);\r\n    }\r\n\r\n    function viewDealerWebsiteEvent() {\r\n        window.recordEvent('Dealer-Profile', 'Visit-Dealer-link_click', '23685', null, false);\r\n    }\r\n\r\n"]},
            {"script", [{"type", "application/ld+json"}],
             ["\r\n    {\r\n    \"@context\": \"http://schema.org\",\r\n    \"@type\": \"LocalBusiness\",\r\n    \"name\" : \"McKaig Chevrolet Buick - A Dealer For The People\",\r\n    \"address\": {\r\n    \"@type\": \"PostalAddress\",\r\n    \"streetAddress\": \"1110 E Broadway Ave (US 80 @ E Loop 485)\",\r\n    \"addressLocality\": \"Gladewater\",\r\n    \"addressRegion\" : \"TX\",\r\n    \"postalCode\" : \"75647\",\r\n    \"addressCountry\" : \"US\"\r\n    },\r\n    \"telephone\" : \"(903) 374-0469\",\r\n        \r\n            \"aggregateRating\": {\r\n            \"@type\": \"AggregateRating\",\r\n            \"ratingValue\": 4.9,\r\n            \"reviewCount\" : 1641,\r\n            \"bestRating\" : 5,\r\n            \"worstRating\" : 0\r\n            },\r\n        \r\n    \"url\" : \"https://www.mckaigchevrolet.com/\"\r\n    }\r\n"]},
            {:comment, " DIRECTIONS DIALOG "},
            {"div",
             [
               {"id", "directionsPopup"},
               {"class", "display-none pad-bottom-lg fluid-scroll"}
             ],
             [
               {"h3", [{"class", "popup-title"}],
                ["Map and Directions to McKaig Chevrolet Buick - A Dealer For The People"]},
               {"a", [{"href", "#"}, {"class", "popup-close"}], []},
               {"div", [{"class", "popup-content-wrapper"}],
                [
                  {"div",
                   [{"class", "col-xs-12 pad-none"}, {"id", "directionsWrapper"}],
                   [
                     {"div", [{"class", "col-xs-12 pad-none margin-top-mdlg"}],
                      [
                        {"div", [{"id", "map-canvas"}], []},
                        {"div",
                         [
                           {"id", "map-summary"},
                           {"class",
                            "col-xs-12 font-18 pad-none bolder pad-top-mdlg pad-bottom-sm display-none"}
                         ],
                         [
                           {"div", [{"id", "mapSummary"}, {"class", "pull-left"}],
                            []},
                           {"div",
                            [
                              {"id", "mapPrint"},
                              {"class",
                               "pull-right bg-orange-lt pointer margin-left-lg"}
                            ],
                            [
                              {"img",
                               [
                                 {"src",
                                  "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-directions-print.png"},
                                 {"width", "30"}
                               ], []}
                            ]},
                           {"div",
                            [
                              {"id", "mapReverse"},
                              {"class",
                               "pull-right bg-orange-lt pointer margin-right-md margin-left-lg"}
                            ],
                            [
                              {"img",
                               [
                                 {"src",
                                  "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-directions-reverse.png"},
                                 {"width", "30"}
                               ], []}
                            ]},
                           {"div",
                            [
                              {"id", "walking"},
                              {"class",
                               "travel-mode pull-right bg-orange-lt margin-right-md"}
                            ],
                            [
                              {"img",
                               [
                                 {"src",
                                  "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-directions-walk.png"},
                                 {"width", "30"}
                               ], []}
                            ]},
                           {"div",
                            [
                              {"id", "bicycling"},
                              {"class",
                               "travel-mode pull-right bg-orange-lt margin-right-md"}
                            ],
                            [
                              {"img",
                               [
                                 {"src",
                                  "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-directions-bike.png"},
                                 {"width", "30"}
                               ], []}
                            ]},
                           {"div",
                            [
                              {"id", "transit"},
                              {"class",
                               "travel-mode pull-right bg-orange-lt  margin-right-md"}
                            ],
                            [
                              {"img",
                               [
                                 {"src",
                                  "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-directions-train.png"},
                                 {"width", "30"}
                               ], []}
                            ]},
                           {"div",
                            [
                              {"id", "driving"},
                              {"class",
                               "active travel-mode pull-right bg-orange-lt margin-right-md"}
                            ],
                            [
                              {"img",
                               [
                                 {"src",
                                  "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-directions-car.png"},
                                 {"width", "30"}
                               ], []}
                            ]}
                         ]},
                        {"div", [{"class", "clear-fix"}], []}
                      ]},
                     {:comment, "Placeholder for turn by turn directions "},
                     {"div",
                      [
                        {"class", "col-xs-12 display-none pad-none"},
                        {"id", "directions-panel"}
                      ], []},
                     {"div",
                      [
                        {"class",
                         "col-xs-12 pad-none margin-top-lg margin-bottom-lg"},
                        {"id", "get-directions"}
                      ],
                      [
                        {"p",
                         [
                           {"class",
                            "font-14 uppercase bold letter-spacing-1 margin-bottom-none"}
                         ], ["Enter your starting address"]},
                        {"input",
                         [
                           {"id", "start"},
                           {"type", "text"},
                           {"class",
                            "pad-sm font-16 line-height-150 rounded border-all regular pull-left notranslate"},
                           {"style", "width: 50%;"},
                           {"placeholder", ""}
                         ], []},
                        {"input",
                         [
                           {"id", "end"},
                           {"type", "hidden"},
                           {"value",
                            "1110 E Broadway Ave (US 80 @ E Loop 485) , Gladewater, TX 75647"}
                         ], []},
                        {"input",
                         [
                           {"type", "button"},
                           {"id", "getDirection"},
                           {"class",
                            "regular primary-button teal pull-right outline-none"},
                           {"onclick", "javascript:calcRoute();"},
                           {"value", "Get Directions"}
                         ], []}
                      ]},
                     {"div", [{"class", "clear-fix"}], []}
                   ]}
                ]}
             ]}, 
            {:comment, " END DIRECTIONS DIALOG "},
            {"style", [],
             ["\r\n    #directionsWrapper .primary-button {\r\n        font-size: 16px !important;\r\n    }\r\n     .directions-popup{\r\n         top: 50px !important;\r\n         width: 700px !important;\r\n     }   \r\n    #mapSummary {\r\n        width: 240px;\r\n    } \r\n    #directionsPopup .popup-content-wrapper {\r\n        height: 400px !important;\r\n    }\r\n    #directionsPopup.open .popup-content-wrapper{\r\n        height: 640px !important;\r\n    }\r\n    .adp-placemark td {\r\n        padding: 5px 10px;\r\n        vertical-align: middle;\r\n    }\r\n    td.adp-text {\r\n        padding-left: 0;\r\n        font-family: MuseoSans-300;\r\n        font-size: 18px;\r\n    }\r\n    .adp-directions {\r\n        font-size: 16px;\r\n    }\r\n    .adp-legal {\r\n        font-size: 12px;\r\n        font-family: MuseoSans-300;\r\n        color: #656465;\r\n        text-transform: uppercase;\r\n        letter-spacing: 1px;\r\n        margin-top: 20px;\r\n    }\r\n    .ui-widget-overlay {\r\n        position: fixed;\r\n    }\r\n    .travel-mode, #mapPrint, #mapReverse {\r\n        -ms-border-radius: 50%;\r\n        border-radius: 50%;\r\n        padding: 8px;\r\n    }\r\n    .travel-mode.active {\r\n        background: #00adc2 !important;\r\n    }\r\n    #directionsWrapper {\r\n        padding: 0 5px !important;\r\n    }\r\n"]},
            {"script",
             [
               {"src",
                "https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=places&key=AIzaSyC6Ab0FcmWAe0YHQMWu-eWQB_dzufXC_Zw"}
             ], [""]},
            {"script", [],
             ["\r\n    var map;\r\n    var directionsDisplay;\r\n    var directionsService;\r\n    var stepDisplay;\r\n    var markerArray = [];\r\n    var marker;\r\n    var placeSearch, autocomplete;\r\n\r\n    function initialize() {\r\n        // Instantiate a directions service.\r\n        directionsService = new google.maps.DirectionsService();\r\n\r\n        autocomplete = new google.maps.places.Autocomplete(\r\n            (document.getElementById('start')),\r\n            { types: ['geocode'] }\r\n        );\r\n\r\n        google.maps.event.addListener(autocomplete, 'place_changed', function() {\r\n        });\r\n\r\n        // Create a map\r\n        var mapOptions = {\r\n            zoom: 10,\r\n            center: new google.maps.LatLng(\"32.5335\", \"-94.9297\")\r\n        }\r\n        map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);\r\n\r\n        // Create a renderer for directions and bind it to the map.\r\n        var rendererOptions = {\r\n            map: map\r\n        }\r\n        directionsDisplay = new google.maps.DirectionsRenderer(rendererOptions)\r\n        directionsDisplay.setPanel(document.getElementById('directions-panel'));\r\n\r\n        var redIcon   = '//www.google.com/intl/en_us/mapfiles/ms/micons/red-dot.png';\r\n\r\n        marker = new google.maps.Marker({\r\n            position: new  google.maps.LatLng(\"32.5335\", \"-94.9297\"),\r\n            map:map,\r\n            icon: redIcon\r\n        });\r\n\r\n        // Instantiate an info window to hold step text.\r\n        stepDisplay = new google.maps.InfoWindow();\r\n\r\n    }\r\n\r\n    // Recalculate Route and redisplay directions\r\n    function calcRoute(mode) {\r\n        if (!(mode)){\r\n            mode = google.maps.TravelMode.DRIVING;\r\n        }\r\n        else{\r\n            mode =  mode;\r\n        }\r\n        var start = document.getElementById('start').value;\r\n        var end = document.getElementById('end').value;\r\n        var request = {\r\n            origin: start,\r\n            destination: end,\r\n            travelMode: google.maps.TravelMode[mode]\r\n        };\r\n        directionsService.route(request, function (response, status) {\r\n            // if directions were found, display them\r\n            if (status == google.maps.DirectionsStatus.OK) {\r\n                marker.setMap(null);\r\n                directionsDisplay.setDirections(response);\r\n                $(\"#directionsPopup\").addClass(\"open\");\r\n                $(\"#directionsWrapper\").css({\"height\": \"640px\", \"overflow-y\": \"scroll\"});\r\n                $(\"#directions-panel\").show();\r\n                $(\"#directionsPopup\").animate({ scrollTop: 0 }, \"fast\");\r\n                lastCenter = map.getCenter();\r\n                google.maps.event.trigger(map, 'resize');\r\n                map.setCenter(lastCenter);\r\n\r\n                setTimeout(function () {\r\n                    $(\"#mapSummary\").empty();\r\n                    var travelMode = $(\".travel-mode.active\").attr(\"id\");\r\n                    $(\"#mapSummary\").append($(document.createElement(\"span\")).append(document.createTextNode(travelMode + \" directions\")).addClass(\"capitalize\"));\r\n                    $(\"#directions-panel .adp-summary\").appendTo(\"#mapSummary\");\r\n                    $(\"#map-summary\").show();\r\n                });\r\n            }\r\n            // else if no directions, reset to search box\r\n            else {\r\n                $(\"#directions-panel\").hide();\r\n                $(\"#map-summary\").hide();\r\n                $(\".travel-mode\").removeClass(\"active\");\r\n                $(\".travel-mode#driving\").addClass(\"active\");\r\n            }\r\n        });\r\n\r\n\r\n    }\r\n    \r\n    function getDirections() {\r\n        initialize();\r\n        var directionsPopupOpenFunction =  function() {\r\n            window.scrollTo(0, 0);\r\n\r\n            // make height larger if already got directions\r\n            if ($(\"#map-summary\").css(\"display\") == \"block\") {\r\n                $(\"#directionsPopup\").css(\"height\", \"700px !important\");\r\n                $(\"#directionsWrapper\").css(\"height\", \"640px\");\r\n            }\r\n            $(\".pac-container\").addClass(\"notranslate\");\r\n        };\r\n\r\n        window.setUpDialog($(\"#directionsPopup\"), directionsPopupOpenFunction, null, \"directions-popup\");\r\n        $(\"#directionsPopup\").dialog(\"open\");\r\n\r\n        lastCenter = map.getCenter();\r\n        google.maps.event.trigger(map, 'resize');\r\n        map.setCenter(lastCenter);\r\n    }\r\n\r\n\r\n    // On document ready, add click listeners\r\n    $(document).ready(function () {\r\n        // Change travel mode\r\n        $(\".travel-mode\").click(function () {\r\n            $(\".travel-mode\").removeClass(\"active\");\r\n            $(this).addClass(\"active\");\r\n            calcRoute($(this).attr(\"id\").toUpperCase());\r\n        });\r\n\r\n        // Print directions\r\n        $(\"#mapPrint\").click(function () {\r\n            var printWindow = window.open();\r\n            printWindow.document.write($(\".wide-directions\").html());\r\n            printWindow.document.write(\"<style>#map-summary, #get-directions, .ui-dialog-titlebar{display: none !important;}</style>\");\r\n            printWindow.document.close(); //this seems to be the thing doing the trick\r\n            printWindow.focus();\r\n            printWindow.print();\r\n            printWindow.close();\r\n        });\r\n\r\n        // Reverse directions\r\n        $(\"#mapReverse\").click(function () {\r\n            var start = $(\"#start\").val();\r\n            var end = $(\"#end\").val();\r\n            var mode = $(\".travel-mode.active\").attr(\"id\").toUpperCase();\r\n            $(\"#start\").val(end);\r\n            $(\"#end\").val(start);\r\n\r\n            calcRoute(mode);\r\n        });\r\n\r\n        \r\n    });\r\n\r\n"]},
            {"script", [],
             ["\r\n    $(document).ready(function () {\r\n\r\n\r\n                $(\"#BlacklistMessageViewMore\").click(function () {\r\n                    if ($(this).text() === \"read more\") {\r\n                        $(\"#blacklistMessage\").text(\"We are concerned that reviews posted to this dealership page may have been submitted in violation of our guidelines. Please take this into consideration as we work to make sure that we're showing you valid reviews to help find the right dealership and salesperson for you.\");\r\n                        $(this).text(\"read less\");\r\n                    } else {\r\n                        $(\"#blacklistMessage\").text(\"We are concerned that reviews posted to this dealership page may have been submitted in violation of our guidelines...\");\r\n                        $(this).text(\"read more\");\r\n                    }\r\n                    return false;\r\n                });\r\n\r\n    });\r\n"]},
            {"script",
             [
               {"type", "application/javascript"},
               {"src",
                "https://a01.korrelate.net/a/e/d2a.ads?r=637051086849259388&ago=598&ao=599&s=1&px=429&pt=s&et=a&lvl=&av1=CertifiedEssentials%7c360Connect%7cCustomerConnect%7cDealerRater+Connections"}
             ], [""]},
            {"script", [],
             ["\n        // preselect correct filter option.  i had the option to bind to the model, but\n        // to do that would require the creation of another enum -- more code.\n        $(\"#review-filter option[value=ALL_REVIEWS]\").attr(\"selected\", \"true\");\n\n        // when the review filter changes, reset page to 1 and refresh\n        $(\"#review-filter\").change(function () {\n            document.location.href = '/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/?filter=' + $(\"#review-filter option:selected\").val() + '#link';\n        });\n        $(document).ready(function() {\n            \r\n    function ajaxCall(form, data) {\r\n        $.ajax({\r\n            url: form.attr('action'),\r\n            type: form.attr('method'),\r\n            data: data,\r\n            success: function (result) {\r\n                $('#dialog-report').dialog(\"close\"); \r\n                if (form.attr('action') == '/json/reviews/dealerreport') {\r\n                var reviewId = $(\"#ReviewId\").val();\r\n                $(\"#r_\" + reviewId + \" .report-review\").removeClass(\"orange-lt\").addClass(\"grey pointer-events-none\");\r\n\r\n                var source = $(\"#Source\").val();\r\n                if (source != 0) {\r\n                $(\"#msg-dr\").hide();\r\n                $(\"#msg-cars\").show();\r\n                }\r\n                }\r\n\r\n                $(\"#dialog_reportReview_in_progress\").dialog(\"close\");\r\n\r\n                window.setUpAndShowSuccessOrFailure(\"Your review report has been submitted.\", \"Check your email for more information.\");\r\n\r\n                $('.submitReport').removeAttr('disabled');\r\n                }\r\n                });\r\n                }\r\n\r\n                $(document).ready(function() {\r\n                \r\n\r\n\r\n\r\n                $(\"#dialog-report\").dialog({\r\n                autoOpen: false,\r\n                resizable: false,\r\n                modal: true,\r\n                width: 650,\r\n                dialogClass: \"dr-dialog report-dialog\",\r\n                close: function () {\r\n                $(\"#dialog-report label[name^=_]\").hide();\r\n                $(\"#dialog-report label[name^=-]\").show();\r\n                }\r\n                });\r\n\r\n                window.submitReport = function () {\r\n                var form = $('#report_form');\r\n                if ($(form).valid()) {\r\n                $('.submitReport').attr('disabled', true);\r\n                if (form.attr('action') == '/json/reviews/dealerreport') {\r\n                $(\"#dialog_reportReview_in_progress\").dialog(\"open\");\r\n                var formData = form.serialize();\r\n                ajaxCall(form, formData);\r\n                }\r\n                else {\r\n                window.GoogleCaptcha.ShowCaptchaDialog({\r\n                instanceId: $(this).closest('form').attr('id'),\r\n                success: function(result) {\r\n                onCaptchaSuccess(result, form);\r\n                }\r\n                });\r\n                }\r\n                }\r\n                }\r\n\r\n                window.closeReport = function () {\r\n                $(\"#dialog-report\").dialog(\"close\");\r\n                }\r\n\r\n                \r\n                window.reportReview = function (id, source) {\r\n                \r\n                $(\"#report_form\")[0].reset();\r\n\r\n                \r\n                $(\"#dialog-report\").dialog(\"open\");\r\n                $(\"#ReviewId\").val(id);\r\n\r\n                \r\n                if(source){\r\n                $.validator.addMethod(\r\n                \"email_regex\",\r\n                function(value, element, regexp) {\r\n                var re = new RegExp(regexp, \"i\");\r\n                return this.optional(element) || re.test(value);\r\n                },\r\n                \"Reviews must be reported by an employee at the dealership\"\r\n                );\r\n\r\n                $(\"#EmailAddress\").rules(\"add\", { email_regex: \"^((?!(@cars\\.com)|(@dealerrater\\.com)).)*$\" })\r\n                }\r\n                else {\r\n                source = 0;\r\n                }\r\n\r\n                $(\"#Source\").val(source);\r\n\r\n                \r\n                $(\"#report_form\").validate().resetForm();\r\n                $(\"#report_form span[class=field-validation-error] span\").remove();\r\n                }\r\n\r\n                $(\"#Reason\").change(function () {\r\n                if ($(\"#Reason\").val() === \"\") {\r\n                $(\"#dialog-report label[name^=_]\").hide();\r\n                $(\"#dialog-report label[name^=-]\").show();\r\n                } else {\r\n                $(\"#dialog-report label[name^=-]\").hide();\r\n                $(\"#dialog-report label[name^=_]\").hide();\r\n                $(\"#dialog-report label[name^=_\" + $(\"#Reason\").val() + \"]\").show();\r\n                }\r\n                });\r\n\r\n                window.onCaptchaSuccess = function (result, formElem) {\r\n                $(\"#dialog_reportReview_in_progress\").dialog(\"open\");\r\n                var formData = formElem.serialize() + '&' + $.param({ 'captchaResult': result });\r\n                ajaxCall(formElem, formData);\r\n                };\r\n\r\n                $('#dialog_reportReview_in_progress').dialog({\r\n                width: 375,\r\n                height: 180,\r\n                dialogClass: \"dr-dialog\",\r\n                resizable: false,\r\n                autoOpen: false,\r\n                modal: true\r\n                });\r\n\r\n\r\n                });\r\n;\n            window.digitalData.dealer.subPages = \"Dealer Reviews\";\n\n            \n                $(\"#dealerName\").append(\"<span class='regular'> | Page \" + \"164 \" + \"</span>\");\n            \r\n        });\n    "]},
            {:comment, " Begin comScore Tag "},
            {"script", [],
             ["\r\n        var _comscore = _comscore || [];\r\n        _comscore.push({ c1: \"2\", c2: \"19272502\" });\r\n        (function () {\r\n            var s = document.createElement(\"script\"), el = document.getElementsByTagName(\"script\")[0]; s.async = true;\r\n            s.src = (document.location.protocol == \"https:\" ? \"https://sb\" : \"http://b\") + \".scorecardresearch.com/beacon.js\";\r\n            el.parentNode.insertBefore(s, el);\r\n        })();\r\n    "]},
            {"noscript", [],
             [
               {"img",
                [
                  {"src",
                   "http://b.scorecardresearch.com/p?c1=2&c2=19272502&cv=2.0&cj=1"}
                ], []}
             ]},
            {:comment, " End comScore Tag "},
            {:comment, " common scripts for all pages "},
            {"script", [{"type", "text/javascript"}],
             ["\r\n        window.onload = function() {  };\r\n\r\n        \r\n        function showLocationMessage(currentLocaleName, localeSwitchHost) {\r\n            var promptText = \"We noticed you're currently located in \" +\r\n                currentLocaleName +\r\n                \"and so are we! Please visit <a href=\\\"http://\" + localeSwitchHost + \"\\\">\" + currentLocaleName + \"</a> website for a more optimized experience.\";\r\n            $('#locationPromptText').html(promptText);\r\n            $('#locationAlertBar').show();\r\n        }\r\n\r\n\r\n        function translatePlaceholders() {\r\n\r\n            // Find all placeholders\r\n            var placeholders = $('input[placeholder], textarea[placeholder]');\r\n\r\n            if (placeholders.length) {\r\n                // convert to array\r\n                placeholders = Array.prototype.slice.call(placeholders);\r\n                window.placeholdersToTranslate = placeholders;\r\n\r\n                // copy placeholder text to a hidden div\r\n                var div = $('<div id=\"placeholders\" style=\"display:block\"></div>');\r\n\r\n                placeholders.forEach(function (input) {\r\n                    var text = input.placeholder;\r\n                    div.append('<div>' + text + '</div>');\r\n                });\r\n\r\n                $('body').append(div);\r\n\r\n                // check for changes and update as needed\r\n                setInterval(checkTranslated, 500);\r\n            }\r\n        }\r\n\r\n        function checkTranslated()\r\n        {\r\n            $('#placeholders > div').each(function (i, div) {\r\n                if (window.placeholdersToTranslate[i].placeholder != $(div).text()) {\r\n                    updatePlaceholders();\r\n                    return false;\r\n                }\r\n            });\r\n        }\r\n\r\n        function updatePlaceholders() {\r\n            $('#placeholders > div').each(function (i, div) {\r\n                window.placeholdersToTranslate[i].placeholder = $(div).text();\r\n            });\r\n        }\r\n\r\n\r\n        $(document).ready(function () {\r\n            // new hamburger\r\n            $(\"#hamburgerButton\").click(function() {\r\n                $(\"#hamburger\").toggleClass(\"is-active\");\r\n                toggleMobileNav();\r\n                return false;\r\n            });\r\n\r\n            // google translate init\r\n\r\n            \r\n                $('input[id=\"headerAutoComplete\"]').keydown( function (e) {\r\n                    if (e.which == 13) {\r\n                        location.href = '/search/?q=' + escape($('#' + $(this).context.id).val());\r\n                    }\r\n                });\r\n            \r\n\r\n            $('#pushdownNoticeClose').click(function () {\r\n                $('#pushdownNotice').fadeOut(250, function () {\r\n                    $.cookie(\"suppressLocalizationPrompt\", \"true\", { \"path\": \"/\" });\r\n                });\r\n            });\r\n            //pad footer placement\r\n            var fillH = $(window).height() - ($('footer').height() + $('header').height() +30);\r\n            if ($('#contentInner').height() < fillH) $('#contentInner').css({ 'height': fillH });\r\n\r\n            filterUI.handleRetina();\r\n\r\n            \r\n            $(window).one('scroll', function() {\r\n                $(\"#footerContainer\")[0].style.cssText += ';-webkit-transform:rotateZ(360deg)';\r\n                $(\"#footerContainer\")[0].style.cssText += ';-webkit-transform:rotateZ(0deg)';\r\n            });\r\n\r\n            \r\n            if (!$.cookie(\"suppressLocalizationPrompt\")) {\r\n                \r\n                var localizationCookie = $.cookie(\"_localization\");\r\n                if (localizationCookie) {\r\n                    var localizationPrompt = JSON.parse(localizationCookie);\r\n                    if(localizationPrompt.PromptIsVisible){\r\n                        showLocationMessage(localizationPrompt.CurrentLocaleName, localizationPrompt.LocaleSwitchHost);\r\n                    }\r\n                } else {\r\n                    $.ajax({\r\n                        type: \"POST\",\r\n                        url: \"/json/localization/getlocalizationprompt\",\r\n                        success: function (data) {\r\n                            $.cookie(\"_localization\", JSON.stringify(data), { expires: 365, path: '/' });\r\n                            if (data.PromptIsVisible) {\r\n                                showLocationMessage(data.CurrentLocaleName, data.LocaleSwitchHost);\r\n                            }\r\n                        }\r\n                    });\r\n                }\r\n            }\r\n        });\r\n\r\n        \r\n        $('.submit-once').submit(function() {\r\n            $('.submit-once').submit(function(e) {\r\n                e.preventDefault();\r\n            });\r\n        });\r\n\r\n    "]},
            {"script", [],
             ["\r\n        var acDisplayed = false;\r\n        $('#headerAutoComplete, #mobileAutoComplete').keyup(function () {\r\n            var elem = $(this);\r\n            setTimeout(function () {\r\n                if (!acDisplayed && $('.ui-autocomplete.dealerAutocomplete').is(\":visible\")) {\r\n                    // track ga event\r\n                    recordEvent('Global-Header', 'dealer-search-autocomplete_display', location.href, null, false);\r\n                    acDisplayed = true;\r\n                }\r\n                // set acDisplayed to false if search box is empty\r\n                if (elem.val().length == 0) {\r\n                    acDisplayed = false;\r\n                }\r\n            }, 300);\r\n        });\r\n    "]},
            {"script", [{"type", "text/javascript"}],
             ["\n  $(document).ready(function () {\n    $('.header-search-input').autocomplete({\n      delay: \"125\",\n      source: \"/json/dealer/dealersearch?MaxItems=7\",\n      minLength: 2,\n      position: {\n        my: 'right+155 top',\n        of: '.header-search-input',\n      },\n      create: function(){$(this).data(\"uiAutocomplete\").menu.element.addClass(\"dealerAutocomplete\");},\n       renderItem: function (ul, item) {\n         return $(\"<li><a><table cellspacing='0' cellpadding='0'><tr><td width='40' rowspan='2' align='bottom'><img src='\" + (item.isCertified == 1 ? \"/images/badge-certified-dealer.png\" : \"/images/spacer.gif\") + \"' width='35' height='45' /><td valign='bottom' class='bold notranslate'>\" + item.dealerName + \"</td></tr><tr><td valign='top' class='notranslate'>\" + item.city + \", \" + item.state + \"</td></table></a></li>\").appendTo(ul);\n       },\n       renderFooter: function (ul) {\n         return $(\"<li><a href='#'><div width='100%' align='center'>View More</div></a></li>\").appendTo(ul);\n       },\n       select: function (event, ui) { \r\n    if (ui.item == null) {\r\n    location.href = '/search/?q=' + escape($('#' + $(this).context.id).val());\r\n    } else {\r\n    // track ga event\r\n    recordEvent('Global-Header', 'dealer-search-autocomplete_click', location.href, null, false);\r\n    // track adobe event\r\n    window.digitalData.pageInfo = {\r\n    suggestedClick: true,\r\n    dealerShip: ui.item.dealerId\r\n    };\r\n    location.href = '/d/' + ui.item.dealerId;\r\n    } },\n    });\n  });\n"]},
            {"script", [{"type", "text/javascript"}],
             ["\n  $(document).ready(function () {\n    $('.header-mobile-search-input').autocomplete({\n      delay: \"125\",\n      source: \"/json/dealer/dealersearch?MaxItems=7\",\n      minLength: 2,\n      position: {\n        my: 'left top+10',\n        of: '.header-mobile-search-input',\n      },\n      create: function(){$(this).data(\"uiAutocomplete\").menu.element.addClass(\"dealerAutocomplete\");},\n       renderItem: function (ul, item) {\n         return $(\"<li><a><table cellspacing='0' cellpadding='0'><tr><td width='40' rowspan='2' align='bottom'><img src='\" + (item.isCertified == 1 ? \"/images/badge-certified-dealer.png\" : \"/images/spacer.gif\") + \"' width='35' height='45' /><td valign='bottom' class='bold notranslate'>\" + item.dealerName + \"</td></tr><tr><td valign='top' class='notranslate'>\" + item.city + \", \" + item.state + \"</td></table></a></li>\").appendTo(ul);\n       },\n       renderFooter: function (ul) {\n         return $(\"<li><a href='#'><div width='100%' align='center'>View More</div></a></li>\").appendTo(ul);\n       },\n       select: function (event, ui) { \r\n    if (ui.item == null) {\r\n    location.href = '/search/?q=' + escape($('#' + $(this).context.id).val());\r\n    } else {\r\n    // track ga event\r\n    recordEvent('Global-Header', 'dealer-search-autocomplete_click', location.href, null, false);\r\n    // track adobe event\r\n    window.digitalData.pageInfo = {\r\n    suggestedClick: true,\r\n    dealerShip: ui.item.dealerId\r\n    };\r\n    location.href = '/d/' + ui.item.dealerId;\r\n    } },\n    });\n  });\n"]},
            {"script", [{"type", "text/javascript"}],
             ["\r\n        (function (i, s, o, g, r, a, m) {\r\n            i['RoxanneObject'] = r;\r\n            i[r] = i[r] || function () {\r\n                (i[r].q = i[r].q || []).push(arguments)\r\n            }, i[r].l = 1 * new Date();\r\n            a = s.createElement(o),\r\n                m = s.getElementsByTagName(o)[0];\r\n            a.async = 1;\r\n            a.src = g;\r\n            m.parentNode.insertBefore(a, m)\r\n        })(window, document, 'script', 'https://ref.dealerinspire.com/site/98263/code', 'roxanne');\r\n    "]},
            {:comment, " required per licensing with myfonts.net "},
            {"link",
             [
               {"rel", "stylesheet"},
               {"type", "text/css"},
               {"href", "//hello.myfonts.net/count/2afa47"}
             ], []},
            {"script", [{"type", "text/javascript"}],
             ["\nvar mouseflowAutoStart = false;\r\n\r\nvar mfPageRecordingRates = [\r\n['contains', '/dp', 100]\r\n];\r\nvar mfBaseRecordingRate = 5;\r\n\r\nfunction mfGetRandomNumber(max) {\r\nreturn Math.floor(Math.random() * max);\r\n}\r\n\r\nvar mfCookie = {\r\nset: function(name, value, days) {\r\nvar domain, domainParts, date, expires, host;\r\n\r\nif (days) {\r\ndate = new Date();\r\ndate.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));\r\nexpires = '; expires=' + date.toGMTString();\r\n} else {\r\nexpires = ''\r\n}\r\n\r\nhost = location.host;\r\nif (host.split('.').length === 1) {\r\ndocument.cookie = name + '=' + value + expires + '; path=/';\r\n} else {\r\ndomainParts = host.split('.');\r\ndomainParts.shift();\r\ndomain = '.' + domainParts.join('.');\r\n\r\ndocument.cookie = name + '=' + value + expires + '; path=/; domain=' + domain;\r\n\r\nif (mfCookie.get(name) == null || mfCookie.get(name) != value) {\r\ndomain = '.' + host;\r\ndocument.cookie = name + '=' + value + expires + '; path=/; domain=' + domain;\r\n}\r\n}\r\n},\r\nget: function(name) {\r\nvar nameEQ = name + '=';\r\nvar ca = document.cookie.split(';');\r\nfor (var i = 0; i < ca.length; i++) {\r\nvar c = ca[i];\r\nwhile (c.charAt(0) == ' ') {\r\nc = c.substring(1, c.length);\r\n}\r\n\r\nif (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);\r\n}\r\nreturn null;\r\n}\r\n};\r\n\r\nfunction mfShouldStartRecording(pageRecordingRates, baseRecordingRate) {\r\n\r\nfor (var i = 0; i < pageRecordingRates.length; i++) {\r\nvar matchRule = pageRecordingRates[i][0];\r\nvar pagePathname = pageRecordingRates[i][1];\r\nvar pageRecordingRate = pageRecordingRates[i][2];\r\n\r\nswitch (matchRule) {\r\ncase 'contains':\r\nif (document.location.pathname.toLowerCase().indexOf(pagePathname.toLowerCase()) > -1 || document.location.search.indexOf('mf_force=1') > -1) {\r\nif (mfGetRandomNumber(100) < pageRecordingRate || pageRecordingRate === 100) {\r\nreturn true;\r\n}\r\n}\r\nbreak;\r\ncase 'equals':\r\nif (document.location.pathname.toLowerCase() === pagePathname.toLowerCase() || document.location.search.indexOf('mf_force=1') > -1) {\r\nif (mfGetRandomNumber(100) < pageRecordingRate || pageRecordingRate === 100) {\r\nreturn true;\r\n}\r\n}\r\nbreak;\r\ndefault:\r\nbreak;\r\n}\r\n}\r\n\r\nif (mfGetRandomNumber(100) < baseRecordingRate || baseRecordingRate === 100) {\r\nreturn true;\r\n}\r\n\r\nreturn false;\r\n}\r\n\r\nif(mfShouldStartRecording(mfPageRecordingRates, mfBaseRecordingRate)) {\r\nmfCookie.set('mf_record', 1);\r\nmouseflowAutoStart = true;\r\n}\r\n\r\nif (mfCookie.get('mf_record')) {\r\nmouseflowAutoStart = true;\r\n}\r\n\r\nwindow._mfq = window._mfq || [];\r\n(function() {\r\nvar mf = document.createElement('script'); mf.type='text/javascript'; mf.async = true;\r\nmf.src = '//cdn.mouseflow.com/projects/ee6926e5-5b80-444b-bb27-cc35694a40b1.js';\r\ndocument.getElementsByTagName('head')[0].appendChild(mf);\r\n})();"]}
          ]}
       ]}
    ]
  end
end