# Virtual-Tourist

Project developed for Udacity iOS Developer Nanodegree

Development environment: 
IDE: Xcode 7.3+ 
Language: Swift

##Summary

This app allows users to virtually travel around the world  dropping pins on a map and view random Flickr photos for each location.
The locations and photo albums will be stored in Core Data.

![virtual](https://cloud.githubusercontent.com/assets/2106935/14800770/5ff5355e-0b1a-11e6-9b1e-6411661dd5f1.gif)

## Implementation

The app has two view controller scenes:

- **MapViewController** - shows the map and allows user to drop pins around the world. Users can drag pin to a new location after
  dropping them. As soon as a pin is dropped photo data for the pin location is fetched from Flickr. The actual photo
  downloads occur in the CollectionController.

- **LocationDetailViewController** - allow users to download photos and edit an album for a location. Users can create new
  collections and delete photos from existing albums.

Application uses CoreData to store Pins (`NSManagedObjectContext.executeFetchRequest`) and Photos 
(`NSFetchedResultsController`) objects. All API calls run in background (`NSURLSession.dataTaskWithRequest`).
Preloaded files saved in memory cache (`NSCache`) and file system (`NSFileManager`) and removed as soon as Photo object 
removed from CoreData.

## License

Copyright (c) 2016 Sebastian Masseroni

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
