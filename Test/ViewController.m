//
//  ViewController.m
//  Test
//
//  Created by weikeyan on 2022/4/14.
//

#import "ViewController.h"
#import "TwoViewController.h"
#import "CustomTextField.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *m3u8key = @"";
    NSArray *m3u8URLInfoArray =[@"https://charge.zuoyebang.cc/2416898-995915686-6-0/2692fbce300937c0f3f82b77fc0f5983.m3u8?authorization=bce-auth-v1%2F80054b2251d24cb98eda994c93426d7d%2F2022-07-07T08%3A26%3A45Z%2F86400%2Fhost%2F386e9b0c8389dc1a3a381ed06d6d0e5a07ebfc8832182ae9c21e0c548d6144e2" componentsSeparatedByString:@".m3u8"];
    if (m3u8URLInfoArray.count > 0) {
        NSArray *prefixUrlInfo = [m3u8URLInfoArray.firstObject componentsSeparatedByString:@"/"];

        if (prefixUrlInfo.count > 0) {
            m3u8key = prefixUrlInfo.lastObject;
        }
    }
//    NSMutableDictionary *extData = [NSMutableDictionary dictionaryWithDictionary:[[self class] JSONStringToDictionaryWithData:nil]];
    
}


+ (NSDictionary *)JSONStringToDictionaryWithData:(NSString *)data{
    NSError * error;
    if (!data) {
        data =  @"";
    }
    NSData * m_data = [data  dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *dict = [NSJSONSerialization  JSONObjectWithData:m_data options:NSJSONReadingMutableContainers error:&error];
    return dict;
}

- (void)textDidChange:(NSNotification*)no {
    NSLog(@">>>>>>%@",[(UITextField*)no.object text]);
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    TwoViewController *vc = [[TwoViewController alloc]init];
    [self presentViewController:vc animated:YES completion:^{

    }];
}
@end
