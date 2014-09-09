#README

To get this running:

`bundle install`

`rake db:migrate`

`rake sunspot:solr:start`

`rails s`

Currently only the restaurants are searchable by name.

If you would like to search on part of a restaurants name you can use the `*`. For example if you have restaurants "Marco & Luca" and "Marc" you can search for `marc*` to get both restaurants. Currently the search button does not work but hitting enter in the search box will perform the search.

If you add new restaurants that you want to search on you will need to reindex solr for them to be searchable.

To reindex run:

`rake sunspot:reindex`

##Errors
If you get this error:

`RSolr::Error::Http in RestaurantsController#index`

Follow these steps to solve

Stop sunspot: 
`rake sunspot:solr:stop`

Remove the solr folder in the cville-foodies directory
`rm -rf solr`

Start sunspot
`rake sunspot:solr:start`

Then reindex:
`rake sunpost:reindex.`