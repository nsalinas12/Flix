# Flix
FBU Assignment Week 1


# Project 1 - *Flix*

**Flix** is an app which displays movies and a general synopsis about it. The app provides two methods to view movies, one which is table view of the movies and a poster image of it. Another is in a collection controller view which has a grid view of the movie posters. 

Submitted by: **Nico Salinas**

Time spent: **18** hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] App Icon and Launch screen 
* [X] Network request to download content dictionary and get poster image
* [X] Adding table view controller with content table view cells
* [X] Adding pull to refresh function to reload table view content
* [X] Adding a Detail View Controller where the Table View cells connect to a detailed view controller
* [X] Detail View controller displays movie poster, background poster, move title, and synopsis
* [X] Adding a UIActivity indicator to the launch scnreen

The following **optional** features are implemented:
* [X] Tab bar set up to display action movies in a tab bar
* [X] Collection View container holds a scrolling view to display movie posters
* [X] Scrolling movie posters link to Details View Controller
* [X] User can search for movies using text search bar
* [ ] Modal view screen appears
* [ ] Images fade in on loading
* [X] Large poster is downloaded for background image
* [X] Selection view of the cell


The following **additional** features are implemented:

- [X] Details view controller contains information about genre and release date


## Video Walkthrough

Here's a walkthrough of implemented user stories:

Click here for the video [Walkthrough](https://imgur.com/a/U5uHBSZ)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

One of the main problems I faced in this project was using the network request through the AFNetworking Pod as well as the search bar. I have coded similar network requests in other languages, so the structure was pretty familiar and the actual API implementation wasn't too dificult. What was dificult was making sure I had the syntax correct.

An area that I noticed that I improved in was understanding the structure and syntax of Objective C in Xcode. I was also happy to know that by the end of the week, I was able to understand how to detect bugs and decode them using the Xcode developer tools.

## Credits

List an 3rd party libraries, icons, graphics, or other assets you used in your app.
- None

## License

Copyright 2018 Nicholas Salinas

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
