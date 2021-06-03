# How to create a project that retrieves live bitcoin USD value on the web

This is a simple example of an advanced functionality of Valkyrie Engine, where you will learn how to pull data from the web and display it in your scene.

We will use a publicly available API that requires neither registration nor API key and displays parameters of various cryptocurrencies: [https://www.coinlore.com/cryptocurrency-data-api 1](https://www.coinlore.com/cryptocurrency-data-api)

Here is an example of the GET request method I am going to use for illustrative purposes: [https://api.coinlore.com/api/ticker/?id=90 2](https://api.coinlore.com/api/ticker/?id=90)
This request will return the following properties and values:

| id                 | “90”              |
| :----------------- | :---------------- |
| symbol             | “BTC”             |
| name               | “Bitcoin”         |
| nameid             | “bitcoin”         |
| rank               | 1                 |
| price_usd          | “11946.72”        |
| percent_change_24h | “0.12”            |
| percent_change_1h  | “0.99”            |
| percent_change_7d  | “14.00”           |
| market_cap_usd     | “213235242029.04” |
| volume24           | “17003508444.32”  |
| volume24_native    | “1423278.92”      |
| csupply            | “17848859.00”     |
| price_btc          | “1.00”            |
| tsupply            | “17848859”        |
| msupply            | “21000000”        |

Now let’s implement this in Valkyrie.

# How to create a GET request method in Valkyrie

I start with a new level:

![New level](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/ba78622bf54de4a37fcd01c21adda72899bb83a7_2_690x266.png)

Then do a bit of cleanup:

![API call level](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/original/1X/18614d30bc9468fe580b4079ad9983f923ad158a.png)

I add a Text entity that I name “Bitcoin display”, where I will display the USD value of a Bitcoin:

![Text entity](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/original/1X/c57bf4d54163b0ba58a0c23f37f97d0c2d0e6443.png)

Notice that in the Text entity, you have a “text” property which will be used to receive the bitcoin value later on:

![text property](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/original/1X/042ab0e0e44b99083ad3715c6b389e5c60f77c52.png)

I add a DataTable entity that will receive all the data pulled from the API:

![DataTableReadURL](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/original/1X/1cc38200c58d3d4cb9a10873c77c3f2344d2ff85.png)

Now we have 2 actions to add to the Timeline and we are all set.

## DataTableReadURL

First I drag&drop a DataTableReadURL action, which will allow me to call the API, onto the DataTable entity:

![DataTableReadURL](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/94552abf54b5e0ab1eb022b6ed101ea4cce82e2a_2_482x158.png)

I then set the DataTableReadURL properties:
- in the *start_time* field I enter a value of 1 second (on the Timeline, the actions positioned at 0 second are only triggered once)
- in the *url* field I input the HTTP GET request (in this scenario: [https://api.coinlore.com/api/ticker/?id=90 2](https://api.coinlore.com/api/ticker/?id=90))
- in the *target* field I input the DataTable where the API result will be updated (in this scenario, my table is named “DataTable”)

![DataTableReadURL properties](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/original/1X/cbe32275c83ce22eec96c1f5ee316b92a82d059e.png)

## EntitySetProperty

Lastly, I drag&drop the entity EntitySetProperty, which will allow me to change the properties of my Text entity, onto the DataTable entity:

![EntitySetProperty](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/original/1X/21fcddebb85f5fdd25844672f23161c3a2c8f486.png)

I then set the EntitySetProperty properties:
- in the *start_time* field I enter a value of 6 seconds because I want to leave 5 seconds to the DataTableReadURL to fetch the bitcoin value on the web
- in the *target* field I set the name of the Text entity I will be updating with the returned value (in this scenario “Bitcoin display”)
- in the *property* field I enter the property of the Text entity I want to update, as we saw a bit earlier, we want to update the text property
- in the *type* field, I set String
- in the *start_expr* field I set the following string to signify which property of my DataTable I want to retrieve:
  **"dt://" + Name of DataTable (in this scenario “DataTable”) + “/@” + DataTable property (in this scenario “price_usd”)**
  Which gives me the value dt://DataTable/**@price_usd**

![EntitySetProperty properties](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/original/1X/6f84ddf6b0875e76a292582f7fdbe95010ff0b6e.png)

This is it, I just created an app that will retrieve the USD bitcoin value in real-time from a web API:

![Sample pic](https://aws1.discourse-cdn.com/standard11/uploads/talansoft/optimized/1X/9bbcced4e12017d6efa8c090ae1b588d1c1ab37e_2_690x201.png)

# Downloads
- **Download** the tutorial project: TODO
- **Download** the end result: TODO

Note that it can take a little time before the USD value of the bitcoin is refreshed. These parameters depend on the API provider.

# Limitations

You can do any HTTP GET request which receives a flat JSON object as response.

If you need to process complex APIs (APIs that respond with deep hierarchies or arrays), you will need to create a small proxy server to provide a clean HTTP interface to your Valkyrie application.

Feel free to ask for help in our Discord server if you need help with getting your data in Valkyrie.

<a name="comments"></a>
# Comments
Join our Discord server to comment and get help: <a href="https://discord.gg/ZuBJtpN4Ce">Join</a> - <a class='btn btn-success' href='https://discord.com/channels/739876867854827582' target='_blank'>Open</a>
