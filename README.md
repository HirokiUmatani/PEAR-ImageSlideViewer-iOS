### PEAR-ImageSlideViewer-iOS [![GitHub license](https://img.shields.io/badge/LICENSE-MIT%20LICENSE-blue.svg)](https://github.com/HirokiUmatani/PEAR-ImageSlideViewer-iOS/LICENSE) [![CocoaPods](https://img.shields.io/badge/platform-ios-lightgrey.svg)](https://cocoapods.org/pods/PEAR-ImageSlideViewer-iOS) [![CocoaPods](https://img.shields.io/cocoapods/v/PEAR-ImageSlideViewer-iOS.svg)](https://cocoapods.org/pods/PEAR-ImageSlideViewer-iOS)  

====
### Overview
This library will display slide images.

### Installation
```
pod 'PEAR-ImageSlideViewer-iOS'
```
### Demo Screen
![image slide view demo](http://pear.chat/image/imageslideview-o.gif)


### Usage

#### □ import header file
```
#import "PEARImageSlideViewController.h"
```

#### □ initialize
```
PEARImageSlideViewController *slideImageViewController = [PEARImageSlideViewController new];
```

#### □ set image
```
// create insert instance of CoreData
NSArray *imageLists = @[
                            [UIImage imageNamed:@"sample1.jpg"],
                            [UIImage imageNamed:@"sample2.jpg"],
                            [UIImage imageNamed:@"sample3.jpg"],
                            [UIImage imageNamed:@"sample4.jpg"],
                            [UIImage imageNamed:@"sample5.jpg"]
                            ].copy;
[slideImageViewController setImageLists:imageLists];
```

#### □ set display number
```
[slideImageViewController showAtIndex:0];
```

### Documents
[library document](http://cocoadocs.org/docsets/PEAR-ImageSlideViewer-iOS)

### Licence
[MIT](https://github.com/HirokiUmatani/PEAR-ImageSlideViewer-iOS/blob/master/LICENSE)

### Author
[Hiroki Umatani](https://github.com/HirokiUmatani)
