# snippet-ab-testing

This snippet allows a content users in OU Campus to add different variations of content to test. On page load, the javascript (via jQuery) chooses a variation at random to display to the user. If Google Analytics is loaded on the page it will set custom dimension 1 to the variation number.

This project is very much a work in progress and will probably change as time goes on. Don't trust this will production data yet, this is still in development.

## Install

Create a custom dimension in Google Analytics. Currently the script is hardcoded to dimension 1.

Publish `js/ab-test.js` to your webserver. Import `xsl/snippet-abtest.xsl` into an existing stylesheet and change link to `ab-test.js` to go to your published version of the file. Add `snippet-abtest.html` to your sinppets directory (probably /_resources/ou/snippets) and register the snippet with OU Campus.

## Contribute

Feel free to contribute via fork and pull requests; there is plenty of room for improvement. 
