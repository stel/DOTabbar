# DOTabbar

`DOTabbar` is a lightweight and customizable tab bar control with support for grouping items for Mac OSX.

It's compatiable with OSX 10.7+ and autolayout ready.

## Ussage

### Copy files

You need to copy the following files to your project:

* `DOTabbar.h`
* `DOTabbar.m`
* `DOTabbarItemCell.h`
* `DOTabbarItemCell.m`

Make sure to add them to the target.

### Use in project

Don't forget to [check out an example project](https://github.com/stel/DOTabbar/tree/master/Example).

You can use `DOTabbar` in Inteface Builder: just drag a Custom View into your window and set it class to `DOTabbar`. After that you need to set a delegate to your tab bar and implement it.

Your delegate must adopt `DOTabbarDelegate` protocol:

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

## Customizing

For customizing tab bar you can create you custom `NSCell` subclass and return it in your delegate `tabbar:cellForItemIdentifier:` method.

## License

DOTabbar is released under the MIT license. See [LICENSE.md](https://github.com/stel/DOTabbar/blob/master/LICENSE.md).