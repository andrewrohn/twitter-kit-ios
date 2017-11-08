/*
 * Copyright (C) 2017 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#import <TwitterShareExtensionUI/TwitterShareExtensionUI.h>
#import <XCTest/XCTest.h>
#import "TWTRComposerViewController.h"
#import "TWTRImageTestHelper.h"
#import "TWTRSharedComposerWrapper.h"
#import "Twitter.h"

@interface TSETweetShareViewController ()

@property (nonatomic, nonnull, readonly) TSETweetShareConfiguration *configuration;

@end

@interface TWTRComposerViewControllerTests : XCTestCase

@end

@implementation TWTRComposerViewControllerTests

#pragma mark - Empty Composer

- (void)testEmptyComposer_notNil
{
    TWTRComposerViewController *composer = [TWTRComposerViewController emptyComposer];
    XCTAssertNotNil(composer);
}

- (void)testEmptyComposer_correctClass
{
    TWTRComposerViewController *composer = [TWTRComposerViewController emptyComposer];
    XCTAssertEqualObjects([composer class], [TWTRSharedComposerWrapper class]);
}

#pragma mark - Init With Text

- (void)testInitWithText_correctClass
{
    TWTRComposerViewController *composer = [[TWTRComposerViewController alloc] initWithInitialText:nil image:nil videoURL:nil];
    XCTAssertEqualObjects([composer class], [TWTRSharedComposerWrapper class]);
}

#pragma mark - Init with video

- (void)testInitWithVideoData
{
    NSData *videoData;
    TWTRComposerViewController *composer = [[TWTRComposerViewController alloc] initWithInitialText:nil image:nil videoData:videoData];
    XCTAssertEqualObjects([composer class], [TWTRSharedComposerWrapper class]);
}

- (void)testInitWithVideoURL
{
    NSURL *videoURL;
    TWTRComposerViewController *composer = [[TWTRComposerViewController alloc] initWithInitialText:nil image:nil videoURL:videoURL];
    XCTAssertEqualObjects([composer class], [TWTRSharedComposerWrapper class]);
}

@end