== CODERSCHOOL HOMEWORK

# Pre-work - *Loving Hut Restaurant*

**Loving Hut Restaurant** is a Ruby on Rails restaurant website let users order food.

Submitted by: **Juan Dalisay Jr.**

Time spent: **around ** hours 

Timeline:

March 8 - followed Harley's tutorial (0.5 hours)
March 10 - followed video on http://learning.coderschool.vn (3 hours)
March 11 - added the show orders, sections, filters (4 hours)
Learned from: https://www.youtube.com/watch?v=e3eXuvBQums and
https://www.youtube.com/watch?v=wOIQDO1yF80

URL: **http://lovinghut.herokuapp.com/**

## User Stories

The following **required** functionality is complete:

> HINT: mark the items you completed with [x]

* [X] User must be able to go two pages: Menu, and Contact Us.
* [X] User can see the address and phone number on the contact us page.
* [X] User can see a basic google map on the Contact Us page.
* [X] User can navigate to a menu page with four sections:
* [X] Breakfast
* [X] Lunch
* [X] Dinner
* [X] Drinks
* [ ] User should see at least 5 food items in each section.
* [X] Each food item should have the following fields:
* [X] Name (Canh Chua)
* [X] Description (Delicious fish soup)
* [X] Price (VND)
* [X] Section - Breakfast, Lunch, Dinner, Drinks
* [X] Image URL - do a google search or use LoremFlickr: http://loremflickr.com/320/240/canhchua
* [X] User should be able to filter by section of Breakfast, Lunch, Dinner, or Drinks and see only the relevant items.
* [ ] User can sort menu items by “alphabetical”, “price low to high”, and “price high to low”.
* [X] User should be able to get for a menu item and see results.
* [X] Clicking on an item in the menu brings up its detail, where you see the description and a larger picture.
* [X] User can click “order” on a menu item to go to a “Create Order” page.
* [X] User is able to fill in their name, phone number, and address.
* [X] User is taken to a “Thank you for your order page” that lists the name of item, the total cost (delivery should cost 20,000 VND), the user’s name, the user’s address, and the time the order was created in human-readable format (for example, Tuesday, December 1, 15:25).

Optional:

* [ ] User can also filter by type of Cuisine.
* [..] User can see how many times each menu item has been viewed, and sort items by “most viewed”.
* [ ] User can leave a review (1-5 stars) for each dish, along with a text review.
* [ ] User can see reviews and an average review score.
* [ ] User can input "CODERSCHOOL" as a coupon code on the order page, which should give a 50% discount off of the order.
* [ ] User can order more than one dish at a time.
* [ ] User receives an email upon placing an order.
* [ ] The Restaurant (you) receives an email or SMS when a User places an order. Try Twilio if you’d like a SMS API. Use Promo Code CodeSchool15 for $30 free credit.

The following additional features are implemented:

* [X] Search functionality

The following known issues:

* [X] Pagination doesn't work because it seems to conflict with sections

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

GIF created with SilentCast[SilentCast](https://github.com/colinkeenan/silentcast).

## Notes

Describe any challenges encountered while building the app.

1. The way of implementing sections in the two coderschool videos were a bit different.
2. 

## License

    Copyright [2016] [Juan Dalisay Jr.]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.