//
//  DOAppDelegate.m
//  DOTabbar Example
//
//  Created by Dmitry Obukhov on 31.03.13.
//  Copyright (c) 2013 Dmitry Obukhov. All rights reserved.
//

#import "DOAppDelegate.h"

// Groups identifiers
static NSString *FormatGroupIdentifier = @"format";
static NSString *PeopleGroupIdentifier = @"people";
static NSString *OtherGroupIdentifier = @"other";

// Tabs identifiers
static NSString *FontItemIdentifier = @"item1";
static NSString *ColorItemIdentifier = @"color";
static NSString *OneItemIdentifier = @"one";
static NSString *TwoItemIdentifier = @"two";
static NSString *ManyItemIdentifier = @"many";
static NSString *SettingsItemIdentifier = @"item6";

@implementation DOAppDelegate

- (void)setViewForIdentifier:(NSString *)identifier
{
	NSLog(@"I'll set view for identifier \"%@\" here soon", identifier);
}

- (void)applicationDidFinishLaunching:(NSNotification *)notification
{
	[self.tabbar selectItemWithIdentifier:FontItemIdentifier];
}

#pragma mark - DOTabBarDelegate

- (void)tabbar:(DOTabbar *)tabbar didSelectItemWithIdentifier:(NSString *)identifier
{
	[self setViewForIdentifier:identifier];
}

- (NSArray *)tabbarGroupIdentifiers:(DOTabbar *)tabbar
{
	return @[FormatGroupIdentifier, PeopleGroupIdentifier, OtherGroupIdentifier];
}

- (NSString *)tabbar:(DOTabbar *)tabbar titleForGroupIdentifier:(NSString *)identifier
{
	if ([identifier isEqualToString:FormatGroupIdentifier]) {
		return @"Format";
	} else if ([identifier isEqualToString:PeopleGroupIdentifier]) {
		return @"People";
	} else {
		return  nil;
	}
}

- (NSArray *)tabbar:(DOTabbar *)tabbar itemIdentifiersForGroupIdentifier:(NSString *)identifier
{
	if ([identifier isEqualToString:FormatGroupIdentifier]) {
		return @[FontItemIdentifier, ColorItemIdentifier];
	} else if ([identifier isEqualToString:PeopleGroupIdentifier]) {
		return @[OneItemIdentifier, TwoItemIdentifier, ManyItemIdentifier];
	} else {
		return @[SettingsItemIdentifier];
	}
}

- (NSCell *)tabbar:(DOTabbar *)tabbar cellForItemIdentifier:(NSString *)itemIdentifier
{
	DOTabbarItemCell *cell = [DOTabbarItemCell new];
	
	if ([itemIdentifier isEqualToString:FontItemIdentifier]) {
		cell.title = @"Font";
		cell.image = [NSImage imageNamed:NSImageNameFontPanel];
	} else if ([itemIdentifier isEqualToString:ColorItemIdentifier]) {
		cell.title = @"Color";
		cell.image = [NSImage imageNamed:NSImageNameColorPanel];
	} else if ([itemIdentifier isEqualToString:OneItemIdentifier]) {
		cell.title = @"One";
		cell.image = [NSImage imageNamed:NSImageNameUser];
	} else if ([itemIdentifier isEqualToString:TwoItemIdentifier]) {
		cell.title = @"Two";
		cell.image = [NSImage imageNamed:NSImageNameUserGroup];
	} else if ([itemIdentifier isEqualToString:ManyItemIdentifier]) {
		cell.title = @"Many";
		cell.image = [NSImage imageNamed:NSImageNameEveryone];
	} else if ([itemIdentifier isEqualToString:SettingsItemIdentifier]) {
		cell.title = @"Settings";
		cell.image = [NSImage imageNamed:NSImageNamePreferencesGeneral];
	}
	
	return cell;
}

@end
