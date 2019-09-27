defmodule Factories.ReviewFactory do

  def ten_reviews do
    [
      {"div",
       [
         {"class",
          "review-entry col-xs-12 text-left pad-none pad-top-lg  border-bottom-teal-lt"}
       ],
       [
         {"a", [{"name", "r76920"}], []}, 
         {"div",
          [
            {"class",
             "col-xs-12 col-sm-3 pad-left-none text-center review-date margin-bottom-md"}
          ],
          [
            {"div",
             [{"class", "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}],
             ["May 29, 2009"]},
            {"div", [{"class", "col-xs-6 col-sm-12 pad-none dealership-rating"}],
             [
               {"div",
                [
                  {"class",
                   "rating-static visible-xs pad-none margin-none rating-50 pull-right"}
                ], []},
               {"div",
                [{"class", "rating-static hidden-xs rating-50 margin-center"}], []},
               {"div",
                [
                  {"class",
                   "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                ], ["SALES VISIT - USED"]}
             ]}
          ]}, 
         {"div", [{"class", "col-xs-12 col-sm-9 pad-none review-wrapper"}],
          [
            {:comment, " REVIEW TITLE, USER"},
            {"div", [{"class", "margin-bottom-sm line-height-150"}],
             [
               {"h3",
                [{"class", "no-format inline italic-bolder font-20 dark-grey"}],
                ["\"I have been buying cars and trucks from McKaig Chevrolet...\""]},
               {"span", [{"class", "italic font-18 black notranslate"}],
                ["- dennis Gage"]}
             ]},
            {:comment, " REVIEW BODY "},
            {"div", [{"class", "tr margin-top-md"}],
             [
               {"div", [{"class", "td text-left valign-top "}],
                [
                  {"p",
                   [
                     {"class",
                      "font-16 review-content margin-bottom-none line-height-25"}
                   ],
                   ["I have been buying cars and trucks from McKaig Chevrolet since 1971. They have always giving be the best price. There service after the sale is why I always came back to them. They are always so friendly and go out of there way to help you. I have sent other people to McKaig because they have the type of employees that you want to talk to."]},
                  {"a",
                   [
                     {"id", "76920"},
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
               {:comment, " REVIEW RATING - CUSTOMER SERVICE "},
               {"div",
                [
                  {"class",
                   "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                ],
                [
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Customer Service"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - QUALITY OF WORK "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Quality of Work"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]}, 
                  {:comment, " REVIEW RATING - FRIENDLINESS "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Friendliness"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - PRICING "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Pricing"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - EXPERIENCE "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "td lt-grey small-text"}],
                      ["Overall Experience"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - RECOMMEND DEALER "},
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Recommend Dealer"]},
                     {"div", [{"class", "td small-text boldest"}],
                      ["\r\n                Yes\r\n            "]}
                   ]}
                ]}
             ]},
            {:comment, " EMPLOYEE SECTION "},
            {"div", [{"class", "clear-fix  margin-top-sm"}],
             [
               {"div",
                [{"class", "col-xs-12 lt-grey pad-left-none employees-wrapper"}],
                [
                  {"div", [{"class", "small-text"}], ["Employees Worked With "]},
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
                           {"class", "td square-image employee-image"},
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
                              {"data-emp-id", "54375"},
                              {"href", "/sales/Mike-Lambert-review-54375/"}
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
                           {"class", "td square-image employee-image"},
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
                              {"data-emp-id", "2931"},
                              {"href", "/sales/Kent-Abernathy-review-2931/"}
                            ],
                            ["\r\n                                             Kent Abernathy\r\n                                         "]}
                         ]}
                      ]}
                   ]},
                  {"div", [{"class", "col-xs-12 pad-none pad-top-sm "}],
                   [
                     {"span", [{"class", "small-text"}], ["Other Employees :"]},
                     {"span", [{"class", "italic font-13 notranslate"}],
                      ["Mike Lambert, Larry Arron, Kent Abernathy "]}
                   ]}
                ]}
             ]},
            {:comment, " SOCIAL MEDIA AND REVIEW ACTIONS "},
            {"div", [{"class", "col-xs-12 pad-none review-hide margin-top-lg"}],
             [
               {"div", [{"class", "pull-left"}],
                [
                  {"a",
                   [
                     {"href",
                      "https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76920&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People"},
                     {"onclick",
                      "window.open('https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76920&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
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
                      "http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76920"},
                     {"onclick",
                      "window.open('http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76920', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
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
               {"div", [{"class", "pull-left margin-left-md"}],
                [
                  {"a",
                   [
                     {"href", "#"},
                     {"onclick",
                      "javascript:window.reportReview(76920); return false;"},
                     {"class", "small-text"}
                   ], ["Report"]},
                  " |\r\n        ",
                  {"a",
                   [
                     {"href", "#"},
                     {"onclick",
                      "window.open('/dealer/respond.aspx?dealerId=23685&commentId=76920', 'report', 'toolbar=no,scrollbars=yes,location=no,width=575,height=465,resizable=yes'); return false;"},
                     {"class", "small-text"}
                   ], ["Respond"]},
                  " |\r\n        ",
                  {"a",
                   [
                     {"href", "#"},
                     {"onclick",
                      "window.open('/consumer/dealer/23685/review/76920/print', 'report', 'toolbar=no,scrollbars=yes,location=no,width=720,height=400,resizable=yes'); return false;"},
                     {"class", "small-text"}
                   ], ["Print"]}
                ]}
             ]},
            {:comment, " PUBLIC MESSAGES "},
            {:comment, " WAS HELPFUL SECTION "},
            {"div", [{"class", "col-xs-12 margin-bottom-lg"}],
             [
               {"div", [{"class", "pull-right"}],
                [
                  {"a",
                   [
                     {"href", "#"},
                     {"class", "helpful-button"},
                     {"onclick",
                      "javascript:MarkReviewHelpful(76920, this); return false;"}
                   ],
                   [
                     {"img",
                      [
                        {"class", "pull-left margin-right-sm"},
                        {"src",
                         "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                      ], []},
                     " Helpful ",
                     {"span",
                      [
                        {"class", "helpful-count display-none"},
                        {"id", "helpful_count_76920"}
                      ], ["0"]}
                   ]}
                ]}
             ]}
          ]}
       ]},
      {"div",
       [
         {"class",
          "review-entry col-xs-12 text-left pad-none pad-top-lg  border-bottom-teal-lt"}
       ],
       [
         {"a", [{"name", "r76906"}], []},
         {"div",
          [
            {"class",
             "col-xs-12 col-sm-3 pad-left-none text-center review-date margin-bottom-md"}
          ],
          [
            {"div",
             [{"class", "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}],
             ["May 29, 2009"]},
            {"div", [{"class", "col-xs-6 col-sm-12 pad-none dealership-rating"}],
             [
               {"div",
                [
                  {"class",
                   "rating-static visible-xs pad-none margin-none rating-48 pull-right"}
                ], []},
               {"div",
                [{"class", "rating-static hidden-xs rating-48 margin-center"}], []},
               {"div",
                [
                  {"class",
                   "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                ], ["SERVICE VISIT"]}
             ]}
          ]},
         {"div", [{"class", "col-xs-12 col-sm-9 pad-none review-wrapper"}],
          [
            {:comment, " REVIEW TITLE, USER"},
            {"div", [{"class", "margin-bottom-sm line-height-150"}],
             [
               {"h3",
                [{"class", "no-format inline italic-bolder font-20 dark-grey"}],
                ["\"When I have a service need Doyal is always prompt to give...\""]},
               {"span", [{"class", "italic font-18 black notranslate"}],
                ["- KellyD"]}
             ]},
            {:comment, " REVIEW BODY "},
            {"div", [{"class", "tr margin-top-md"}],
             [
               {"div", [{"class", "td text-left valign-top "}],
                [
                  {"p",
                   [
                     {"class",
                      "font-16 review-content margin-bottom-none line-height-25"}
                   ],
                   ["When I have a service need Doyal is always prompt to give an appointment and sees that someone can carry me to work and bring my car back to the shop for service performance.  With a working girl, this is important to me.  I am always pleased with the fast and efficient service as well as the friendliness of the staff. When I am in need of a new vehicle, McKaig is the first dealership that comes to mind to purchase from, because I know I will receive the attention and service I need and expect."]},
                  {"a",
                   [
                     {"id", "76906"},
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
               {:comment, " REVIEW RATING - CUSTOMER SERVICE "},
               {"div",
                [
                  {"class",
                   "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                ],
                [
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Customer Service"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - QUALITY OF WORK "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Quality of Work"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - FRIENDLINESS "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Friendliness"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - PRICING "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Pricing"]},
                     {"div",
                      [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - EXPERIENCE "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "td lt-grey small-text"}],
                      ["Overall Experience"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - RECOMMEND DEALER "},
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Recommend Dealer"]},
                     {"div", [{"class", "td small-text boldest"}],
                      ["\r\n                Yes\r\n            "]}
                   ]}
                ]}
             ]},
            {:comment, " EMPLOYEE SECTION "},
            {"div", [{"class", "clear-fix  margin-top-sm"}],
             [
               {"div",
                [{"class", "col-xs-12 lt-grey pad-left-none employees-wrapper"}],
                [
                  {"div", [{"class", "small-text"}], ["Employees Worked With "]},
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
                           {"class", "td square-image employee-image"},
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
                               "notranslate pull-left line-height-1 tagged-emp small-text teal  margin-right-sm emp-2931"},
                              {"data-emp-id", "2931"},
                              {"href", "/sales/Kent-Abernathy-review-2931/"}
                            ],
                            ["\r\n                                             Kent Abernathy\r\n                                         "]}
                         ]}
                      ]}
                   ]},
                  {"div", [{"class", "col-xs-12 pad-none pad-top-sm "}],
                   [
                     {"span", [{"class", "small-text"}], ["Other Employees :"]},
                     {"span", [{"class", "italic font-13 notranslate"}],
                      ["Doyal Dougan, Kent Abernathy, Doyle Dougan "]}
                   ]}
                ]}
             ]},
            {:comment, " SOCIAL MEDIA AND REVIEW ACTIONS "},
            {"div", [{"class", "col-xs-12 pad-none review-hide margin-top-lg"}],
             [
               {"div", [{"class", "pull-left"}],
                [
                  {"a",
                   [
                     {"href",
                      "https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76906&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People"},
                     {"onclick",
                      "window.open('https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76906&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
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
                      "http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76906"},
                     {"onclick",
                      "window.open('http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76906', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
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
               {"div", [{"class", "pull-left margin-left-md"}],
                [
                  {"a",
                   [
                     {"href", "#"},
                     {"onclick",
                      "javascript:window.reportReview(76906); return false;"},
                     {"class", "small-text"}
                   ], ["Report"]},
                  " |\r\n        ",
                  {"a",
                   [
                     {"href", "#"},
                     {"onclick",
                      "window.open('/dealer/respond.aspx?dealerId=23685&commentId=76906', 'report', 'toolbar=no,scrollbars=yes,location=no,width=575,height=465,resizable=yes'); return false;"},
                     {"class", "small-text"}
                   ], ["Respond"]},
                  " |\r\n        ",
                  {"a",
                   [
                     {"href", "#"},
                     {"onclick",
                      "window.open('/consumer/dealer/23685/review/76906/print', 'report', 'toolbar=no,scrollbars=yes,location=no,width=720,height=400,resizable=yes'); return false;"},
                     {"class", "small-text"}
                   ], ["Print"]}
                ]}
             ]},
            {:comment, " PUBLIC MESSAGES "},
            {:comment, " WAS HELPFUL SECTION "},
            {"div", [{"class", "col-xs-12 margin-bottom-lg"}],
             [
               {"div", [{"class", "pull-right"}],
                [
                  {"a",
                   [
                     {"href", "#"},
                     {"class", "helpful-button"},
                     {"onclick",
                      "javascript:MarkReviewHelpful(76906, this); return false;"}
                   ],
                   [
                     {"img",
                      [
                        {"class", "pull-left margin-right-sm"},
                        {"src",
                         "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                      ], []},
                     " Helpful ",
                     {"span",
                      [
                        {"class", "helpful-count display-none"},
                        {"id", "helpful_count_76906"}
                      ], ["0"]}
                   ]}
                ]}
             ]}
          ]}
       ]},
      {"div",
       [
         {"class",
          "review-entry col-xs-12 text-left pad-none pad-top-lg  border-bottom-teal-lt"}
       ],
       [
         {"a", [{"name", "r76899"}], []},
         {"div",
          [
            {"class",
             "col-xs-12 col-sm-3 pad-left-none text-center review-date margin-bottom-md"}
          ],
          [
            {"div",
             [{"class", "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}],
             ["May 29, 2009"]},
            {"div", [{"class", "col-xs-6 col-sm-12 pad-none dealership-rating"}],
             [
               {"div", 
                [
                  {"class",
                   "rating-static visible-xs pad-none margin-none rating-48 pull-right"}
                ], []},
               {"div",
                [{"class", "rating-static hidden-xs rating-48 margin-center"}], []},
               {"div",
                [
                  {"class",
                   "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                ], ["SERVICE VISIT"]}
             ]}
          ]},
         {"div", [{"class", "col-xs-12 col-sm-9 pad-none review-wrapper"}],
          [
            {:comment, " REVIEW TITLE, USER"},
            {"div", [{"class", "margin-bottom-sm line-height-150"}],
             [
               {"h3",
                [{"class", "no-format inline italic-bolder font-20 dark-grey"}],
                ["\"McKaig Chevrolet has always met or exceeded our...\""]},
               {"span", [{"class", "italic font-18 black notranslate"}],
                ["- valerie"]}
             ]},
            {:comment, " REVIEW BODY "},
            {"div", [{"class", "tr margin-top-md"}],
             [
               {"div", [{"class", "td text-left valign-top "}],
                [
                  {"p",
                   [
                     {"class",
                      "font-16 review-content margin-bottom-none line-height-25"}
                   ],
                   ["McKaig Chevrolet has always met or exceeded our expectations.  We have bought three new cars through them in the past 10 years.  The sales staff is extremely friendly and will go out of their way to find you the automobile you are interesting in purchasing.  The service staff is knowledgeable and very helpful in arranging for transportation if there is need for it.  I'm so glad we have a dealership like this right here in our hometown!"]},
                  {"a",
                   [
                     {"id", "76899"},
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
               {:comment, " REVIEW RATING - CUSTOMER SERVICE "},
               {"div", 
                [
                  {"class",
                   "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                ],
                [
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Customer Service"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - QUALITY OF WORK "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Quality of Work"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - FRIENDLINESS "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Friendliness"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - PRICING "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Pricing"]},
                     {"div",
                      [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - EXPERIENCE "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "td lt-grey small-text"}],
                      ["Overall Experience"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - RECOMMEND DEALER "},
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Recommend Dealer"]},
                     {"div", [{"class", "td small-text boldest"}],
                      ["\r\n                Yes\r\n            "]}
                   ]}
                ]}
             ]},
            {:comment, " EMPLOYEE SECTION "},
            {"div", [{"class", "clear-fix  margin-top-sm"}],
             [
               {"div",
                [{"class", "col-xs-12 lt-grey pad-left-none employees-wrapper"}],
                [
                  {"div", [{"class", "small-text"}], ["Employees Worked With "]},
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
                           {"class", "td square-image employee-image"},
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
                              {"data-emp-id", "2931"},
                              {"href", "/sales/Kent-Abernathy-review-2931/"}
                            ],
                            ["\r\n                                             Kent Abernathy\r\n                                         "]}
                         ]}
                      ]}
                   ]},
                  {"div", [{"class", "col-xs-12 pad-none pad-top-sm "}],
                   [
                     {"span", [{"class", "small-text"}], ["Other Employees :"]},
                     {"span", [{"class", "italic font-13 notranslate"}],
                      ["Doyle, Kent, Larry, Laura, Susan, Doyle Dougan "]}
                   ]}
                ]}
             ]}, 
            {:comment, " SOCIAL MEDIA AND REVIEW ACTIONS "},
            {"div", [{"class", "col-xs-12 pad-none review-hide margin-top-lg"}],
             [
               {"div", [{"class", "pull-left"}],
                [
                  {"a",
                   [
                     {"href",
                      "https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76899&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People"},
                     {"onclick",
                      "window.open('https://twitter.com/intent/tweet?url=http://www.dealerrater.com/consumer/social/76899&via=dealerrater&text=Check+out+the+latest+review+on+McKaig+Chevrolet+Buick+-+A+Dealer+For+The+People', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
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
                      "http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76899"},
                     {"onclick",
                      "window.open('http://www.facebook.com/share.php?u=http://www.dealerrater.com/consumer/social/76899', 'sharer', 'toolbar=0,status=0,width=750,height=500');return false;"},
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
               {"div", [{"class", "pull-left margin-left-md"}],
                [
                  {"a",
                   [
                     {"href", "#"},
                     {"onclick",
                      "javascript:window.reportReview(76899); return false;"},
                     {"class", "small-text"}
                   ], ["Report"]},
                  " |\r\n        ",
                  {"a",
                   [
                     {"href", "#"},
                     {"onclick",
                      "window.open('/dealer/respond.aspx?dealerId=23685&commentId=76899', 'report', 'toolbar=no,scrollbars=yes,location=no,width=575,height=465,resizable=yes'); return false;"},
                     {"class", "small-text"}
                   ], ["Respond"]},
                  " |\r\n        ",
                  {"a",
                   [
                     {"href", "#"},
                     {"onclick",
                      "window.open('/consumer/dealer/23685/review/76899/print', 'report', 'toolbar=no,scrollbars=yes,location=no,width=720,height=400,resizable=yes'); return false;"},
                     {"class", "small-text"}
                   ], ["Print"]}
                ]} 
             ]},
            {:comment, " PUBLIC MESSAGES "},
            {:comment, " WAS HELPFUL SECTION "},
            {"div", [{"class", "col-xs-12 margin-bottom-lg"}],
             [
               {"div", [{"class", "pull-right"}],
                [
                  {"a",
                   [
                     {"href", "#"},
                     {"class", "helpful-button"},
                     {"onclick",
                      "javascript:MarkReviewHelpful(76899, this); return false;"}
                   ],
                   [
                     {"img",
                      [
                        {"class", "pull-left margin-right-sm"},
                        {"src",
                         "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                      ], []},
                     " Helpful ",
                     {"span",
                      [
                        {"class", "helpful-count display-none"},
                        {"id", "helpful_count_76899"}
                      ], ["0"]}
                   ]}
                ]}
             ]}
          ]}
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
             [{"class", "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}],
             ["May 29, 2009"]},
            {"div", [{"class", "col-xs-6 col-sm-12 pad-none dealership-rating"}],
             [
               {"div",
                [
                  {"class",
                   "rating-static visible-xs pad-none margin-none rating-46 pull-right"}
                ], []},
               {"div",
                [{"class", "rating-static hidden-xs rating-46 margin-center"}], []},
               {"div",
                [
                  {"class",
                   "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                ], ["SERVICE VISIT"]}
             ]}
          ]},
         {"div", [{"class", "col-xs-12 col-sm-9 pad-none review-wrapper"}],
          [
            {:comment, " REVIEW TITLE, USER"},
            {"div", [{"class", "margin-bottom-sm line-height-150"}],
             [
               {"h3",
                [{"class", "no-format inline italic-bolder font-20 dark-grey"}],
                ["\"McKaig Chevrolet has been loyal to my family for as long...\""]},
               {"span", [{"class", "italic font-18 black notranslate"}],
                ["- awhite211"]}
             ]},
            {:comment, " REVIEW BODY "},
            {"div", [{"class", "tr margin-top-md"}],
             [
               {"div", [{"class", "td text-left valign-top "}],
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
               {:comment, " REVIEW RATING - CUSTOMER SERVICE "},
               {"div",
                [
                  {"class",
                   "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                ],
                [
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Customer Service"]},
                     {"div",
                      [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - QUALITY OF WORK "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Quality of Work"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - FRIENDLINESS "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Friendliness"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - PRICING "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Pricing"]},
                     {"div",
                      [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - EXPERIENCE "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "td lt-grey small-text"}],
                      ["Overall Experience"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - RECOMMEND DEALER "},
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Recommend Dealer"]},
                     {"div", [{"class", "td small-text boldest"}],
                      ["\r\n                Yes\r\n            "]}
                   ]}
                ]}
             ]},
            {:comment, " EMPLOYEE SECTION "},
            {"div", [{"class", "clear-fix  margin-top-sm"}],
             [
               {"div",
                [{"class", "col-xs-12 lt-grey pad-left-none employees-wrapper"}],
                [
                  {"div", [{"class", "small-text"}], ["Employees Worked With "]},
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
                           {"class", "td square-image employee-image"},
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
                              {"data-emp-id", "54375"},
                              {"href", "/sales/Mike-Lambert-review-54375/"}
                            ],
                            ["\r\n                                             Mike Lambert\r\n                                         "]}
                         ]}
                      ]}
                   ]},
                  {"div", [{"class", "col-xs-12 pad-none pad-top-sm "}],
                   [
                     {"span", [{"class", "small-text"}], ["Other Employees :"]},
                     {"span", [{"class", "italic font-13 notranslate"}],
                      ["Mike Lambert "]}
                   ]}
                ]}
             ]},
            {:comment, " SOCIAL MEDIA AND REVIEW ACTIONS "},
            {"div", [{"class", "col-xs-12 pad-none review-hide margin-top-lg"}],
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
               {"div", [{"class", "pull-left margin-left-md"}],
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
            {"div", [{"class", "col-xs-12 margin-bottom-lg"}],
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
                        {"class", "pull-left margin-right-sm"},
                        {"src",
                         "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                      ], []},
                     " Helpful ",
                     {"span",
                      [
                        {"class", "helpful-count display-none"},
                        {"id", "helpful_count_76896"}
                      ], ["0"]}
                   ]}
                ]}
             ]}
          ]}
       ]},
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
             [{"class", "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}],
             ["May 29, 2009"]},
            {"div", [{"class", "col-xs-6 col-sm-12 pad-none dealership-rating"}],
             [
               {"div",
                [
                  {"class",
                   "rating-static visible-xs pad-none margin-none rating-48 pull-right"}
                ], []},
               {"div",
                [{"class", "rating-static hidden-xs rating-48 margin-center"}], []},
               {"div",
                [
                  {"class",
                   "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                ], ["SALES VISIT - NEW"]}
             ]}
          ]},
         {"div", [{"class", "col-xs-12 col-sm-9 pad-none review-wrapper"}],
          [
            {:comment, " REVIEW TITLE, USER"},
            {"div", [{"class", "margin-bottom-sm line-height-150"}],
             [
               {"h3",
                [{"class", "no-format inline italic-bolder font-20 dark-grey"}],
                ["\"My family and I have been doing business with McKaigs for...\""]},
               {"span", [{"class", "italic font-18 black notranslate"}],
                ["- je7255"]}
             ]},
            {:comment, " REVIEW BODY "},
            {"div", [{"class", "tr margin-top-md"}],
             [
               {"div", [{"class", "td text-left valign-top "}],
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
               {:comment, " REVIEW RATING - CUSTOMER SERVICE "},
               {"div",
                [
                  {"class",
                   "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                ],
                [
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Customer Service"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - QUALITY OF WORK "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Quality of Work"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - FRIENDLINESS "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Friendliness"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - PRICING "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Pricing"]},
                     {"div",
                      [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - EXPERIENCE "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "td lt-grey small-text"}],
                      ["Overall Experience"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - RECOMMEND DEALER "},
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Recommend Dealer"]},
                     {"div", [{"class", "td small-text boldest"}],
                      ["\r\n                Yes\r\n            "]}
                   ]}
                ]}
             ]},
            {:comment, " EMPLOYEE SECTION "},
            {"div", [{"class", "clear-fix  margin-top-sm"}],
             [
               {"div",
                [{"class", "col-xs-12 lt-grey pad-left-none employees-wrapper"}],
                [
                  {"div", [{"class", "small-text"}], ["Employees Worked With "]},
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
                           {"class", "td square-image employee-image"},
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
                              {"data-emp-id", "54375"},
                              {"href", "/sales/Mike-Lambert-review-54375/"}
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
                           {"class", "td square-image employee-image"},
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
                              {"data-emp-id", "2931"},
                              {"href", "/sales/Kent-Abernathy-review-2931/"}
                            ],
                            ["\r\n                                             Kent Abernathy\r\n                                         "]}
                         ]}
                      ]}
                   ]},
                  {"div", [{"class", "col-xs-12 pad-none pad-top-sm "}],
                   [
                     {"span", [{"class", "small-text"}], ["Other Employees :"]},
                     {"span", [{"class", "italic font-13 notranslate"}],
                      ["Mike Lambert--Kent Abernathy-Doyle Dougan, Doyle Dougan "]}
                   ]}
                ]}
             ]},
            {:comment, " SOCIAL MEDIA AND REVIEW ACTIONS "},
            {"div", [{"class", "col-xs-12 pad-none review-hide margin-top-lg"}],
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
               {"div", [{"class", "pull-left margin-left-md"}],
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
            {"div", [{"class", "col-xs-12 margin-bottom-lg"}],
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
                        {"class", "pull-left margin-right-sm"},
                        {"src",
                         "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                      ], []},
                     " Helpful ",
                     {"span",
                      [
                        {"class", "helpful-count display-none"},
                        {"id", "helpful_count_76890"}
                      ], ["0"]}
                   ]}
                ]}
             ]}
          ]}
       ]}, 
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
             [{"class", "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}],
             ["May 29, 2009"]},
            {"div", [{"class", "col-xs-6 col-sm-12 pad-none dealership-rating"}],
             [
               {"div",
                [
                  {"class",
                   "rating-static visible-xs pad-none margin-none rating-50 pull-right"}
                ], []},
               {"div",
                [{"class", "rating-static hidden-xs rating-50 margin-center"}], []},
               {"div",
                [
                  {"class",
                   "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                ], ["SALES VISIT - NEW"]}
             ]}
          ]},
         {"div", [{"class", "col-xs-12 col-sm-9 pad-none review-wrapper"}],
          [
            {:comment, " REVIEW TITLE, USER"},
            {"div", [{"class", "margin-bottom-sm line-height-150"}],
             [
               {"h3",
                [{"class", "no-format inline italic-bolder font-20 dark-grey"}],
                ["\"For the past 35 years, my entire family, including my...\""]},
               {"span", [{"class", "italic font-18 black notranslate"}],
                ["- bigbug66"]}
             ]},
            {:comment, " REVIEW BODY "},
            {"div", [{"class", "tr margin-top-md"}],
             [
               {"div", [{"class", "td text-left valign-top "}],
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
               {:comment, " REVIEW RATING - CUSTOMER SERVICE "},
               {"div",
                [
                  {"class",
                   "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                ],
                [
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Customer Service"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - QUALITY OF WORK "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Quality of Work"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - FRIENDLINESS "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Friendliness"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - PRICING "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Pricing"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - EXPERIENCE "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "td lt-grey small-text"}],
                      ["Overall Experience"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - RECOMMEND DEALER "},
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Recommend Dealer"]},
                     {"div", [{"class", "td small-text boldest"}],
                      ["\r\n                Yes\r\n            "]}
                   ]}
                ]}
             ]},
            {:comment, " EMPLOYEE SECTION "},
            {"div", [{"class", "clear-fix  margin-top-sm"}],
             [
               {"div",
                [{"class", "col-xs-12 lt-grey pad-left-none employees-wrapper"}],
                [
                  {"div", [{"class", "small-text"}], ["Employees Worked With "]},
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
                           {"class", "td square-image employee-image"},
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
                              {"data-emp-id", "2931"},
                              {"href", "/sales/Kent-Abernathy-review-2931/"}
                            ],
                            ["\r\n                                             Kent Abernathy\r\n                                         "]}
                         ]}
                      ]}
                   ]},
                  {"div", [{"class", "col-xs-12 pad-none pad-top-sm "}],
                   [
                     {"span", [{"class", "small-text"}], ["Other Employees :"]},
                     {"span", [{"class", "italic font-13 notranslate"}],
                      ["Doyle Dougan, Kent Abernathy, Doyle Dougan "]}
                   ]}
                ]}
             ]},
            {:comment, " SOCIAL MEDIA AND REVIEW ACTIONS "},
            {"div", [{"class", "col-xs-12 pad-none review-hide margin-top-lg"}],
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
               {"div", [{"class", "pull-left margin-left-md"}],
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
            {"div", [{"class", "col-xs-12 margin-bottom-lg"}],
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
                        {"class", "pull-left margin-right-sm"},
                        {"src",
                         "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                      ], []},
                     " Helpful ",
                     {"span",
                      [
                        {"class", "helpful-count display-none"},
                        {"id", "helpful_count_76878"}
                      ], ["0"]}
                   ]}
                ]}
             ]}
          ]}
       ]},
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
             [{"class", "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}],
             ["May 29, 2009"]},
            {"div", [{"class", "col-xs-6 col-sm-12 pad-none dealership-rating"}],
             [
               {"div",
                [
                  {"class",
                   "rating-static visible-xs pad-none margin-none rating-50 pull-right"}
                ], []},
               {"div",
                [{"class", "rating-static hidden-xs rating-50 margin-center"}], []},
               {"div",
                [
                  {"class",
                   "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                ], ["SALES VISIT - NEW"]}
             ]}
          ]},
         {"div", [{"class", "col-xs-12 col-sm-9 pad-none review-wrapper"}],
          [
            {:comment, " REVIEW TITLE, USER"},
            {"div", [{"class", "margin-bottom-sm line-height-150"}],
             [
               {"h3",
                [{"class", "no-format inline italic-bolder font-20 dark-grey"}],
                ["\"McKaig is the best car and truck dealer I have ever dealt...\""]},
               {"span", [{"class", "italic font-18 black notranslate"}],
                ["- awhite211"]}
             ]},
            {:comment, " REVIEW BODY "},
            {"div", [{"class", "tr margin-top-md"}],
             [
               {"div", [{"class", "td text-left valign-top "}],
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
               {:comment, " REVIEW RATING - CUSTOMER SERVICE "},
               {"div",
                [
                  {"class",
                   "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                ],
                [
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Customer Service"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - QUALITY OF WORK "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Quality of Work"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - FRIENDLINESS "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Friendliness"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - PRICING "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Pricing"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - EXPERIENCE "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "td lt-grey small-text"}],
                      ["Overall Experience"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - RECOMMEND DEALER "},
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Recommend Dealer"]},
                     {"div", [{"class", "td small-text boldest"}],
                      ["\r\n                Yes\r\n            "]}
                   ]}
                ]}
             ]},
            {:comment, " EMPLOYEE SECTION "},
            {"div", [{"class", "clear-fix  margin-top-sm"}],
             [
               {"div",
                [{"class", "col-xs-12 lt-grey pad-left-none employees-wrapper"}],
                [
                  {"div", [{"class", "small-text"}], ["Employees Worked With "]},
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
                           {"class", "td square-image employee-image"},
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
                              {"data-emp-id", "54375"},
                              {"href", "/sales/Mike-Lambert-review-54375/"}
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
                           {"class", "td square-image employee-image"},
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
                              {"data-emp-id", "2931"},
                              {"href", "/sales/Kent-Abernathy-review-2931/"}
                            ],
                            ["\r\n                                             Kent Abernathy\r\n                                         "]}
                         ]}
                      ]}
                   ]},
                  {"div", [{"class", "col-xs-12 pad-none pad-top-sm "}],
                   [
                     {"span", [{"class", "small-text"}], ["Other Employees :"]},
                     {"span", [{"class", "italic font-13 notranslate"}],
                      ["Kent Abernathy, Doyle Dougan, Mike Lambert, Doyle Dougan "]}
                   ]}
                ]}
             ]},
            {:comment, " SOCIAL MEDIA AND REVIEW ACTIONS "},
            {"div", [{"class", "col-xs-12 pad-none review-hide margin-top-lg"}],
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
               {"div", [{"class", "pull-left margin-left-md"}],
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
            {"div", [{"class", "col-xs-12 margin-bottom-lg"}],
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
                        {"class", "pull-left margin-right-sm"},
                        {"src",
                         "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                      ], []},
                     " Helpful ",
                     {"span", 
                      [
                        {"class", "helpful-count display-none"},
                        {"id", "helpful_count_76872"}
                      ], ["0"]}
                   ]}
                ]}
             ]}
          ]}
       ]},
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
             [{"class", "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}],
             ["May 28, 2009"]},
            {"div", [{"class", "col-xs-6 col-sm-12 pad-none dealership-rating"}],
             [
               {"div",
                [
                  {"class",
                   "rating-static visible-xs pad-none margin-none rating-48 pull-right"}
                ], []},
               {"div",
                [{"class", "rating-static hidden-xs rating-48 margin-center"}], []},
               {"div",
                [
                  {"class",
                   "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                ], ["SERVICE VISIT"]}
             ]}
          ]},
         {"div", [{"class", "col-xs-12 col-sm-9 pad-none review-wrapper"}],
          [
            {:comment, " REVIEW TITLE, USER"},
            {"div", [{"class", "margin-bottom-sm line-height-150"}],
             [
               {"h3",
                [{"class", "no-format inline italic-bolder font-20 dark-grey"}],
                ["\"I have purchased 3 Suburbans & 3 Malibus from McKaig over...\""]},
               {"span", [{"class", "italic font-18 black notranslate"}],
                ["- Paul Folzenlogen"]}
             ]},
            {:comment, " REVIEW BODY "},
            {"div", [{"class", "tr margin-top-md"}],
             [
               {"div", [{"class", "td text-left valign-top "}],
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
               {:comment, " REVIEW RATING - CUSTOMER SERVICE "},
               {"div",
                [
                  {"class",
                   "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                ],
                [
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Customer Service"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - QUALITY OF WORK "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Quality of Work"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - FRIENDLINESS "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Friendliness"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - PRICING "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Pricing"]},
                     {"div",
                      [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - EXPERIENCE "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [ 
                     {"div", [{"class", "td lt-grey small-text"}],
                      ["Overall Experience"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - RECOMMEND DEALER "},
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Recommend Dealer"]},
                     {"div", [{"class", "td small-text boldest"}],
                      ["\r\n                Yes\r\n            "]}
                   ]}
                ]}
             ]},
            {:comment, " EMPLOYEE SECTION "},
            {"div", [{"class", "clear-fix  margin-top-sm"}],
             [
               {"div",
                [{"class", "col-xs-12 lt-grey pad-left-none employees-wrapper"}],
                [
                  {"div", [{"class", "small-text"}], ["Employees Worked With "]},
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
                           {"class", "td square-image employee-image"},
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
                              {"data-emp-id", "2931"},
                              {"href", "/sales/Kent-Abernathy-review-2931/"}
                            ],
                            ["\r\n                                             Kent Abernathy\r\n                                         "]}
                         ]}
                      ]}
                   ]},
                  {"div", [{"class", "col-xs-12 pad-none pad-top-sm "}],
                   [
                     {"span", [{"class", "small-text"}], ["Other Employees :"]},
                     {"span", [{"class", "italic font-13 notranslate"}],
                      ["Kent Abernathy, Doyle Doogan, Philip Anderson, Doyle Dougan "]}
                   ]}
                ]}
             ]},
            {:comment, " SOCIAL MEDIA AND REVIEW ACTIONS "},
            {"div", [{"class", "col-xs-12 pad-none review-hide margin-top-lg"}],
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
               {"div", [{"class", "pull-left margin-left-md"}],
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
            {"div", [{"class", "col-xs-12 margin-bottom-lg"}],
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
                        {"class", "pull-left margin-right-sm"},
                        {"src",
                         "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                      ], []},
                     " Helpful ",
                     {"span",
                      [
                        {"class", "helpful-count display-none"},
                        {"id", "helpful_count_76805"}
                      ], ["0"]}
                   ]}
                ]}
             ]}
          ]}
       ]},
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
             [{"class", "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}],
             ["May 28, 2009"]},
            {"div", [{"class", "col-xs-6 col-sm-12 pad-none dealership-rating"}], 
             [
               {"div",
                [
                  {"class",
                   "rating-static visible-xs pad-none margin-none rating-50 pull-right"}
                ], []},
               {"div",
                [{"class", "rating-static hidden-xs rating-50 margin-center"}], []},
               {"div",
                [
                  {"class",
                   "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                ], ["SALES VISIT - NEW"]}
             ]}
          ]},
         {"div", [{"class", "col-xs-12 col-sm-9 pad-none review-wrapper"}],
          [
            {:comment, " REVIEW TITLE, USER"},
            {"div", [{"class", "margin-bottom-sm line-height-150"}],
             [
               {"h3",
                [{"class", "no-format inline italic-bolder font-20 dark-grey"}],
                ["\"We have been McKaig's customers for many, many years. We...\""]},
               {"span", [{"class", "italic font-18 black notranslate"}],
                ["- krnblkmn"]}
             ]},
            {:comment, " REVIEW BODY "},
            {"div", [{"class", "tr margin-top-md"}],
             [
               {"div", [{"class", "td text-left valign-top "}],
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
               {:comment, " REVIEW RATING - CUSTOMER SERVICE "},
               {"div",
                [
                  {"class",
                   "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                ],
                [
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Customer Service"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - QUALITY OF WORK "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Quality of Work"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - FRIENDLINESS "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Friendliness"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - PRICING "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Pricing"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - EXPERIENCE "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "td lt-grey small-text"}],
                      ["Overall Experience"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - RECOMMEND DEALER "},
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Recommend Dealer"]},
                     {"div", [{"class", "td small-text boldest"}],
                      ["\r\n                Yes\r\n            "]}
                   ]}
                ]}
             ]},
            {:comment, " EMPLOYEE SECTION "},
            {"div", [{"class", "clear-fix  margin-top-sm"}],
             [
               {"div",
                [{"class", "col-xs-12 lt-grey pad-left-none employees-wrapper"}],
                [
                  {"div", [{"class", "small-text"}], ["Employees Worked With "]},
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
                           {"class", "td square-image employee-image"},
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
                              {"data-emp-id", "54375"},
                              {"href", "/sales/Mike-Lambert-review-54375/"}
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
                           {"class", "td square-image employee-image"},
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
                              {"data-emp-id", "2931"},
                              {"href", "/sales/Kent-Abernathy-review-2931/"}
                            ],
                            ["\r\n                                             Kent Abernathy\r\n                                         "]}
                         ]}
                      ]}
                   ]},
                  {"div", [{"class", "col-xs-12 pad-none pad-top-sm "}],
                   [
                     {"span", [{"class", "small-text"}], ["Other Employees :"]},
                     {"span", [{"class", "italic font-13 notranslate"}],
                      ["Mike Lambert, Kent Abernathy, Doyle Dougan, Doyle Dougan "]}
                   ]}
                ]}
             ]},
            {:comment, " SOCIAL MEDIA AND REVIEW ACTIONS "},
            {"div", [{"class", "col-xs-12 pad-none review-hide margin-top-lg"}],
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
               {"div", [{"class", "pull-left margin-left-md"}],
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
            {"div", [{"class", "col-xs-12 margin-bottom-lg"}],
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
                        {"class", "pull-left margin-right-sm"},
                        {"src",
                         "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                      ], []},
                     " Helpful ",
                     {"span",
                      [
                        {"class", "helpful-count display-none"},
                        {"id", "helpful_count_76785"}
                      ], ["0"]}
                   ]}
                ]}
             ]}
          ]}
       ]},
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
             [{"class", "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}],
             ["May 28, 2009"]},
            {"div", [{"class", "col-xs-6 col-sm-12 pad-none dealership-rating"}],
             [
               {"div",
                [
                  {"class",
                   "rating-static visible-xs pad-none margin-none rating-50 pull-right"}
                ], []},
               {"div",
                [{"class", "rating-static hidden-xs rating-50 margin-center"}], []},
               {"div",
                [
                  {"class",
                   "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
                ], ["SALES VISIT - NEW"]}
             ]}
          ]},
         {"div", [{"class", "col-xs-12 col-sm-9 pad-none review-wrapper"}],
          [
            {:comment, " REVIEW TITLE, USER"},
            {"div", [{"class", "margin-bottom-sm line-height-150"}],
             [
               {"h3",
                [{"class", "no-format inline italic-bolder font-20 dark-grey"}],
                ["\"We have been patronizing McKaig Chevrolet for nearly 40...\""]},
               {"span", [{"class", "italic font-18 black notranslate"}],
                ["- jedpkd"]}
             ]},
            {:comment, " REVIEW BODY "},
            {"div", [{"class", "tr margin-top-md"}],
             [
               {"div", [{"class", "td text-left valign-top "}],
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
               {:comment, " REVIEW RATING - CUSTOMER SERVICE "},
               {"div",
                [
                  {"class",
                   "table width-100 pad-left-none pad-right-none margin-bottom-md"}
                ],
                [
                  {"div", [{"class", "tr"}], 
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Customer Service"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - QUALITY OF WORK "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Quality of Work"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - FRIENDLINESS "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Friendliness"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - PRICING "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}], ["Pricing"]},
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - EXPERIENCE "},
                  {"div", [{"class", "tr margin-bottom-md"}],
                   [
                     {"div", [{"class", "td lt-grey small-text"}],
                      ["Overall Experience"]}, 
                     {"div",
                      [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                      []}
                   ]},
                  {:comment, " REVIEW RATING - RECOMMEND DEALER "},
                  {"div", [{"class", "tr"}],
                   [
                     {"div", [{"class", "lt-grey small-text td"}],
                      ["Recommend Dealer"]},
                     {"div", [{"class", "td small-text boldest"}],
                      ["\r\n                Yes\r\n            "]}
                   ]}
                ]}
             ]},
            {:comment, " EMPLOYEE SECTION "},
            {"div", [{"class", "clear-fix  margin-top-sm"}],
             [
               {"div",
                [{"class", "col-xs-12 lt-grey pad-left-none employees-wrapper"}],
                [
                  {"div", [{"class", "small-text"}], ["Employees Worked With "]},
                  {"div", [{"class", "col-xs-12 pad-none pad-top-sm "}],
                   [
                     {"span", [{"class", "italic font-13 notranslate"}],
                      ["Mainly:  Phillip Anderson, Doyle Dougan, Doyle Dougan "]}
                   ]}
                ]}
             ]},
            {:comment, " SOCIAL MEDIA AND REVIEW ACTIONS "},
            {"div", [{"class", "col-xs-12 pad-none review-hide margin-top-lg"}],
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
               {"div", [{"class", "pull-left margin-left-md"}],
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
            {"div", [{"class", "col-xs-12 margin-bottom-lg"}],
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
                        {"class", "pull-left margin-right-sm"},
                        {"src",
                         "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                      ], []},
                     " Helpful ",
                     {"span",
                      [
                        {"class", "helpful-count display-none"},
                        {"id", "helpful_count_76771"}
                      ], ["0"]}
                   ]}
                ]}
             ]}
          ]}
       ]}
    ]
  end

  def one_review_50_rating do
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
        [{"class", "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}],
        ["May 29, 2009"]},
        {"div", [{"class", "col-xs-6 col-sm-12 pad-none dealership-rating"}],
        [
          {"div",
            [
              {"class",
              "rating-static visible-xs pad-none margin-none rating-50 pull-right"}
            ], []},
          {"div", [{"class", "rating-static hidden-xs rating-50 margin-center"}],
            []},
          {"div",
            [
              {"class",
              "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
            ], ["SERVICE VISIT"]}
        ]}
      ]},
    {"div", [{"class", "col-xs-12 col-sm-9 pad-none review-wrapper"}],
      [
        {:comment, " REVIEW TITLE, USER"},
        {"div", [{"class", "margin-bottom-sm line-height-150"}],
        [
          {"h3", [{"class", "no-format inline italic-bolder font-20 dark-grey"}],
            ["\"McKaig Chevrolet has been loyal to my family for as long...\""]},
          {"span", [{"class", "italic font-18 black notranslate"}],
            ["- fakeName"]}
        ]},
        {:comment, " REVIEW BODY "},
        {"div", [{"class", "tr margin-top-md"}],
        [
          {"div", [{"class", "td text-left valign-top "}],
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
          {:comment, " REVIEW RATING - CUSTOMER SERVICE "},
          {"div",
            [
              {"class",
              "table width-100 pad-left-none pad-right-none margin-bottom-md"}
            ],
            [
              {"div", [{"class", "tr"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Customer Service"]},
                {"div",
                  [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - QUALITY OF WORK "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Quality of Work"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - FRIENDLINESS "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}], ["Friendliness"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - PRICING "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}], ["Pricing"]},
                {"div",
                  [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - EXPERIENCE "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "td lt-grey small-text"}],
                  ["Overall Experience"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - RECOMMEND DEALER "},
              {"div", [{"class", "tr"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Recommend Dealer"]},
                {"div", [{"class", "td small-text boldest"}],
                  ["\r\n                Yes\r\n            "]}
              ]}
            ]}
        ]},
        {:comment, " EMPLOYEE SECTION "},
        {"div", [{"class", "clear-fix  margin-top-sm"}],
        [
          {"div",
            [{"class", "col-xs-12 lt-grey pad-left-none employees-wrapper"}],
            [
              {"div", [{"class", "small-text"}], ["Employees Worked With "]},
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
                      {"class", "td square-image employee-image"},
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
                          {"data-emp-id", "54375"},
                          {"href", "/sales/Mike-Lambert-review-54375/"}
                        ],
                        ["\r\n                                             Mike Lambert\r\n                                         "]}
                    ]}
                  ]}
              ]},
              {"div", [{"class", "col-xs-12 pad-none pad-top-sm "}],
              [
                {"span", [{"class", "small-text"}], ["Other Employees :"]},
                {"span", [{"class", "italic font-13 notranslate"}],
                  ["Mike Lambert "]}
              ]}
            ]}
        ]},
        {:comment, " SOCIAL MEDIA AND REVIEW ACTIONS "},
        {"div", [{"class", "col-xs-12 pad-none review-hide margin-top-lg"}],
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
          {"div", [{"class", "pull-left margin-left-md"}],
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
        {"div", [{"class", "col-xs-12 margin-bottom-lg"}],
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
                    {"class", "pull-left margin-right-sm"},
                    {"src",
                    "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                  ], []},
                " Helpful ",
                {"span",
                  [
                    {"class", "helpful-count display-none"},
                    {"id", "helpful_count_76896"}
                  ], ["0"]}
              ]}
            ]}
        ]}
      ]}
  ]}
  end

  def one_review_40_rating do
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
        [{"class", "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}],
        ["May 29, 2009"]},
        {"div", [{"class", "col-xs-6 col-sm-12 pad-none dealership-rating"}],
        [
          {"div",
            [
              {"class",
              "rating-static visible-xs pad-none margin-none rating-40 pull-right"}
            ], []},
          {"div", [{"class", "rating-static hidden-xs rating-40 margin-center"}],
            []},
          {"div",
            [
              {"class",
              "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
            ], ["SERVICE VISIT"]}
        ]}
      ]},
    {"div", [{"class", "col-xs-12 col-sm-9 pad-none review-wrapper"}],
      [
        {:comment, " REVIEW TITLE, USER"},
        {"div", [{"class", "margin-bottom-sm line-height-150"}],
        [
          {"h3", [{"class", "no-format inline italic-bolder font-20 dark-grey"}],
            ["\"McKaig Chevrolet has been loyal to my family for as long...\""]},
          {"span", [{"class", "italic font-18 black notranslate"}],
            ["- fakeName"]}
        ]},
        {:comment, " REVIEW BODY "},
        {"div", [{"class", "tr margin-top-md"}],
        [
          {"div", [{"class", "td text-left valign-top "}],
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
          {:comment, " REVIEW RATING - CUSTOMER SERVICE "},
          {"div",
            [
              {"class",
              "table width-100 pad-left-none pad-right-none margin-bottom-md"}
            ],
            [
              {"div", [{"class", "tr"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Customer Service"]},
                {"div",
                  [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - QUALITY OF WORK "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Quality of Work"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - FRIENDLINESS "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}], ["Friendliness"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - PRICING "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}], ["Pricing"]},
                {"div",
                  [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - EXPERIENCE "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "td lt-grey small-text"}],
                  ["Overall Experience"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - RECOMMEND DEALER "},
              {"div", [{"class", "tr"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Recommend Dealer"]},
                {"div", [{"class", "td small-text boldest"}],
                  ["\r\n                Yes\r\n            "]}
              ]}
            ]}
        ]},
        {:comment, " EMPLOYEE SECTION "},
        {"div", [{"class", "clear-fix  margin-top-sm"}],
        [
          {"div",
            [{"class", "col-xs-12 lt-grey pad-left-none employees-wrapper"}],
            [
              {"div", [{"class", "small-text"}], ["Employees Worked With "]},
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
                      {"class", "td square-image employee-image"},
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
                          {"data-emp-id", "54375"},
                          {"href", "/sales/Mike-Lambert-review-54375/"}
                        ],
                        ["\r\n                                             Mike Lambert\r\n                                         "]}
                    ]}
                  ]}
              ]},
              {"div", [{"class", "col-xs-12 pad-none pad-top-sm "}],
              [
                {"span", [{"class", "small-text"}], ["Other Employees :"]},
                {"span", [{"class", "italic font-13 notranslate"}],
                  ["Mike Lambert "]}
              ]}
            ]}
        ]},
        {:comment, " SOCIAL MEDIA AND REVIEW ACTIONS "},
        {"div", [{"class", "col-xs-12 pad-none review-hide margin-top-lg"}],
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
          {"div", [{"class", "pull-left margin-left-md"}],
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
        {"div", [{"class", "col-xs-12 margin-bottom-lg"}],
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
                    {"class", "pull-left margin-right-sm"},
                    {"src",
                    "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                  ], []},
                " Helpful ",
                {"span",
                  [
                    {"class", "helpful-count display-none"},
                    {"id", "helpful_count_76896"}
                  ], ["0"]}
              ]}
            ]}
        ]}
      ]}
    ]}
  end

  def one_review_no_numbers do
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
        [{"class", "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}],
        ["May 29, 2009"]},
        {"div", [{"class", "col-xs-6 col-sm-12 pad-none dealership-rating"}],
        [
          {"div",
            [
              {"class",
              "rating-static visible-xs pad-none margin-none rating-40 pull-right"}
            ], []},
          {"div", [{"class", "rating-static hidden-xs rating-40 margin-center"}],
            []},
          {"div",
            [
              {"class",
              "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
            ], ["SERVICE VISIT"]}
        ]}
      ]},
    {"div", [{"class", "col-xs-12 col-sm-9 pad-none review-wrapper"}],
      [
        {:comment, " REVIEW TITLE, USER"},
        {"div", [{"class", "margin-bottom-sm line-height-150"}],
        [
          {"h3", [{"class", "no-format inline italic-bolder font-20 dark-grey"}],
            ["\"McKaig Chevrolet has been loyal to my family for as long...\""]},
          {"span", [{"class", "italic font-18 black notranslate"}],
            ["- awhite"]}
        ]},
        {:comment, " REVIEW BODY "},
        {"div", [{"class", "tr margin-top-md"}],
        [
          {"div", [{"class", "td text-left valign-top "}],
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
          {:comment, " REVIEW RATING - CUSTOMER SERVICE "},
          {"div",
            [
              {"class",
              "table width-100 pad-left-none pad-right-none margin-bottom-md"}
            ],
            [
              {"div", [{"class", "tr"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Customer Service"]},
                {"div",
                  [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - QUALITY OF WORK "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Quality of Work"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - FRIENDLINESS "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}], ["Friendliness"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - PRICING "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}], ["Pricing"]},
                {"div",
                  [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - EXPERIENCE "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "td lt-grey small-text"}],
                  ["Overall Experience"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - RECOMMEND DEALER "},
              {"div", [{"class", "tr"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Recommend Dealer"]},
                {"div", [{"class", "td small-text boldest"}],
                  ["\r\n                Yes\r\n            "]}
              ]}
            ]}
        ]},
        {:comment, " EMPLOYEE SECTION "},
        {"div", [{"class", "clear-fix  margin-top-sm"}],
        [
          {"div",
            [{"class", "col-xs-12 lt-grey pad-left-none employees-wrapper"}],
            [
              {"div", [{"class", "small-text"}], ["Employees Worked With "]},
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
                      {"class", "td square-image employee-image"},
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
                          {"data-emp-id", "54375"},
                          {"href", "/sales/Mike-Lambert-review-54375/"}
                        ],
                        ["\r\n                                             Mike Lambert\r\n                                         "]}
                    ]}
                  ]}
              ]},
              {"div", [{"class", "col-xs-12 pad-none pad-top-sm "}],
              [
                {"span", [{"class", "small-text"}], ["Other Employees :"]},
                {"span", [{"class", "italic font-13 notranslate"}],
                  ["Mike Lambert "]}
              ]}
            ]}
        ]},
        {:comment, " SOCIAL MEDIA AND REVIEW ACTIONS "},
        {"div", [{"class", "col-xs-12 pad-none review-hide margin-top-lg"}],
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
          {"div", [{"class", "pull-left margin-left-md"}],
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
        {"div", [{"class", "col-xs-12 margin-bottom-lg"}],
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
                    {"class", "pull-left margin-right-sm"},
                    {"src",
                    "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                  ], []},
                " Helpful ",
                {"span",
                  [
                    {"class", "helpful-count display-none"},
                    {"id", "helpful_count_76896"}
                  ], ["0"]}
              ]}
            ]}
        ]}
      ]}
    ]}
  end

  def one_review_with_numbers do
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
        [{"class", "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}],
        ["May 29, 2009"]},
        {"div", [{"class", "col-xs-6 col-sm-12 pad-none dealership-rating"}],
        [
          {"div",
            [
              {"class",
              "rating-static visible-xs pad-none margin-none rating-40 pull-right"}
            ], []},
          {"div", [{"class", "rating-static hidden-xs rating-40 margin-center"}],
            []},
          {"div",
            [
              {"class",
              "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
            ], ["SERVICE VISIT"]}
        ]}
      ]},
    {"div", [{"class", "col-xs-12 col-sm-9 pad-none review-wrapper"}],
      [
        {:comment, " REVIEW TITLE, USER"},
        {"div", [{"class", "margin-bottom-sm line-height-150"}],
        [
          {"h3", [{"class", "no-format inline italic-bolder font-20 dark-grey"}],
            ["\"McKaig Chevrolet has been loyal to my family for as long...\""]},
          {"span", [{"class", "italic font-18 black notranslate"}],
            ["- fakeName211"]}
        ]},
        {:comment, " REVIEW BODY "},
        {"div", [{"class", "tr margin-top-md"}],
        [
          {"div", [{"class", "td text-left valign-top "}],
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
          {:comment, " REVIEW RATING - CUSTOMER SERVICE "},
          {"div",
            [
              {"class",
              "table width-100 pad-left-none pad-right-none margin-bottom-md"}
            ],
            [
              {"div", [{"class", "tr"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Customer Service"]},
                {"div",
                  [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - QUALITY OF WORK "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Quality of Work"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - FRIENDLINESS "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}], ["Friendliness"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - PRICING "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}], ["Pricing"]},
                {"div",
                  [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - EXPERIENCE "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "td lt-grey small-text"}],
                  ["Overall Experience"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - RECOMMEND DEALER "},
              {"div", [{"class", "tr"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Recommend Dealer"]},
                {"div", [{"class", "td small-text boldest"}],
                  ["\r\n                Yes\r\n            "]}
              ]}
            ]}
        ]},
        {:comment, " EMPLOYEE SECTION "},
        {"div", [{"class", "clear-fix  margin-top-sm"}],
        [
          {"div",
            [{"class", "col-xs-12 lt-grey pad-left-none employees-wrapper"}],
            [
              {"div", [{"class", "small-text"}], ["Employees Worked With "]},
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
                      {"class", "td square-image employee-image"},
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
                          {"data-emp-id", "54375"},
                          {"href", "/sales/Mike-Lambert-review-54375/"}
                        ],
                        ["\r\n                                             Mike Lambert\r\n                                         "]}
                    ]}
                  ]}
              ]},
              {"div", [{"class", "col-xs-12 pad-none pad-top-sm "}],
              [
                {"span", [{"class", "small-text"}], ["Other Employees :"]},
                {"span", [{"class", "italic font-13 notranslate"}],
                  ["Mike Lambert "]}
              ]}
            ]}
        ]},
        {:comment, " SOCIAL MEDIA AND REVIEW ACTIONS "},
        {"div", [{"class", "col-xs-12 pad-none review-hide margin-top-lg"}],
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
          {"div", [{"class", "pull-left margin-left-md"}],
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
        {"div", [{"class", "col-xs-12 margin-bottom-lg"}],
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
                    {"class", "pull-left margin-right-sm"},
                    {"src",
                    "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                  ], []},
                " Helpful ",
                {"span",
                  [
                    {"class", "helpful-count display-none"},
                    {"id", "helpful_count_76896"}
                  ], ["0"]}
              ]}
            ]}
        ]}
      ]}
    ]}
  end

  def one_review_from_foony do
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
        [{"class", "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}],
        ["May 29, 2009"]},
        {"div", [{"class", "col-xs-6 col-sm-12 pad-none dealership-rating"}],
        [
          {"div",
            [
              {"class",
              "rating-static visible-xs pad-none margin-none rating-40 pull-right"}
            ], []},
          {"div", [{"class", "rating-static hidden-xs rating-40 margin-center"}],
            []},
          {"div",
            [
              {"class",
              "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
            ], ["SERVICE VISIT"]}
        ]}
      ]},
    {"div", [{"class", "col-xs-12 col-sm-9 pad-none review-wrapper"}],
      [
        {:comment, " REVIEW TITLE, USER"},
        {"div", [{"class", "margin-bottom-sm line-height-150"}],
        [
          {"h3", [{"class", "no-format inline italic-bolder font-20 dark-grey"}],
            ["\"McKaig Chevrolet has been loyal to my family for as long...\""]},
          {"span", [{"class", "italic font-18 black notranslate"}],
            ["- foony"]}
        ]},
        {:comment, " REVIEW BODY "},
        {"div", [{"class", "tr margin-top-md"}],
        [
          {"div", [{"class", "td text-left valign-top "}],
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
          {:comment, " REVIEW RATING - CUSTOMER SERVICE "},
          {"div",
            [
              {"class",
              "table width-100 pad-left-none pad-right-none margin-bottom-md"}
            ],
            [
              {"div", [{"class", "tr"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Customer Service"]},
                {"div",
                  [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - QUALITY OF WORK "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Quality of Work"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - FRIENDLINESS "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}], ["Friendliness"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - PRICING "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}], ["Pricing"]},
                {"div",
                  [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - EXPERIENCE "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "td lt-grey small-text"}],
                  ["Overall Experience"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - RECOMMEND DEALER "},
              {"div", [{"class", "tr"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Recommend Dealer"]},
                {"div", [{"class", "td small-text boldest"}],
                  ["\r\n                Yes\r\n            "]}
              ]}
            ]}
        ]},
        {:comment, " EMPLOYEE SECTION "},
        {"div", [{"class", "clear-fix  margin-top-sm"}],
        [
          {"div",
            [{"class", "col-xs-12 lt-grey pad-left-none employees-wrapper"}],
            [
              {"div", [{"class", "small-text"}], ["Employees Worked With "]},
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
                      {"class", "td square-image employee-image"},
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
                          {"data-emp-id", "54375"},
                          {"href", "/sales/Mike-Lambert-review-54375/"}
                        ],
                        ["\r\n                                             Mike Lambert\r\n                                         "]}
                    ]}
                  ]}
              ]},
              {"div", [{"class", "col-xs-12 pad-none pad-top-sm "}],
              [
                {"span", [{"class", "small-text"}], ["Other Employees :"]},
                {"span", [{"class", "italic font-13 notranslate"}],
                  ["Mike Lambert "]}
              ]}
            ]}
        ]},
        {:comment, " SOCIAL MEDIA AND REVIEW ACTIONS "},
        {"div", [{"class", "col-xs-12 pad-none review-hide margin-top-lg"}],
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
          {"div", [{"class", "pull-left margin-left-md"}],
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
        {"div", [{"class", "col-xs-12 margin-bottom-lg"}],
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
                    {"class", "pull-left margin-right-sm"},
                    {"src",
                    "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                  ], []},
                " Helpful ",
                {"span",
                  [
                    {"class", "helpful-count display-none"},
                    {"id", "helpful_count_76896"}
                  ], ["0"]}
              ]}
            ]}
        ]}
      ]}
    ]}
  end

  def one_review_from_awhite do
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
        [{"class", "italic col-xs-6 col-sm-12 pad-none margin-none font-20"}],
        ["May 29, 2009"]},
        {"div", [{"class", "col-xs-6 col-sm-12 pad-none dealership-rating"}],
        [
          {"div",
            [
              {"class",
              "rating-static visible-xs pad-none margin-none rating-40 pull-right"}
            ], []},
          {"div", [{"class", "rating-static hidden-xs rating-40 margin-center"}],
            []},
          {"div",
            [
              {"class",
              "col-xs-12 hidden-xs pad-none margin-top-sm small-text dr-grey"}
            ], ["SERVICE VISIT"]}
        ]}
      ]},
    {"div", [{"class", "col-xs-12 col-sm-9 pad-none review-wrapper"}],
      [
        {:comment, " REVIEW TITLE, USER"},
        {"div", [{"class", "margin-bottom-sm line-height-150"}],
        [
          {"h3", [{"class", "no-format inline italic-bolder font-20 dark-grey"}],
            ["\"McKaig Chevrolet has been loyal to my family for as long...\""]},
          {"span", [{"class", "italic font-18 black notranslate"}],
            ["- awhite211"]}
        ]},
        {:comment, " REVIEW BODY "},
        {"div", [{"class", "tr margin-top-md"}],
        [
          {"div", [{"class", "td text-left valign-top "}],
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
          {:comment, " REVIEW RATING - CUSTOMER SERVICE "},
          {"div",
            [
              {"class",
              "table width-100 pad-left-none pad-right-none margin-bottom-md"}
            ],
            [
              {"div", [{"class", "tr"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Customer Service"]},
                {"div",
                  [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - QUALITY OF WORK "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Quality of Work"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - FRIENDLINESS "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}], ["Friendliness"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - PRICING "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "lt-grey small-text td"}], ["Pricing"]},
                {"div",
                  [{"class", "rating-static-indv rating-40 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - EXPERIENCE "},
              {"div", [{"class", "tr margin-bottom-md"}],
              [
                {"div", [{"class", "td lt-grey small-text"}],
                  ["Overall Experience"]},
                {"div",
                  [{"class", "rating-static-indv rating-50 margin-top-none td"}],
                  []}
              ]},
              {:comment, " REVIEW RATING - RECOMMEND DEALER "},
              {"div", [{"class", "tr"}],
              [
                {"div", [{"class", "lt-grey small-text td"}],
                  ["Recommend Dealer"]},
                {"div", [{"class", "td small-text boldest"}],
                  ["\r\n                Yes\r\n            "]}
              ]}
            ]}
        ]},
        {:comment, " EMPLOYEE SECTION "},
        {"div", [{"class", "clear-fix  margin-top-sm"}],
        [
          {"div",
            [{"class", "col-xs-12 lt-grey pad-left-none employees-wrapper"}],
            [
              {"div", [{"class", "small-text"}], ["Employees Worked With "]},
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
                      {"class", "td square-image employee-image"},
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
                          {"data-emp-id", "54375"},
                          {"href", "/sales/Mike-Lambert-review-54375/"}
                        ],
                        ["\r\n                                             Mike Lambert\r\n                                         "]}
                    ]}
                  ]}
              ]},
              {"div", [{"class", "col-xs-12 pad-none pad-top-sm "}],
              [
                {"span", [{"class", "small-text"}], ["Other Employees :"]},
                {"span", [{"class", "italic font-13 notranslate"}],
                  ["Mike Lambert "]}
              ]}
            ]}
        ]},
        {:comment, " SOCIAL MEDIA AND REVIEW ACTIONS "},
        {"div", [{"class", "col-xs-12 pad-none review-hide margin-top-lg"}],
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
          {"div", [{"class", "pull-left margin-left-md"}],
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
        {"div", [{"class", "col-xs-12 margin-bottom-lg"}],
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
                    {"class", "pull-left margin-right-sm"},
                    {"src",
                    "https://www.dealerrater.com/ncdn/s/149.20190919.1/Graphics/icons/icon-thumbsup.png"}
                  ], []},
                " Helpful ",
                {"span",
                  [
                    {"class", "helpful-count display-none"},
                    {"id", "helpful_count_76896"}
                  ], ["0"]}
              ]}
            ]}
        ]}
      ]}
    ]}
  end

end