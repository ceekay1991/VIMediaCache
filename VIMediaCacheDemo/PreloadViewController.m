//
//  PreloadViewController.m
//  VIMediaCacheDemo
//
//  Created by chenronghang on 2017/7/21.
//  Copyright © 2017年 Vito. All rights reserved.
//

#import "PreloadViewController.h"
#import "VIMediaCache.h"
@interface PreloadViewController ()
@property(nonatomic,strong)VIMediaDownloader *downloader;
@end

@implementation PreloadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self startPreload];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)startPreload
{
        NSURL *url = [NSURL URLWithString:@"https://vd1.bdstatic.com/mda-hgkkz25e3zp7q76e/mda-hgkkz25e3zp7q76e.mp4?playlist=%5B%22hd%22%5D&auth_key=1500799806-0-0-d3c195f0e43e027fe664eb8712fadffc&bcevod_channel=searchbox_feed"];
        VIMediaDownloader *downloader = [[VIMediaDownloader alloc] initWithURL:url];
        [downloader downloadFromStartToEnd];
        self.downloader = downloader;
}

@end
