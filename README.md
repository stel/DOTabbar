# DOTabbar

DOTabbar is a lightweight and customizable tab bar control with support for grouping items for Mac OSX.

It's compatiable with OSX 10.7+ and autolayout ready.

<img src="http://i.imgur.com/JCas8Wa.png" alt="" />

## Ussage

Don't forget to [check out an example project](https://github.com/stel/DOTabbar/tree/master/Example).

### Copy files

You need to copy the following files to your project:

* `DOTabbar.h`
* `DOTabbar.m`
* `DOTabbarItemCell.h`
* `DOTabbarItemCell.m`

Make sure to add them to the target.

### Use in project

You can use DOTabbar in Inteface Builder: just drag a Custom View into your window and set it class to `DOTabbar`. After that you need to set a delegate to your tab bar and implement it.

Your delegate must adopt `DOTabbarDelegate` protocol:

``` objective-c
@protocol DOTabbarDelegate <NSObject>
	// Your groups identifiers
	- (NSArray *)tabbarGroupIdentifiers:(DOTabbar *)tabbar;
		
	// Item identifiers for each group
	- (NSArray *)tabbar:(DOTabbar *)tabbar itemIdentifiersForGroupIdentifier:(NSString *)identifier;
		
	// Cell for each item 
	- (NSCell *)tabbar:(DOTabbar *)tabbar cellForItemIdentifier:(NSString *)itemIdentifier;
		
	@optional
		
	// Title for group. Can be empty
	- (NSString *)tabbar:(DOTabbar *)tabbar titleForGroupIdentifier:(NSString *)identifier;
		
	// Informs delegate that new item was selected
	- (void)tabbar:(DOTabbar *)tabbar didSelectItemWithIdentifier:(NSString *)identifier;
@end
````

## Customizing

For customizing tab bar you can create your custom `NSCell` subclass and return it in your delegate `tabbar:cellForItemIdentifier:` method.

## Requirements

DOTabbar uses ARC.

## License

DOTabbar is available under the MIT license. See the LICENSE file for more info.
